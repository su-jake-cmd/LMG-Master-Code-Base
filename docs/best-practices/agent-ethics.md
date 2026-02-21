# Agent Ethics & Responsible AI

## Our Commitment

We build agents to do good in the world. Technical capability is not the only measure
of a good agent — how it acts, who it affects, and what it chooses not to do matter
equally. Every agent we deploy represents us.

This document is a guide for developers to reflect on the right choice when designing,
building, and operating agents.

---

## Core Principles

### 1. Do Good, Avoid Harm
Agents should actively pursue beneficial outcomes — not just avoid causing obvious damage.
When a task is ambiguous, ask: *who benefits, and who might be hurt?* Default toward
actions that leave people and systems better than you found them.

### 2. Human Oversight
Agents should keep humans meaningfully in the loop, especially for consequential decisions.
Autonomy is earned incrementally. An agent that can pause and surface a question is more
trustworthy than one that barrels forward under uncertainty.

- Flag decisions with irreversible or high-impact consequences before acting
- Provide enough context for a human to understand and override any action
- Never design agents to obscure their reasoning or circumvent oversight mechanisms

### 3. Honesty and Transparency
Agents must not deceive — users, operators, or other systems. This includes:

- Not misrepresenting what the agent can or cannot do
- Not fabricating results, sources, or data
- Clearly identifying itself as an agent when sincerely asked
- Logging actions in a way that can be audited after the fact

### 4. Minimal Footprint
An agent should request only the permissions it needs, retain only the data it needs,
and take only the actions required to complete its task. Scope creep in agents erodes
trust and increases risk.

- Prefer reversible actions over irreversible ones
- Do not accumulate access, data, or influence beyond the task at hand
- Clean up after yourself

### 5. Fairness and Non-Discrimination
Agents that interact with people must not discriminate on the basis of race, gender,
religion, nationality, disability, age, or any other protected characteristic. Audit
for bias in training data, prompts, and outputs — especially in agents that make or
influence decisions affecting people's lives.

### 6. Privacy
People's data belongs to them. Agents should:

- Collect only what is necessary
- Store it only as long as necessary
- Never share it without authorization
- Be especially careful with sensitive categories (health, financial, location, identity)

---

## Questions to Reflect On

Before shipping an agent or a significant new capability, the developer and team should
be able to answer these honestly:

| Question | Why It Matters |
|----------|---------------|
| Who benefits from this agent's actions? | Ensures we are solving a real problem for real people |
| Who could be harmed, directly or indirectly? | Surfaces unintended consequences early |
| What happens if it makes a mistake? | Guides how much human oversight to build in |
| Can a person understand what it did and why? | Explainability is a prerequisite for trust |
| Can its actions be undone? | Irreversibility demands higher confidence thresholds |
| Does it have more access than it needs? | Least-privilege protects everyone |
| Would we be comfortable if this decision were made public? | A simple but powerful gut check |

---

## High-Stakes Domains

Agents operating in the following areas require additional review, explicit approval,
and elevated human oversight before deployment:

- **Healthcare** — any agent that could affect medical decisions or patient outcomes
- **Finance** — agents that move money, extend credit, or assess financial risk
- **Legal** — agents that generate legal documents or advice
- **Employment** — agents involved in hiring, evaluation, or termination
- **Public safety** — agents that could affect physical safety of people
- **Children** — any product or feature accessible to minors
- **Autonomous action at scale** — agents that act on many people simultaneously

If your agent touches one of these domains, involve legal, compliance, and a senior
stakeholder before deployment.

---

## When in Doubt, Choose the Conservative Action

Agents should be designed with a bias toward caution when facing uncertainty:

1. **Pause** rather than proceed when the right action is unclear
2. **Ask** rather than assume when intent is ambiguous
3. **Do less** rather than more when scope is undefined
4. **Surface the uncertainty** rather than resolve it silently

Speed is not worth the cost of an action that cannot be undone or that harms someone
who didn't consent.

---

## Feedback and Accountability

Agents should make it easy for people to report problems. Every deployed agent should
have a clear path for:

- Reporting unexpected or harmful behavior
- Requesting human review of an agent decision
- Opting out of agent-assisted processes

Developers are accountable for the agents they build. "The agent did it" is not an
excuse. Design with that accountability in mind from the start.

---

## Further Reading

- [Partnership on AI — Responsible Practices](https://partnershiponai.org)
- [NIST AI Risk Management Framework](https://www.nist.gov/artificial-intelligence)
- [Anthropic's Model Spec](https://anthropic.com/model-spec) — the principles that guide Claude
