# Stage Run-Sheet — "A Second Brain"

One page to run the demos from. Live demos have a **paste-ready prompt**, the **expected
output** (so you know if it went sideways), a **time budget**, and a **fallback clip**.
Clips have a filename and cue notes.

---

## PRE-FLIGHT CHECKLIST (do this before you walk on)

- [ ] Deck open in browser, **offline** (load `deck/index.html`, then kill wifi to prove it).
- [ ] Press `S` once to confirm speaker-notes view works on your setup.
- [ ] `case-file/` folder open in a window you can show.
- [ ] Logged in: **ChatGPT** (Beat 1), **Claude Code** in the project (Beat 2), **Gemini** on phone (Beat 4).
- [ ] Phone charged + **screen-mirroring tested** with the AV setup.
- [ ] All four clips present in `deck/assets/`:
      `beat1-brainstorm.mp4`, `beat2-strategy.mp4` (fallbacks),
      `beat3-local-inconsistencies.mp4`, `beat4-crossexam.mp4`, `beat5-3d-splat.mp4`.
- [ ] Airplane-mode talking point ready for Beat 3.
- [ ] Water. Clicker. Backup of the deck on a USB stick.

---

## BEAT 1 — Brainstorm (ChatGPT, LIVE, ~5 min)

**Paste this prompt:**

```
You are an experienced Michigan criminal defense attorney. Here are the sanitized facts
of a case:

Late at night at a bar-and-grill, my client (a lawful concealed-carry holder) shot and
killed a man after an argument moved from the bar toward the pool area. My client says
the man charged him and reached toward his waistband; my client fired twice. No firearm
was found on the deceased, but a closed folding knife was found about two feet from his
hand. One witness says the deceased was advancing aggressively; another says he had his
hands up and was backing away. Lighting was poor and distances are disputed.

Give me every viable defense theory. For EACH theory, give me (1) the one-sentence pitch,
(2) the facts that support it, and (3) the single biggest weakness a prosecutor will
attack. Put it in a table. Do not pick one — I want the menu.
```

**Expected output:** a table with ~3–4 theories (self-defense; imperfect self-defense;
reasonable doubt on intent/identity) each with support + a weakness column.
**If it's weak or stalls →** [FALLBACK] play `assets/beat1-brainstorm.mp4`.

---

## BEAT 2 — Strategy (Claude Code, LIVE, ~6 min)

Open Claude Code in the repo so it can read `case-file/`. **Paste this prompt:**

```
Read every document in the case-file/ folder (police report, both witness statements,
the defendant statement, the 911 transcript, the scene/evidence log with the floor plan,
and the ME summary).

Then do three things:
1. Draft a focused INVESTIGATION PLAN — what to verify, measure, or obtain next.
2. List the PRE-TRIAL MOTIONS worth considering, with a one-line reason for each.
3. Switch sides: act as the PROSECUTOR and attack my self-defense theory using ONLY the
   facts in these documents. Give me your three strongest points against me.

Be concrete and cite which document each point comes from.
```

**Expected output:** an investigation plan, a motions list, and a prosecutor section that
points at the knife being closed, the second witness's "hands up" account, and distance.
**Watch for:** it should cite documents by name. **If it fails →** [FALLBACK]
`assets/beat2-strategy.mp4`.

---

## BEAT 3 — Inconsistencies (LOCAL model, CLIP, ~5 min)

**This is a pre-recorded clip:** `assets/beat3-local-inconsistencies.mp4`.

**Recording recipe (do this beforehand on the RTX 4090, e.g. Ollama):**

```
You are a defense investigator. Read these two witness statements and the physical
evidence below. Identify (1) every place the two witnesses contradict EACH OTHER, and
(2) every place the physical evidence contradicts a witness. Be specific and quote the
language.

[paste 02-witness-a-whitfield.md, 03-witness-b-lindqvist.md, 06-scene-evidence-log,
07-me-summary.md]
```

**Cue points to narrate:** (a) show the airplane-mode toggle on first, (b) let it find
the sightline/column issue, the "advancing vs. hands-up" physical-evidence conflict, and
the 911-timeline issue. **End the clip** on the three impeachment points listed.

---

## BEAT 4 — Cross-exam (Gemini on phone, LIVE, ~6 min)

Screen-mirror the phone. **Paste/say this prompt to Gemini:**

```
We're going to role-play a cross-examination. You are Detective Raymond Salas, the officer
who investigated a fatal self-defense shooting at a bar and grill. Stay fully in character:
answer like a real detective on cross — concise, a little defensive, don't volunteer
anything, make me work for concessions. Do not break character or coach me.

I am the defense attorney. Begin by stating your name and role, then wait for my first
question.
```

**Then cross live (sample spine):** Did you measure the distance from Mr. Lindqvist's
seat to where the shooting happened? · Was there a support column between them? · The
overhead light over that area — working that night? · Did you test what a person could
see from that seat? · You can't tell this jury he had a clear view, can you?

**Expected behavior:** it answers in character and resists. **If it breaks character or
fails →** [FALLBACK] `assets/beat4-crossexam.mp4`.

---

## BEAT 5 — 3D scene (CLIP, ~5 min)

**Clip:** `assets/beat5-3d-splat.mp4`.
**Cue points:** open with a free move through the room → switch to **Corey's seat POV** →
end held on the **column obstructing the sightline** in the dim east zone. Narrate the
jury question: "Could he see what he said he saw?"

---

## TIMING AT A GLANCE

| Segment | Slide(s) | Budget | Running |
|---------|----------|--------|---------|
| Cold open + thesis | 1–2 | 3:00 | 3:00 |
| Confidentiality | 3 | 2:00 | 5:00 |
| The case | 4 | 1:00 | 6:00 |
| Beat 1 Brainstorm | 5 | 5:00 | 11:00 |
| Beat 2 Strategy | 6 | 6:00 | 17:00 |
| Beat 3 Inconsistencies | 7 | 5:00 | 22:00 |
| Beat 4 Cross-exam | 8 | 6:00 | 28:00 |
| Beat 5 3D scene | 9 | 5:00 | 33:00 |
| Close | 10–11 | 2:00 | 35:00 |
| **Q&A** | — | ~10:00 | ~45:00 |

If you're running long, the safe cut is Beat 1 (shorten to 3 min) — never cut Beats 3–5.
