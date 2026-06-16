# "A Second Brain" Presentation Kit — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the complete deliverable kit for the CDAM 2026 talk — a canonical case bible, seven internally-consistent fictional discovery documents, an offline reveal.js slide deck, a timed speaker script, and a stage run-sheet — all committed to the repo.

**Architecture:** Author a single source-of-truth "case bible" first (canonical facts: people, timeline, geometry, evidence positions, and the explicit list of *intended* contradictions). Every downstream document derives its facts from the bible, so the only contradictions that exist are the deliberate ones the demos surface. Then build the deck, script, and run-sheet, all of which reference the case file by filename.

**Tech Stack:** Markdown (case file, script, run-sheet, bible); reveal.js (vendored locally, no CDN) for the deck; HTML/CSS for slides; git for version control.

**Conventions:**
- This is a content build, not code. There is no test runner. "Verification" per task = a concrete check (markdown renders, deck serves and shows the right slide count, facts cross-check against the bible).
- Commit after every task. Author commits as `Mike <mike@thenorthcoastlegal.com>` and append the `Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>` trailer.
- All documents are **fictional**. Keep the disclaimer present where a reader might mistake them for real.
- Repo root: `~/Dev/cdam-2026-second-brain/`. Use `git -C` rather than `cd`.

---

## File Structure

| Path | Responsibility |
|------|----------------|
| `docs/case-bible.md` | NEW. Authoring source of truth: canonical facts + intended contradictions. Not a demo doc. |
| `case-file/01-police-incident-report.md` | NEW. Investigating officer's narrative; buries the key sightline/lighting detail. |
| `case-file/02-witness-a-whitfield.md` | NEW. Bartender Dana Whitfield; defense-favorable account. |
| `case-file/03-witness-b-lindqvist.md` | NEW. Patron Corey Lindqvist; harmful account with the seeded over-claims. |
| `case-file/04-defendant-statement-reyes.md` | NEW. Daniel Reyes' account. |
| `case-file/05-911-transcript.md` | NEW. Fragmentary 911 call with timestamps. |
| `case-file/06-scene-evidence-log-floorplan.md` | NEW. Evidence positions + ASCII floor plan + measurements. |
| `case-file/07-me-summary.md` | NEW. Medical examiner findings; trajectory/distance evidence. |
| `deck/reveal/` | NEW. Vendored reveal.js dist (offline). |
| `deck/index.html` | NEW. The slide deck — all beats. |
| `deck/assets/.gitkeep` | NEW. Placeholder; presenter drops clips/screenshots here later. |
| `script/speaker-script.md` | NEW. Timed, spoken script with `[SLIDE]`/`[DEMO]`/`[CLIP]` cues. |
| `run-sheet/stage-run-sheet.md` | NEW. Per-demo exact prompts, expected output, fallback, timing. |
| `README.md` | MODIFY. Confirm day-of checklist matches final structure. |

---

## Task 1: Case Bible (canonical source of truth)

**Files:**
- Create: `docs/case-bible.md`

This document is the contract every other document must honor. Get the numbers right here once.

- [ ] **Step 1: Write `docs/case-bible.md` with these exact canonical facts**

````markdown
# Case Bible — People v. Daniel Reyes (FICTIONAL)

> Authoring source of truth. Every case-file document derives its facts from this
> file. The ONLY contradictions that should exist between documents are the
> "Intended Contradictions" listed at the bottom. This file is an authoring aid,
> not a courtroom document.

## People
- **Daniel Reyes**, 34. Defendant. CPL holder. Regular at Ramona's. Works in HVAC.
- **Marcus Hale**, 29. Decedent. Known for a temper; prior bar altercation (uncharged).
- **Dana Whitfield**, 41. Bartender, on shift behind the bar. Witness A (defense-favorable).
- **Corey Lindqvist**, 27. Patron seated at the FAR (west) end of the bar. Witness B (harmful).
- **Det. Raymond Salas**, investigating detective. Subject of the Beat 4 cross.
- **Dr. Priya Anand**, Medical Examiner.

