# Docker Development Guide

## Purpose

This guide provides best practices and workflows for using Docker in application development, covering containerization, local development, and deployment strategies.

---

## Overview

Docker containerization provides consistent environments across development, testing, and production. This guide covers Docker setup, Dockerfile best practices, docker-compose usage, and integration with development workflows.

---

## When to Use Docker

Use Docker when:

- You need consistent development environments
- You want to isolate dependencies
- You're deploying containerized applications
- You need to run multiple services locally
- You want to mirror production environments

---

## Getting Started

### Prerequisites

- [ ] Docker Desktop installed (or Docker Engine + Docker Compose)
- [ ] Basic understanding of Docker concepts
- [ ] Project structure suitable for containerization

### Basic Concepts

- **Dockerfile**: Instructions for building an image
- **Image**: Read-only template for creating containers
- **Container**: Running instance of an image
- **Docker Compose**: Tool for defining and running multi-container applications

---

## Dockerfile Best Practices

### 1. Base Image Selection

#### Choose Appropriate Base Image

```dockerfile
# Good: Use specific version
FROM node:20-alpine

# Avoid: Use latest tag (less predictable)
FROM node:latest
```

- [ ] Use official base images when possible
- [ ] Prefer Alpine Linux for smaller images
- [ ] Pin to specific versions for reproducibility
- [ ] Document base image selection rationale

#### Multi-Stage Builds

Use multi-stage builds for smaller production images:

```dockerfile
# Build stage
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Production stage
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY package*.json ./
EXPOSE 3000
CMD ["node", "dist/index.js"]
```

- [ ] Use multi-stage builds to reduce image size
- [ ] Separate build dependencies from runtime
- [ ] Only copy necessary files to final image

---

### 2. Layer Optimization

#### Order Instructions Efficiently

```dockerfile
# Good: Dependencies cached separately from code
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Avoid: Code changes invalidate dependency cache
FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm ci && npm run build
```

- [ ] Copy dependency files first
- [ ] Install dependencies before copying code
- [ ] Group related RUN commands
- [ ] Use .dockerignore to exclude unnecessary files

#### Use .dockerignore

Create `.dockerignore` file:

```
node_modules
npm-debug.log
.git
.gitignore
README.md
.env
.nyc_output
coverage
.vscode
*.md
.DS_Store
```

- [ ] Exclude unnecessary files from build context
- [ ] Reduce build time and image size
- [ ] Keep sensitive files out of images

---

### 3. Security Best Practices

#### Run as Non-Root User

```dockerfile
FROM node:20-alpine

# Create non-root user
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001

WORKDIR /app
COPY --chown=nodejs:nodejs . .

USER nodejs
CMD ["node", "index.js"]
```

- [ ] Create and use non-root user
- [ ] Set appropriate file permissions
- [ ] Minimize attack surface

#### Keep Images Updated

- [ ] Regularly update base images
- [ ] Scan images for vulnerabilities
- [ ] Update dependencies regularly
- [ ] Use automated vulnerability scanning

#### Handle Secrets Properly

```dockerfile
# Avoid: Don't hardcode secrets
ENV API_KEY=secret123

# Good: Use environment variables or secrets management
# Secrets passed at runtime via -e or docker-compose
```

- [ ] Never hardcode secrets in Dockerfile
- [ ] Use environment variables or secrets management
- [ ] Use Docker secrets or external secret managers

---

### 4. Dockerfile Example

Complete example for Node.js application:

```dockerfile
# Multi-stage build for Node.js application

# Build stage
FROM node:20-alpine AS builder
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production && npm cache clean --force

# Copy source code
COPY . .

# Build application
RUN npm run build

# Production stage
FROM node:20-alpine
WORKDIR /app

# Create non-root user
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001

# Copy built application and dependencies
COPY --from=builder --chown=nodejs:nodejs /app/dist ./dist
COPY --from=builder --chown=nodejs:nodejs /app/node_modules ./node_modules
COPY --from=builder --chown=nodejs:nodejs /app/package*.json ./

# Switch to non-root user
USER nodejs

# Expose port
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node healthcheck.js

# Start application
CMD ["node", "dist/index.js"]
```

---

## Docker Compose for Development

### 1. docker-compose.yml Setup

#### Basic Setup

```yaml
version: '3.8'

services:
  app:
    build:
      context: .
      dockerfile: Dockerfile.dev
    ports:
      - "3000:3000"
    volumes:
      - .:/app
      - /app/node_modules
    environment:
      - NODE_ENV=development
      - DATABASE_URL=postgresql://user:pass@db:5432/mydb
    depends_on:
      - db

  db:
    image: postgres:15-alpine
    ports:
      - "5432:5432"
    environment:
      - POSTGRES_USER=user
      - POSTGRES_PASSWORD=pass
      - POSTGRES_DB=mydb
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

#### Key Features

- [ ] Define development services
- [ ] Configure volume mounts for live reload
- [ ] Set up environment variables
- [ ] Configure service dependencies
- [ ] Use named volumes for persistent data

---

### 2. Development Workflow

#### Starting Development Environment

```bash
# Start all services
docker-compose up

# Start in detached mode
docker-compose up -d

# Rebuild and start
docker-compose up --build
```

#### Common Commands

```bash
# View logs
docker-compose logs -f app

# Execute commands in container
docker-compose exec app npm test

# Stop services
docker-compose down

# Stop and remove volumes
docker-compose down -v
```

- [ ] Document common docker-compose commands
- [ ] Set up development workflow scripts
- [ ] Configure IDE integration if possible

---

### 3. Environment Configuration

#### Using .env Files

Create `.env` file (not committed to version control):

```
DATABASE_URL=postgresql://user:pass@db:5432/mydb
API_KEY=development-api-key
NODE_ENV=development
```

Reference in docker-compose.yml:

```yaml
services:
  app:
    env_file:
      - .env
    environment:
      - NODE_ENV=${NODE_ENV:-development}
