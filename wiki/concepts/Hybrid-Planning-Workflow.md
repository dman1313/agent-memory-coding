---
type: concept
created: 2024-05-22
updated: 2024-05-22
sources: ["[[sources/Plan-in-the-cloud-with-ultraplan]]"]
tags: [method]
aliases:
  - "Cloud-to-Local Planning"
  - "混合规划工作流"
---


# Hybrid Planning Workflow

## Definition
The Hybrid Planning Workflow is a software development method where the initiation, drafting, and execution of a plan are distributed across multiple interfaces—typically moving from a Command Line Interface (CLI) for speed, to a web-based Graphical User Interface (GUI) for detailed visualization and drafting, and finally back to a local or remote environment for execution.

## Key Characteristics
- **Multi-Interface Transition**: Leverages different toolsets (CLI $\rightarrow$ Web $\rightarrow$ Local/Remote) based on the current stage of the planning process.
- **Optimized Tooling**: Combines the efficiency and speed of the terminal for initialization with the rich visualization and editing capabilities of a web interface.
- **Reduced Context Friction**: Streamlines the movement between high-level planning and technical implementation.
- **Cross-Environment Execution**: Allows a plan drafted in a cloud environment to be executed seamlessly in the developer's actual working environment.

## Applications
- **Complex Software Refactoring**: Using a CLI to trigger a planning session, drafting the architectural changes in a web-based visual editor, and executing the code changes in a local IDE.
- **Rapid Prototyping**: Quickly initiating a feature request via terminal and refining the logic in a GUI before deployment.

## Related Concepts
*(No related concepts identified)*

## Related Entities
- [[entities/ultraplan|ultraplan]]
- [[entities/claude-code|Claude Code]]

## Mentions in Source
- "Start a plan from your CLI, draft it on Claude Code on the web, then execute it remotely or back in your terminal"