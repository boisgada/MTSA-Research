# Memory Bank Structure (Optional)

## Purpose

This folder provides an **optional alternative structure** for organizing project context. Use this structure for complex projects that benefit from more granular context organization, or when you need to separate different types of context (technical, product, business, etc.).

**Note**: This is optional. For simpler projects, a single `project-context.md` file may be sufficient.

---

## Structure Overview

The memory-bank structure organizes context into focused files:

- **`activeContext.md`**: Current work focus, recent changes, next steps
- **`projectbrief.md`**: Project overview, requirements, constraints, success criteria
- **`progress.md`**: What works, what's left to build, current status, known issues
- **`productContext.md`**: Product-specific context (if applicable)
- **`techContext.md`**: Technical context, architecture, technical decisions
- **`systemPatterns.md`**: System patterns, design decisions, component relationships
- **`tasks/`**: Task tracking (optional subfolder)

---

## When to Use Memory Bank Structure

### Use Memory Bank When:
- ✅ Project has multiple context domains (technical, product, business)
- ✅ Context files would be very large if combined
- ✅ Different team members need different context views
- ✅ Project has complex technical architecture to document
- ✅ You need fine-grained control over what context to update

### Use Single `project-context.md` When:
- ✅ Simple projects with straightforward context
- ✅ Single domain projects
- ✅ Small team or solo work
- ✅ Prefer simplicity over granularity

---

## Memory Bank Files

### activeContext.md

**Purpose**: Current work focus and immediate next steps

**Contents**:
- Current work focus
- Recent changes
- Next steps (immediate action items)
- Active decisions and considerations

**Update Frequency**: Frequently (every session or when focus shifts)

---

### projectbrief.md

**Purpose**: Project overview and core requirements

**Contents**:
- Project overview
- Core requirements
- Key constraints
- Success criteria

**Update Frequency**: Rarely (only when requirements change significantly)

---

### progress.md

**Purpose**: Progress tracking and status

**Contents**:
- What works (completed and functional)
- What's left to build
- Current status/phase
- Known issues

**Update Frequency**: Regularly (as progress is made or issues are discovered)

---

### productContext.md (Optional)

**Purpose**: Product-specific context

**Contents**:
- User profiles
- Use cases
- Product requirements
- User feedback

**Update Frequency**: As product evolves

---

### techContext.md (Optional)

**Purpose**: Technical context and architecture

**Contents**:
- Technical architecture
- Technology stack
- Technical decisions and rationale
- Development environment setup
- API documentation
- Data models

**Update Frequency**: As technical decisions are made or architecture evolves

---

### systemPatterns.md (Optional)

**Purpose**: System patterns and design decisions

**Contents**:
- Architecture patterns
- Key technical decisions
- Design patterns used
- Component relationships
- Data flow

**Update Frequency**: As patterns emerge or architecture evolves

---

### tasks/ (Optional)

**Purpose**: Task tracking subfolder

**Contents**:
- Task lists
- Task index files
- Task templates

**Note**: Alternatively, use the queue system (`queue/master-queue.md`) for task tracking.

---

## Migration from Single File

If you start with `project-context.md` and later want to use memory-bank structure:

1. Identify sections that map to memory-bank files
2. Extract sections into appropriate memory-bank files
3. Keep `project-context.md` as an overview/index that references memory-bank files
4. Update `rules-of-engagement.md` to reference memory-bank files

---

## Integration with Queue System

The memory-bank structure works well with the queue system:
- `activeContext.md` can reference current queue items
- `progress.md` can reference completed queue items
- Technical tasks can go in queue, while technical context goes in `techContext.md`

---

## Best Practices

1. **Keep Files Focused**: Each file should have a clear purpose
2. **Cross-Reference**: Link related information between files
3. **Regular Updates**: Update relevant files as project evolves
4. **Consistent Structure**: Use consistent sections within each file type
5. **Don't Duplicate**: Avoid duplicating information across files

---

## Example File Structure

```
ai-collaboration/
├── memory-bank/
│   ├── activeContext.md       # Current focus
│   ├── projectbrief.md        # Project overview
│   ├── progress.md            # Progress tracking
│   ├── productContext.md      # Product context
│   ├── techContext.md         # Technical context
│   ├── systemPatterns.md      # System patterns
│   ├── tasks/
│   │   └── _index.md          # Task index
│   └── README.md              # This file
├── project-context.md         # Overview/index (if using memory-bank)
├── rules-of-engagement.md
└── session-notes-template.md
```

---

*Memory Bank Structure Guide - January 2025*
