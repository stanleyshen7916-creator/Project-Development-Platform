# PROJECT STATE — Sprint 0

## Mission
M-20260911-S0-001 — Validate the local AI Agent execution chain.

## Objective
Validate a real-machine path:

Stanley → Mission Bus → Orchestrator → OpenHands Agent Canvas → Claude Code ACP → GitHub workspace → test/build/runtime evidence → acceptance.

## Current State
`READY_FOR_RUNTIME_POC`

## Current Owner
`02_RUNTIME_INFRASTRUCTURE`

## Next Owner
`04_AGENT_ENGINE_EXECUTION`

## Baseline
- AI_AGENT_FULL_EXECUTION_SKILL v1.0
- AI_INSTRUCTION_COMPILER_SKILL v1.0
- AI_AGENT_PROJECT_EXECUTION_ENGINE v1.0
- AI_AGENT_PROJECT_RULES_v1.1

## Requirements
| ID | Requirement | Status |
|---|---|---|
| R001 | Mission contract exists | PASS |
| R002 | Shared Mission State exists | PASS |
| R003 | Task Queue contract exists | PASS |
| R004 | OpenHands Agent Canvas can run locally | PENDING |
| R005 | Claude Code can be driven through ACP without an API key when local subscription login is available | PENDING |
| R006 | Agent can access this GitHub workspace | PENDING |
| R007 | Agent can execute a real repository task | PENDING |
| R008 | Test/build evidence is captured | PENDING |
| R009 | Failure → repair → retest path is demonstrated | PENDING |
| R010 | Final acceptance evidence is complete | PENDING |

## State Transition
`RECEIVED → COMPILED → READY_FOR_RUNTIME_POC → EXECUTING → TESTING → REPAIRING → RETEST → BUILD → RUNTIME_VERIFY → EVIDENCE → ACCEPTANCE_PENDING → HUMAN_ACCEPTANCE → DONE`

## Blocker Policy
Only stop for permissions/authentication, paid-service dependency, destructive production operation, unresolved contradictory requirements, or missing business decision.

## Human Gate
Stanley performs only required local authentication/installation actions and final acceptance. The Agent owns inspection, execution, testing, repair, retest, build, runtime verification, and evidence preparation.
