# Design Spec — "A Second Brain: Building AI for Your Practice"

**Venue:** Criminal Defense Attorneys of Michigan (CDAM) conference, November 2026
**Presenter:** Mike (North Coast Legal)
**Spec date:** 2026-06-16

---

## 1. Goal & Thesis

**One takeaway (the spine):** *AI is a thinking partner, not a search engine.* Move the
audience from "context chatting" to using AI as a tireless associate that builds strategy,
stress-tests theories, finds inconsistencies, rehearses cross, and reconstructs scenes.

The title's "Second Brain" *is* the thinking-partner frame. Every beat ladders up to it.

**Audience:** Criminal defense attorneys. Assumes some AI familiarity; no hands-on required
to follow. Skeptical, confidentiality-conscious, resource-constrained relative to the state.

**Out of scope (by the presenter's choice):** the *ethics* debate about AI. In scope, and
handled head-on: the *practical confidentiality/competence* question (privilege), because
local models are the answer to it.

---

## 2. Constraints

- **Slot:** ~45–50 min total = **~35 min content + ~10 min Q&A.**
- **Demo format:** **Hybrid** — live for fast/high-success moments, pre-recorded clips for
  slow or unpredictable ones (3D, local model).
- **Offline-safe:** the deck must run with no internet (conference wifi is unreliable).
- **Home turf:** presenter is most comfortable in Claude; other vendors get a brief mention.

---

## 3. Narrative Device — One Case Through-Line

A single fictional Michigan case threads through every demo so the audience watches one
story deepen rather than seeing six disconnected party tricks.

**Case:** *People v. Daniel Reyes* — open/second-degree murder; defense is **self-defense**.

**Facts:** Late night at **Ramona's Sane Bar & Grill** (an in-joke honoring CDAM executive
director Ramona Sain; named a *bar & grill* whose primary income is food, so the defendant's
CPL carry is lawful — avoids the Michigan "bar/tavern" pistol-free-zone problem, MCL 28.425o).
The bar is mostly cleared out. An argument that began inside escalates near the bar/pool area.
Daniel Reyes, 34 (CPL holder), shoots and kills Marcus Hale, 29. Reyes says Hale charged him
and reached toward his waistband; Reyes fired twice. No gun on Hale, but a folding knife is
found near the body. Lighting is poor; a support column and booths obstruct sightlines.

**Central disputed facts:** how far apart the men were, whether Hale was advancing or backing
away, and **whether key witnesses could even see what they claim** — the question the 3D
reconstruction resolves.

**Why this case is the engine:** it naturally exercises all six use-cases (brainstorm,
strategy, inconsistencies, cross-prep, scene reconstruction) and makes the indoor 3D scene a
*sightline/occlusion argument*, not a diorama.

---

## 4. Run of Show (the ~35 minutes)

Timing is conservative so the presenter is never racing. Tools map to **functions**, not a
catalog tour.

| # | Beat | ~Min | Tool | Live / Clip |
|---|------|------|------|-------------|
| 0 | **Cold open + "Second Brain" frame** — not a search engine, a tireless associate. | 3 | — | — |
| 0.5 | **The confidentiality slide** — "I won't debate ethics, but here's how I protect privilege." Tease local models. | 2 | (local tease) | — |
| 1 | **Brainstorm the defense theory** — paste sanitized facts, generate competing theories (self-defense / imperfect self-defense / reasonable doubt). | 5 | **ChatGPT** (relatable on-ramp) | **Live** |
| 2 | **Build & stress-test strategy** — point an agent at the whole case *folder*; it drafts investigation plan, motion list, and plays prosecutor against the theory. | 6 | **Claude Code** | **Live** |
| 3 | **Spot the inconsistencies** — raw witness statements that contradict each other and the physical evidence; AI surfaces them in seconds. Run on a **local model, airplane mode**, to prove privileged docs never leave the machine. | 5 | **Local model (RTX 4090)** | **Clip** |
| 4 | **Cross-examine the investigating officer** — role-play the officer and rehearse cross. Pull out the **phone** and run it live. | 6 | **Gemini (phone)** | **Live** |
| 5 | **Reconstruct the scene** — 3D Gaussian splat of Ramona's interior: distance, angle, and the killer **sightline** question. | 5 | (presenter's 3D pipeline) | **Clip** |
| 6 | **Meta-reveal + Monday close** — "I'm a lawyer, not a programmer — I built that pipeline by directing AI." Brief mention of Codex & Antigravity as alternatives. One action to take Monday. | 3 | (recap) | screens |