## Venue — Ramona's Sane Bar & Grill (primary income: food; lawful CPL carry)
- Main room ~40 ft (E–W) × 30 ft (N–S).
- Bar runs along the NORTH wall, ~24 ft long. Dana behind it, roughly center.
- Corey seated at the WEST end of the bar (stool nearest the wall).
- Pool table in the SE quadrant.
- Booths along the WEST wall.
- A structural **support column** stands roughly center-east, between the west end of
  the bar and the pool area.
- Overhead light fixture above the pool/east area is **burned out** that night (dim).

## Geometry of the shooting
- Confrontation occurs in the east-center, between the column and the pool table.
- Reyes ends ~10 ft from Hale when he fires (NOT point-blank).
- Two 9mm shell casings recovered ~10–11 ft from Hale's final position, near the column.
- Hale's folding knife found **closed**, ~2 ft from Hale's right hand.
- Corey's sightline to the confrontation crosses the support column and the dark (east) zone.

## Timeline (canonical)
- 11:52 PM — verbal argument starts inside (near the bar).
- 11:58 PM — argument moves toward the pool/east area.
- 11:59:10 PM — Corey's 911 call connects.
- 11:59:34 PM — caller: "he's got a gun—" then two reports ~1 second apart.
- Whole physical encounter (first contact → shots): a few seconds.

## Medical Examiner canon (Dr. Anand)
- Two gunshot wounds, both entering the front of the torso.
- Trajectories: front-to-back and **slightly upward** (consistent with the decedent
  leaning/lunging FORWARD; inconsistent with standing upright and backing away).
- **No soot, no stippling** around wounds → muzzle-to-target distance greater than
  ~3–4 ft (rules out contact/near-contact; consistent with the ~10 ft casing distance).

## Intended Contradictions (the ONLY ones allowed)
1. **Corey over-claims his view.** Statement 03 says he had a "clear," "well-lit" view of
   Hale with "his hands up, backing away." Documents 01 + 06 place him at the far west end
   of the bar with the support column and the burned-out fixture between him and the scene.
   (→ Beat 3 inconsistency; → Beat 5 3D sightline payoff.)
2. **Physical evidence vs. Corey's "backing away."** ME trajectory (upward, front-to-back),
   the ~10 ft casing distance, and the knife near Hale's hand fit Hale ADVANCING — not
   retreating with hands up.
3. **Corey's "deliberation" vs. the clock.** Statement 03 implies Reyes "waited, aimed,
   then fired." The 911 audio (05) compresses the sequence to a few seconds.
4. **The buried detail.** Incident report (01) mentions the burned-out fixture and Corey's
   position in passing, but does not connect them to Corey's credibility — the defense does.

## Consistency rule
Dana (02), Reyes (04), the 911 timeline (05), the evidence log (06), and the ME (07) must
all agree with this bible. Only Corey (03) carries the seeded over-claims above.
````

- [ ] **Step 2: Verify**

Run: `wc -l ~/Dev/cdam-2026-second-brain/docs/case-bible.md` — expect a non-empty file.
Re-read the "Intended Contradictions" section and confirm each maps to a beat in the spec.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add docs/case-bible.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add case bible (canonical facts + intended contradictions)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 2: Police Incident Report (`01`)

**Files:**
- Create: `case-file/01-police-incident-report.md`
- Reference: `docs/case-bible.md`

