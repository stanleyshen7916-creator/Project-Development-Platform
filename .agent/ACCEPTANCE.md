# Sprint 0 Acceptance Matrix

| ID | Requirement | Implementation | Test | Evidence | Status |
|---|---|---|---|---|---|
| R001 | Mission contract exists | `.agent/missions/M-20260911-S0-001.md` | File inspection | Git commit | PASS |
| R002 | Mission state exists | `.agent/PROJECT_STATE.md` | State schema inspection | Git commit | PASS |
| R003 | Task queue exists | `.agent/TASK_QUEUE.md` | Queue inspection | Git commit | PASS |
| R004 | OpenHands Agent Canvas runs locally | Local installation | Open Canvas | Runtime proof | PENDING |
| R005 | Claude Code ACP works with local subscription login | ACP backend config | Start conversation | Runtime proof | PENDING |
| R006 | Real repo workspace is accessible | Canvas workspace | Agent inspection | inspection.md | PENDING |
| R007 | Real repository task executes | Agent task | Deterministic validation | commit/diff | PENDING |
| R008 | Test/build/runtime evidence captured | QA run | Commands/results | evidence files | PENDING |
| R009 | Failure → repair → retest works | Controlled failure | Fail, repair, pass | repair evidence | PENDING |
| R010 | Final acceptance is reproducible | Acceptance gate | Re-run checks | acceptance report | PENDING |

## PASS Rule
Sprint 0 is PASS only when R001–R010 are PASS. A Git commit or PR by itself is not acceptance evidence.
