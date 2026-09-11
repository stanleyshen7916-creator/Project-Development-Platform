# TASK QUEUE — Sprint 0

| Task | Owner | State | Dependency | Acceptance |
|---|---|---|---|---|
| T001 Install/launch OpenHands Agent Canvas locally | 02_RUNTIME_INFRASTRUCTURE | READY | Docker/Node available | Canvas reachable locally |
| T002 Connect Claude Code through ACP | 04_AGENT_ENGINE_EXECUTION | BLOCKED_BY_T001 | Claude Code local subscription login | ACP conversation starts |
| T003 Mount Project-Development-Platform workspace | 04_AGENT_ENGINE_EXECUTION | BLOCKED_BY_T002 | Local workspace path | Agent can inspect repo |
| T004 Execute real repository task | 04_AGENT_ENGINE_EXECUTION | BLOCKED_BY_T003 | Agent workspace | Code/doc change produced |
| T005 Run test/build/runtime verification | 05_QA_NIGHT_RUN_ACCEPTANCE | BLOCKED_BY_T004 | Real change | Evidence captured |
| T006 Demonstrate failure → repair → retest | 05_QA_NIGHT_RUN_ACCEPTANCE | BLOCKED_BY_T005 | Test harness | Repair evidence captured |
| T007 Final acceptance | 00_PROJECT_CONTROL_DISCUSSION | BLOCKED_BY_T006 | Evidence complete | ACCEPTANCE_READY |

## Queue Rule
A task may advance only when its predecessor writes evidence and updates `PROJECT_STATE.md`. No chat-to-chat manual copying is part of the target architecture.