```

- [ ] Use .env files for local configuration
- [ ] Add .env to .gitignore
- [ ] Provide .env.example template
- [ ] Document required environment variables

---

## Development vs Production

### Development Dockerfile

```dockerfile
# Dockerfile.dev
FROM node:20-alpine
WORKDIR /app

# Install all dependencies (including dev dependencies)
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Run with hot reload
CMD ["npm", "run", "dev"]
```

### Production Dockerfile

Use multi-stage build (see example above) with:

- [ ] Only production dependencies
- [ ] Optimized build
- [ ] Non-root user
- [ ] Health checks
- [ ] Security best practices

---

## Volume Management

### Types of Volumes

#### Bind Mounts (Development)

```yaml
volumes:
  - .:/app  # Mount current directory
```

Use for:
- Live code reloading
- Development hot reload
- Shared development files

#### Named Volumes (Data)

```yaml
volumes:
  - postgres_data:/var/lib/postgresql/data
```

Use for:
- Database data persistence
- Cache persistence
- Shared data between containers

#### Anonymous Volumes (Prevent Overrides)

```yaml
volumes:
  - /app/node_modules  # Prevents host node_modules from overriding
```

---

## Health Checks

### Add Health Checks

```dockerfile
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3000/health || exit 1
```

Or in docker-compose.yml:

```yaml
services:
  app:
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:3000/health"]
      interval: 30s
      timeout: 3s
      retries: 3
      start_period: 5s
```

- [ ] Add health checks to Dockerfiles
- [ ] Implement health check endpoints
- [ ] Use health checks for service dependencies

---

## Networking

### Custom Networks

```yaml
services:
  app:
    networks:
      - app-network

  db:
    networks:
      - app-network

networks:
  app-network:
    driver: bridge
```

- [ ] Use custom networks for service isolation
- [ ] Configure network policies as needed
- [ ] Document network architecture

---

## Build Optimization

### Cache Dependencies

```dockerfile
# Layer dependencies separately for better caching
COPY package*.json ./
RUN npm ci --only=production
COPY . .
```

### Build Arguments

```dockerfile
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
```

Build with:

```bash
docker build --build-arg NODE_ENV=development -t myapp:dev .
```

---

## CI/CD Integration

### Build and Push

```yaml
# Example: GitHub Actions
- name: Build Docker image
  run: |
    docker build -t myapp:${{ github.sha }} .
    docker tag myapp:${{ github.sha }} myapp:latest

- name: Push to registry
  run: |
    docker login -u ${{ secrets.DOCKER_USERNAME }} -p ${{ secrets.DOCKER_PASSWORD }}
    docker push myapp:${{ github.sha }}
    docker push myapp:latest
```

- [ ] Integrate Docker builds into CI/CD
- [ ] Tag images appropriately
- [ ] Push to container registry
- [ ] Use secrets for authentication

---

## Troubleshooting

### Common Issues

#### Container Won't Start

```bash
# Check logs
docker-compose logs app

# Inspect container
docker inspect <container-id>

# Check resource usage
docker stats
```

#### Permission Issues

- Use non-root user in Dockerfile
- Set proper file permissions
- Check volume mount permissions

#### Build Cache Issues

```bash
# Build without cache
docker build --no-cache -t myapp .

# Prune build cache
docker builder prune
```

---

## Best Practices Summary

1. **Use Multi-Stage Builds**: Reduce image size
2. **Optimize Layers**: Copy dependencies before code
3. **Use .dockerignore**: Exclude unnecessary files
4. **Run as Non-Root**: Improve security
5. **Pin Versions**: Use specific base image versions
6. **Add Health Checks**: Monitor container health
7. **Separate Dev/Prod**: Different Dockerfiles if needed
8. **Use Docker Compose**: Simplify multi-container setup
9. **Handle Secrets Properly**: Never hardcode secrets
10. **Keep Images Updated**: Regular security updates

---

## AI Collaboration Guidelines

### For AI Assistants

When assisting with Docker:

- ✅ Help create optimized Dockerfiles
- ✅ Suggest multi-stage build strategies
- ✅ Help set up docker-compose configurations
- ✅ Assist with Docker troubleshooting
- ✅ Suggest security improvements
- ✅ Help optimize build performance

### For Users

When working with AI on Docker:

- ✅ Share Dockerfile for review
- ✅ Request Docker setup assistance
- ✅ Ask for docker-compose configuration help
- ✅ Share Docker errors for troubleshooting
- ✅ Request optimization suggestions

---

## Deliverables Checklist

- [ ] Dockerfile created with best practices
- [ ] .dockerignore file created
- [ ] docker-compose.yml for development
- [ ] Production Dockerfile (if different)
- [ ] Health checks implemented
- [ ] Environment configuration documented
- [ ] Development workflow documented
- [ ] CI/CD integration configured (if applicable)

---

## Integration Points

- **Deployment Phase**: Docker containers used in deployment
- **Application Development Workflows**: Docker setup in development
- **Testing Workflows**: Docker for test environments
- **CI/CD Pipeline**: Docker builds in continuous integration
- **Project Context**: Document Docker approach in `../project-context.md`

---

## Additional Resources

- [Docker Documentation](https://docs.docker.com/)
- [Docker Best Practices](https://docs.docker.com/develop/dev-best-practices/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Multi-stage Builds](https://docs.docker.com/build/building/multi-stage/)

---

*Docker Development Guide - Template v1.0*

