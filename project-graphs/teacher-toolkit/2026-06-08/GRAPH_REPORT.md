# Graph Report - .  (2026-06-08)

## Corpus Check
- cluster-only mode — file stats not available

## Summary
- 29 nodes · 64 edges · 4 communities (3 shown, 1 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `aefa0cbe`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- [[_COMMUNITY_Community 0|Community 0]]
- [[_COMMUNITY_Community 1|Community 1]]
- [[_COMMUNITY_Community 2|Community 2]]
- [[_COMMUNITY_Community 3|Community 3]]

## God Nodes (most connected - your core abstractions)
1. `Teacher Toolkit` - 16 edges
2. `Classroom Computer Vision Research Notebook` - 15 edges
3. `README Teacher Toolkit` - 12 edges
4. `In-Seat Tracker` - 5 edges
5. `Hand-Raise Detector` - 5 edges
6. `On-Task Monitor` - 5 edges
7. `Classroom Monitor — Unified` - 5 edges
8. `Noise Monitor` - 4 edges
9. `Random Student Picker` - 3 edges
10. `Quick Grader` - 3 edges

## Surprising Connections (you probably didn't know these)
- `Teacher Toolkit` --references--> `Noise Monitor`  [EXTRACTED]
  index.html → 07-noise-monitor.html
- `README Teacher Toolkit` --references--> `Noise Monitor`  [EXTRACTED]
  README.md → 07-noise-monitor.html
- `Teacher Toolkit` --references--> `In-Seat Tracker`  [EXTRACTED]
  index.html → 11-in-seat-tracker.html
- `Classroom Computer Vision Research Notebook` --references--> `In-Seat Tracker`  [EXTRACTED]
  RESEARCH-NOTEBOOK.md → 11-in-seat-tracker.html
- `Teacher Toolkit` --references--> `Hand-Raise Detector`  [EXTRACTED]
  index.html → 12-hand-raise-detector.html

## Import Cycles
- None detected.

## Communities (4 total, 1 thin omitted)

### Community 0 - "Community 0"
Cohesion: 0.44
Nodes (12): Random Student Picker, Quick Grader, Classroom Timer, Seating Chart, Parent Contact Log, Exit Ticket Maker, Lesson Planner, Flashcard Creator (+4 more)

### Community 1 - "Community 1"
Cohesion: 0.22
Nodes (9): Body Orientation Analysis, CSSA-YOLO, JointBDOE, Pose Landmarks, Client-Side Privacy Architecture, StudyEyes, WebGL, YOLOv8 (+1 more)

### Community 2 - "Community 2"
Cohesion: 0.53
Nodes (6): In-Seat Tracker, Hand-Raise Detector, On-Task Monitor, Classroom Monitor — Unified, getUserMedia, MediaPipe Pose

## Knowledge Gaps
- **1 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `Classroom Computer Vision Research Notebook` connect `Community 1` to `Community 0`, `Community 2`?**
  _High betweenness centrality (0.508) - this node is a cross-community bridge._
- **Why does `Teacher Toolkit` connect `Community 0` to `Community 1`, `Community 2`, `Community 3`?**
  _High betweenness centrality (0.414) - this node is a cross-community bridge._
- **Why does `Noise Monitor` connect `Community 3` to `Community 0`, `Community 2`?**
  _High betweenness centrality (0.079) - this node is a cross-community bridge._