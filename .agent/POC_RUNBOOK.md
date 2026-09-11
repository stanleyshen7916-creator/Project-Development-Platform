# Sprint 0 — Local POC Runbook

## 1. Prepare local workspace

Clone the branch `poc/sprint-0-agent-platform` and use the repository as the first real Agent workspace.

## 2. Start OpenHands Agent Canvas

Use the current official OpenHands Agent Canvas local/self-hosted quickstart. Docker Desktop on Windows is supported. Keep the project workspace on a host directory that the Agent Server is explicitly allowed to access.

## 3. Connect Claude Code through ACP

Select Claude Code as the ACP agent. For a local backend, use the existing Claude Code subscription login if available. Do not commit credentials or API keys.

## 4. First agent mission

Give Claude Code this mission:

> Inspect this repository and the Sprint 0 Mission Bus files under `.agent/`. Do not change application code yet. Report the repository baseline, available test/build commands, and the smallest harmless change that can demonstrate end-to-end execution. Write your findings to `.agent/evidence/inspection.md`.

## 5. Execute real task

After inspection, execute one harmless real change in this repository. The change must be small enough to review and must have a deterministic validation command.

## 6. Failure/repair test

Introduce a controlled, reversible failure in the POC task. Ask the agent to run the validation, diagnose the failure, repair it, and retest. Preserve the failure and repair evidence without committing secrets.

## 7. Acceptance

Update `.agent/PROJECT_STATE.md` only from evidence. Do not mark PASS because an agent claims success. The evidence must show the actual command/result or equivalent runtime proof.

## 8. n8n integration

Only after the direct Canvas + Claude Code path passes should n8n be connected. n8n's first responsibility is dispatch/polling of Mission State, not coding.
