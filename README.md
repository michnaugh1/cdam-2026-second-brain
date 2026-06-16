# A Second Brain — Building AI for Your Practice

Materials for a presentation to the **Criminal Defense Attorneys of Michigan (CDAM)**,
November 2026.

**Thesis:** AI is a *thinking partner*, not a search engine. This talk shows a criminal
defense attorney using AI as a tireless associate — to brainstorm defense theories, build
and stress-test strategy, find inconsistencies in statements, rehearse cross-examination,
and reconstruct a scene in 3D — all threaded through a single fictional case.

## What's in here

```
cdam-2026-second-brain/
├── deck/            The slide deck (reveal.js, runs offline — open deck/index.html)
│   ├── index.html
│   ├── reveal/      Vendored reveal.js (no internet needed)
│   └── assets/      Drop your recorded clips/screenshots here
├── case-file/       The fictional "discovery" — fed to the AI during the demos
│   ├── 01-police-incident-report.md
│   ├── 02-witness-a-whitfield.md
│   ├── 03-witness-b-lindqvist.md
│   ├── 04-defendant-statement-reyes.md
│   ├── 05-911-transcript.md
│   ├── 06-scene-evidence-log-floorplan.md
│   ├── 07-me-summary.md
│   └── pdf/         PDF versions of all seven docs (for on-screen realism)
├── scripts/
│   └── build-case-pdfs.sh   Regenerate case-file/pdf/ from the Markdown
├── script/
│   └── speaker-script.md     Timed, spoken script with demo cues
├── run-sheet/
│   └── stage-run-sheet.md    Exact prompts, expected output, fallbacks, timing
└── docs/
    ├── case-bible.md                                  Canonical facts (authoring source of truth)
    ├── 2026-06-16-second-brain-presentation-design.md Design spec
    └── 2026-06-16-second-brain-implementation-plan.md Build plan
```

## Running the deck

Open `deck/index.html` in any modern browser. No internet connection required. Press
`S` for the speaker-notes view.

## Case file: Markdown and PDF

The discovery lives in `case-file/` as Markdown (easiest to drag/paste into the AI) and
as PDFs in `case-file/pdf/` (looks like real discovery on screen). To regenerate the PDFs
after editing the Markdown:

```bash
bash scripts/build-case-pdfs.sh   # requires pandoc + libreoffice
```

## The fictional case

*People v. Daniel Reyes* — a self-defense shooting at the fictional **Ramona's Sane Bar &
Grill**. Built solely to demonstrate AI workflows. **Entirely fictional. Not legal advice;
not a real case.** Any resemblance to real people or events is coincidental.

## A note on tools

The demos use Claude, ChatGPT, a local model (run offline for privileged material), and
Gemini. ChatGPT's Codex and Google's Antigravity do similar things — pick what fits you.
The guiding rule shown in the talk: **cloud for abstract thinking; local for raw
privileged material.**

## Day-of checklist

- [ ] `deck/index.html` opens **offline** (load it, then kill wifi to confirm).
- [ ] `case-file/` folder open in a window you can show on screen.
- [ ] Logged in: ChatGPT (Beat 1), Claude Code in this project (Beat 2), Gemini on phone (Beat 4).
- [ ] Phone charged + screen-mirroring tested.
- [ ] Clips present in `deck/assets/`: `beat3-local-inconsistencies.mp4`, `beat5-3d-splat.mp4`,
      plus fallbacks `beat1-brainstorm.mp4`, `beat2-strategy.mp4`, `beat4-crossexam.mp4`.
- [ ] Backup of the deck on a USB stick.

Full detail is in `run-sheet/stage-run-sheet.md`.