**Content spec:** First-person-of-the-department incident report by responding officer, reviewed by Det. Salas. Must include: a `> FICTIONAL` disclaimer line at top; report number, date/time, location (Ramona's Sane Bar & Grill); responding/investigating officers (Salas); narrative of arrival, scene, and that Reyes remained on scene and stated he fired in self-defense; list of persons interviewed (Whitfield, Lindqvist, Reyes); evidence collected (two 9mm casings near the column ~10–11 ft from decedent; one closed folding knife ~2 ft from decedent's right hand; Reyes' pistol + CPL); a scene-conditions note that **buries** the key detail in a single matter-of-fact sentence ("overhead fixture above the pool area inoperative; lighting low") and notes Lindqvist was seated at the west end of the bar. Tone: dry, procedural. ~400–600 words. All facts per the bible; do NOT editorialize about credibility.

- [ ] **Step 1: Write `case-file/01-police-incident-report.md`** per the content spec above, drawing every fact from `docs/case-bible.md`.

- [ ] **Step 2: Verify against the bible**

Confirm these appear and match the bible: casing count/distance (two, ~10–11 ft), knife (closed, ~2 ft from right hand), the inoperative fixture, Lindqvist at the west end, Reyes' CPL. Confirm the report does NOT state who was advancing/retreating (that's for the witnesses).

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add case-file/01-police-incident-report.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add fictional police incident report (case doc 01)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 3: Witness Statement A — Dana Whitfield (`02`)

**Files:**
- Create: `case-file/02-witness-a-whitfield.md`
- Reference: `docs/case-bible.md`

**Content spec:** Verbatim-style witness statement (Q&A or first-person narrative) from Dana Whitfield, bartender, behind the bar with a clear central view. Defense-favorable and consistent with physical evidence: Hale was the aggressor, escalated, moved TOWARD Reyes, and "reached toward his waistband"; it happened "fast"; she couldn't see Hale's hands perfectly but he was lunging forward. Include `> FICTIONAL` disclaimer, date, interviewer (Salas). Honest hedge where appropriate (dim light near the pool area). ~300–450 words. Must agree with the bible (advancing, fast, ~seconds).

- [ ] **Step 1: Write `case-file/02-witness-a-whitfield.md`** per spec, facts from the bible.

- [ ] **Step 2: Verify against the bible**

Confirm: Hale advancing/lunging, reaching to waistband, fast sequence; her vantage is behind the bar (good central view). No contradictions with the bible beyond none (Dana is a consistent witness).

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add case-file/02-witness-a-whitfield.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add fictional witness statement A — Whitfield (case doc 02)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 4: Witness Statement B — Corey Lindqvist (`03`)

**Files:**
- Create: `case-file/03-witness-b-lindqvist.md`
- Reference: `docs/case-bible.md`

**Content spec:** Verbatim-style statement from Corey Lindqvist, the harmful witness. This is the document that carries the **seeded over-claims** (Intended Contradictions 1 & 3): he asserts a "clear," "well-lit" view; says Hale "had his hands up" and "was backing away"; and implies deliberation ("Reyes just waited, then aimed and shot him"). He must sound confident and sincere — the over-claim should be subtle, the kind a sharp cross or an AI cross-check catches, not a cartoon lie. Include `> FICTIONAL` disclaimer, date, interviewer (Salas). ~300–450 words. Everything EXCEPT the four seeded over-claims must still be consistent with the bible (e.g., he can correctly state the location and that shots were fired).

- [ ] **Step 1: Write `case-file/03-witness-b-lindqvist.md`** per spec, planting exactly the seeded over-claims from the bible's Intended Contradictions 1 and 3.

- [ ] **Step 2: Verify against the bible**

Confirm the statement contains: "clear/well-lit view" claim, "hands up / backing away" claim, and a deliberation implication — and that these are the ONLY deviations from the bible. Confirm his stated position (west end of bar) matches doc 01/06 so the sightline contradiction is provable.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add case-file/03-witness-b-lindqvist.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add fictional witness statement B — Lindqvist (case doc 03)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 5: Defendant's Statement — Daniel Reyes (`04`)

**Files:**
- Create: `case-file/04-defendant-statement-reyes.md`
- Reference: `docs/case-bible.md`