**Design notes:**
- **Confidentiality rule the talk teaches:** *cloud for abstract thinking; local for raw
  privileged material.* Brainstorm and cross-prep use sanitized facts / witness personas
  (no client data) → cloud is fine. The moment actual discovery goes in (Beat 3) → local.
- **Local model does real work** (Beat 3) so confidentiality is demonstrated, not promised.
- **Codex & Antigravity** are a one-line mention in the close, not a section — keeps the
  presenter on home turf and reclaims ~2–3 min.

---

## 5. The Case File (discovery documents)

Authored in **Markdown** (easy to drag/paste into ChatGPT, Claude, and the local model;
PDF export optional later). Internally consistent and seeded with the contradictions the
demos surface.

1. **01 — Police Incident Report** — investigating officer's narrative; scene, statements
   taken, evidence collected. Powers Beats 2, 3, and the officer cross in 4.
2. **02 — Witness Statement A ("Dana Whitfield," bartender)** — leans defense-favorable
   (Hale advancing, aggressive, reached toward waist).
3. **03 — Witness Statement B ("Corey Lindqvist," patron)** — hurts the defense (Hale had
   "backed off," hands up, "he didn't have to shoot").
4. **04 — Defendant's Statement (Daniel Reyes)** — feared for his life, saw a blade, CPL
   holder, no time to retreat.
5. **05 — 911 Call Transcript** — fragmentary, ambiguous, with timestamps that matter.
6. **06 — Scene/Evidence Log + Floor Plan of Ramona's** — shell-casing positions, knife
   location relative to Hale, support column and booths, measured distances. Spine of the
   3D sightline argument.
7. **07 — Medical Examiner Summary** — entry wounds/trajectory implying shot distance and
   relative angle; corroborates or contradicts the witnesses. Feeds the 3D climax.

**Seeded contradictions (so Beat 3 finds something real):**
- Witness B claims a clear, well-lit view — but the floor plan puts the support column in
  that sightline (→ 3D payoff).
- Witness B says hands were up / backing away; ME trajectory and casing spread suggest Hale
  was moving forward and close.
- 911 timestamps compress the encounter into seconds, undercutting "he had time to
  de-escalate."

---

## 6. Deliverable Kit & File Structure

```
~/Dev/cdam-2026-second-brain/       # git repo → github.com/michnaugh1/cdam-2026-second-brain (private now, public before the conference)
├── README.md                      # how it fits together + day-of checklist
├── docs/
│   └── 2026-06-16-second-brain-presentation-design.md   # this spec
├── deck/
│   ├── index.html                 # the reveal.js deck (offline-safe)
│   ├── reveal/                    # vendored reveal.js library (no CDN)
│   └── assets/                    # images, screenshots, 3D splat clip, beat-3 local clip
├── case-file/                     # the "discovery" — drag into the AI live
│   ├── 01-police-incident-report.md
│   ├── 02-witness-a-whitfield.md
│   ├── 03-witness-b-lindqvist.md
│   ├── 04-defendant-statement-reyes.md
│   ├── 05-911-transcript.md
│   ├── 06-scene-evidence-log-floorplan.md
│   └── 07-me-summary.md
├── script/
│   └── speaker-script.md          # timed, word-for-word-ish, with [DEMO] cues
└── run-sheet/
    └── stage-run-sheet.md         # per demo: exact prompt to type, expected output, fallback clip, timing
```

**Deck:** reveal.js, vendored locally so it runs with no internet.
**Speaker script:** timed to the run-of-show, written to be spoken, with explicit `[DEMO]`,
`[CLIP]`, and `[SLIDE]` cues.
**Run-sheet:** for each live demo — the exact prompt to type, the expected/representative
output, the fallback clip to play if it goes sideways, and the time budget.

---

## 7. Open Items / Presenter To-Dos (not built by this spec)

- Record **Beat 3 clip** on the RTX 4090 machine (local model, airplane mode, raw witness
  statements in).
- Capture the **Beat 5 3D Gaussian splat** of a stand-in interior; export a short clip.
- Confirm **Gemini phone** officer role-play flow ahead of time (presenter has done this).
- Optional: export case-file Markdown to PDF for on-screen realism.

---

## 8. What "Done" Looks Like

A presenter can open the deck offline, follow the speaker script for ~35 minutes, drag the
case-file documents into the named tools at each `[DEMO]` cue, fall back to clips per the
run-sheet if needed, and land the "second brain / thinking partner" thesis with a single
coherent case from brainstorm to 3D scene.