**Content spec:** Reyes' account (as given to counsel / Mirandized statement — pick "statement to investigators, counsel present"). Consistent with the bible and Dana: argument escalated, Hale came at him fast, he saw something in Hale's hand / a reach to the waist, feared for his life, fired twice, has a CPL, did not pursue. Human and a little shaken, not lawyerly. Include `> FICTIONAL` disclaimer, date, present parties. ~300–450 words.

- [ ] **Step 1: Write `case-file/04-defendant-statement-reyes.md`** per spec, facts from the bible.

- [ ] **Step 2: Verify against the bible**

Confirm: ~10 ft / not point-blank plausible, advancing aggressor, perceived weapon, two shots, CPL, no pursuit. Agrees with the bible.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add case-file/04-defendant-statement-reyes.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add fictional defendant statement — Reyes (case doc 04)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 6: 911 Transcript (`05`)

**Files:**
- Create: `case-file/05-911-transcript.md`
- Reference: `docs/case-bible.md`

**Content spec:** Transcript of Corey Lindqvist's 911 call with timestamps matching the bible (connect 11:59:10; "he's got a gun—" + two reports at 11:59:34). Fragmentary, overlapping, dispatcher Q&A, background noise noted in brackets. The audio should make the encounter sound like it happened in **seconds** (supports Intended Contradiction 3 against Corey's own "deliberation" claim). Include `> FICTIONAL` disclaimer, call metadata. ~250–400 words.

- [ ] **Step 1: Write `case-file/05-911-transcript.md`** per spec, timestamps from the bible.

- [ ] **Step 2: Verify against the bible**

Confirm timestamps (11:59:10 connect, 11:59:34 shots), the compressed few-seconds feel, and that the caller is Corey.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add case-file/05-911-transcript.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add fictional 911 transcript (case doc 05)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 7: Scene/Evidence Log + Floor Plan (`06`)

**Files:**
- Create: `case-file/06-scene-evidence-log-floorplan.md`
- Reference: `docs/case-bible.md`

**Content spec:** Two parts. (a) Evidence log table: item, description, location/measurement (two 9mm casings ~10–11 ft from decedent near column; closed folding knife ~2 ft from decedent's right hand; decedent final position; Reyes' firing position ~10 ft; Reyes' pistol). (b) An **ASCII floor plan** of Ramona's showing: north-wall bar, Dana's position (center behind bar), Corey at the west end, the support column (center-east), the pool table (SE), booths (west wall), the burned-out fixture (mark it), decedent position, Reyes position, casing locations, and a dotted **line-of-sight from Corey** that visibly crosses the column. Include a legend. Include `> FICTIONAL` disclaimer. This document is the spine of the 3D sightline argument — the geometry must make Corey's clear-view claim physically implausible.

- [ ] **Step 1: Write `case-file/06-scene-evidence-log-floorplan.md`** per spec. Build the ASCII plan so the column sits on the straight line between Corey (west end of bar) and the confrontation (east-center). Label coordinates/distances consistent with the bible.

- [ ] **Step 2: Verify against the bible**

Confirm: all distances match the bible; Corey's line-of-sight crosses the column; the burned-out fixture is over the east/pool area; positions match docs 01 and 03.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add case-file/06-scene-evidence-log-floorplan.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add fictional scene/evidence log + floor plan (case doc 06)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 8: Medical Examiner Summary (`07`)

**Files:**
- Create: `case-file/07-me-summary.md`
- Reference: `docs/case-bible.md`

**Content spec:** ME summary by Dr. Anand. Two GSWs entering the front torso; trajectories front-to-back and slightly upward; no soot/stippling (range > ~3–4 ft). State the forensic inferences plainly (upward + no stippling are consistent with the decedent leaning/lunging forward at a distance of several feet) without arguing the ultimate legal question. Include `> FICTIONAL` disclaimer, case number, decedent, examiner. ~300–450 words.

- [ ] **Step 1: Write `case-file/07-me-summary.md`** per spec, facts from the bible.

- [ ] **Step 2: Verify against the bible**

Confirm: two GSWs, front-to-back + slightly upward, no soot/stippling, >3–4 ft range; inferences support "advancing," consistent with Intended Contradiction 2.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add case-file/07-me-summary.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add fictional ME summary (case doc 07)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 9: Cross-check all case documents

**Files:**
- Reference: all of `case-file/*.md` and `docs/case-bible.md`

- [ ] **Step 1: Read all seven case docs back-to-back against the bible.** Build a quick fact-grid (distances, timestamps, positions, who-advanced) and confirm: every doc agrees with the bible; the ONLY deviations are Corey's four seeded over-claims; the sightline geometry in 06 actually defeats Corey's "clear view" in 03; the 911 timestamps in 05 undercut Corey's "deliberation."

- [ ] **Step 2: Fix any unintended contradiction** by editing the offending doc to match the bible. Re-verify.

- [ ] **Step 3: Commit (only if edits were made)**

```bash
git -C ~/Dev/cdam-2026-second-brain add case-file/
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Reconcile case-file documents against the case bible

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 10: Vendor reveal.js and scaffold the deck

**Files:**
- Create: `deck/reveal/` (vendored dist)
- Create: `deck/index.html` (minimal, opens to a title slide)
- Create: `deck/assets/.gitkeep`

- [ ] **Step 1: Vendor reveal.js locally (offline-safe).** Fetch a pinned release and keep only what the deck needs (`dist/` and `plugin/`).

```bash
cd ~/Dev/cdam-2026-second-brain/deck
curl -L -o reveal.tar.gz https://github.com/hakimel/reveal.js/archive/refs/tags/5.1.0.tar.gz
tar -xzf reveal.tar.gz
mkdir -p reveal
cp -r reveal.js-5.1.0/dist reveal/dist
cp -r reveal.js-5.1.0/plugin reveal/plugin
rm -rf reveal.js-5.1.0 reveal.tar.gz
mkdir -p assets && touch assets/.gitkeep
ls reveal/dist/reveal.js reveal/dist/reveal.css reveal/dist/theme/black.css
```

Expected: all three paths listed (no "No such file").

- [ ] **Step 2: Create a minimal `deck/index.html`** that loads the vendored files with relative paths and shows one title slide.

```html
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>A Second Brain — Building AI for Your Practice</title>
  <link rel="stylesheet" href="reveal/dist/reveal.css">
  <link rel="stylesheet" href="reveal/dist/theme/black.css" id="theme">
</head>
<body>
  <div class="reveal">
    <div class="slides">
      <section>
        <h1>A Second Brain</h1>
        <h3>Building AI for Your Practice</h3>
        <p><small>CDAM 2026</small></p>
      </section>
    </div>
  </div>
  <script src="reveal/dist/reveal.js"></script>
  <script>Reveal.initialize({ hash: true });</script>
</body>
</html>
```

- [ ] **Step 3: Smoke-test the deck offline.** Serve it and confirm it returns the title with no external requests.

```bash
cd ~/Dev/cdam-2026-second-brain/deck
python3 -m http.server 8099 &
SERVER_PID=$!
sleep 1
curl -s http://localhost:8099/index.html | grep -q "A Second Brain" && echo "DECK OK"
curl -s http://localhost:8099/reveal/dist/reveal.js | head -c 50
kill $SERVER_PID
```

Expected: `DECK OK` and the first bytes of `reveal.js`.

- [ ] **Step 4: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add deck/
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Vendor reveal.js 5.1.0 and scaffold offline deck

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 11: Author the full deck

**Files:**
- Modify: `deck/index.html`

**Content spec:** Build out all slides following the §4 run of show. One `<section>` (or vertical stack) per beat. Speaker-facing detail goes in the script, not the slides — slides stay sparse and visual (a headline, a few words, an image placeholder). Required slides, in order:
1. **Title** (Beat 0) — "A Second Brain / Building AI for Your Practice."
2. **Thesis** (Beat 0) — "Not a search engine. A thinking partner." 
3. **Confidentiality** (Beat 0.5) — "I'm not here to debate ethics. I am here about privilege." + the rule "Cloud for abstract thinking. Local for raw privileged material." Tease local model.
4. **The case** — *People v. Daniel Reyes*, self-defense at Ramona's Sane Bar & Grill (1-line setup; note FICTIONAL).
5. **Beat 1 — Brainstorm** — headline "Brainstorm the theory," tool tag "ChatGPT," `[DEMO]` placeholder slide.
6. **Beat 2 — Strategy** — "Point it at the whole file," tool tag "Claude Code," `[DEMO]`.
7. **Beat 3 — Inconsistencies** — "What did the witness not see?", tool tag "Local model · airplane mode", `[CLIP]` placeholder (`assets/` clip).
8. **Beat 4 — Cross-exam** — "Rehearse the cross," tool tag "Gemini (phone)", `[DEMO]`.
9. **Beat 5 — 3D scene** — "Could the witness even see it?", `[CLIP]` placeholder for the Gaussian splat; the sightline payoff.
10. **Beat 6 — Close** — "I'm a lawyer, not a programmer." One-line mention: "Claude isn't the only one — ChatGPT Codex, Google Antigravity do this too." + the single Monday action.
11. **Thank-you / repo URL** slide (github.com/michnaugh1/cdam-2026-second-brain).

Add lightweight presenter conveniences: enable the Notes plugin so `[S]` opens speaker view, and set a readable theme. Use relative asset paths (`assets/...`) for clips/images so the deck stays offline and portable.

- [ ] **Step 1: Rewrite `deck/index.html`** with all 11 slides above, loading the Notes/Markdown/Highlight plugins from `reveal/plugin/...`, and an `aside class="notes"` stub on demo slides pointing to the script.

- [ ] **Step 2: Smoke-test slide count offline.**

```bash
cd ~/Dev/cdam-2026-second-brain/deck
python3 -m http.server 8099 &
SERVER_PID=$!
sleep 1
COUNT=$(curl -s http://localhost:8099/index.html | grep -c "<section")
echo "sections: $COUNT"   # expect >= 11
curl -s http://localhost:8099/index.html | grep -q "thinking partner" && echo "THESIS OK"
kill $SERVER_PID
```

Expected: `sections:` ≥ 11 and `THESIS OK`.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add deck/index.html
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Author full slide deck (all beats)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 12: Speaker script

**Files:**
- Create: `script/speaker-script.md`
- Reference: `docs/case-bible.md`, `deck/index.html`, the spec §4

**Content spec:** A timed, spoken-voice script that tracks the deck slide-for-slide. For each beat: a `## Beat N — Title (≈M min) [SLIDE x]` header, the words to say (conversational, not read-aloud-stiff), and inline `[DEMO: tool — do X]` / `[CLIP: name]` cues at the exact moment to switch. Bake in the timings from §4 (3 / 2 / 5 / 6 / 5 / 6 / 5 / 3) and put a running cumulative time in each header. Include the cold open hook, the confidentiality framing line, and the Monday-action close verbatim. End with a "if a demo dies, say this and cut to the clip" one-liner per live beat (cross-referenced to the run-sheet).

- [ ] **Step 1: Write `script/speaker-script.md`** per spec, covering every slide in `deck/index.html`, total content time ≈35 min.

- [ ] **Step 2: Verify**

Confirm: one script section per deck slide; cumulative timing reaches ≈35 min; every live demo has a one-line fallback; case facts referenced match the bible.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add script/speaker-script.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add timed speaker script with demo cues

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 13: Stage run-sheet

**Files:**
- Create: `run-sheet/stage-run-sheet.md`
- Reference: `script/speaker-script.md`, `case-file/*`

**Content spec:** A single-glance operator sheet for the three LIVE demos (Beat 1 ChatGPT, Beat 2 Claude Code, Beat 4 Gemini-phone) and the two CLIPS (Beat 3 local, Beat 5 3D). For each LIVE demo: the **exact prompt to paste** (written out in full, referencing which case-file docs to attach), the **expected/representative output** (so the presenter knows if it went sideways), the **time budget**, and the **fallback** (which clip in `assets/` to play). For each CLIP: filename, length, the one-line narration over it, and the cue to start/stop. Add a top-of-sheet **pre-flight checklist**: deck open offline, case-file folder open, ChatGPT/Claude/Gemini logged in, phone charged + screen-mirroring tested, clips present in `assets/`, airplane-mode talking point ready.

- [ ] **Step 1: Write `run-sheet/stage-run-sheet.md`** per spec. Write the actual prompts in full (e.g., the Beat 2 prompt that points Claude Code at the `case-file/` folder and asks for an investigation plan + motion list + prosecutor stress-test).

- [ ] **Step 2: Verify**

Confirm: all three live demos have a full paste-ready prompt + expected output + fallback clip; both clips have filenames matching the `assets/` placeholders referenced in the deck; pre-flight checklist present.

- [ ] **Step 3: Commit**

```bash
git -C ~/Dev/cdam-2026-second-brain add run-sheet/stage-run-sheet.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Add stage run-sheet (prompts, expected output, fallbacks, timing)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 14: Finalize README and push

**Files:**
- Modify: `README.md`

- [ ] **Step 1: Update `README.md`** so the structure section lists `docs/case-bible.md`, all seven case docs, the deck, script, and run-sheet, and add a short "Day-of checklist" mirroring the run-sheet pre-flight. Keep the FICTIONAL disclaimer.

- [ ] **Step 2: Verify the whole repo builds offline.**

```bash
cd ~/Dev/cdam-2026-second-brain/deck && python3 -m http.server 8099 & SERVER_PID=$!
sleep 1; curl -s http://localhost:8099/index.html | grep -q "Reyes" && echo "FINAL DECK OK"; kill $SERVER_PID
git -C ~/Dev/cdam-2026-second-brain status --porcelain   # expect clean after commit
```

- [ ] **Step 3: Commit and push**

```bash
git -C ~/Dev/cdam-2026-second-brain add README.md
git -C ~/Dev/cdam-2026-second-brain -c user.name="Mike" -c user.email="mike@thenorthcoastlegal.com" \
  commit -m "Finalize README with full structure and day-of checklist

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
git -C ~/Dev/cdam-2026-second-brain push
```

---

## Presenter To-Dos (outside this plan)

- Record **Beat 3 clip** (local model on the RTX 4090, airplane mode, raw witness statements in) → save to `deck/assets/`.
- Capture the **Beat 5 3D Gaussian splat** clip of a stand-in interior → save to `deck/assets/`.
- Dry-run the **Gemini phone** officer role-play and screen-mirroring.
- Optional: export `case-file/*.md` to PDF for on-screen realism.
- Flip the GitHub repo to **public** before the conference.

---

## Self-Review (completed)

- **Spec coverage:** thesis/confidentiality → Tasks 11–12; case through-line → Tasks 1–9; all six use-cases → deck Beats 1–5 + script; four tools mapped (ChatGPT/Claude Code/local/Gemini live, Codex+Antigravity mentioned in Beat 6); offline deck → Task 10; kit structure → all tasks. No gaps found.
- **Placeholder scan:** no TBD/TODO; case docs are specified by concrete content-spec + bible facts rather than vague instructions; deck/script/run-sheet steps include real commands and required content.
- **Type/name consistency:** names (Reyes, Hale, Whitfield, Lindqvist, Salas, Anand), venue, distances (~10 ft, two casings, knife ~2 ft), and timestamps (11:59:10 / 11:59:34) are defined once in Task 1 and reused verbatim downstream. reveal.js paths in Task 10 match those referenced in Task 11.
