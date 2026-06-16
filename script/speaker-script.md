# Speaker Script — "A Second Brain: Building AI for Your Practice"

**Target:** ~35 min content + ~10 min Q&A. Cumulative times are in each header.
**Legend:** `[SLIDE n]` advance to slide n · `[DEMO …]` switch to a live tool · `[CLIP …]`
play a video from `deck/assets/` · `[FALLBACK]` say this and cut to the clip if a live demo fails.
Case facts referenced here come from `docs/case-bible.md`.

> Speaking style: talk, don't read. The bold lines are the ones to land word-for-word.

---

## Beat 0 — Cold open + thesis  ·  ≈3 min  ·  (0:00 → 3:00)  ·  [SLIDE 1–2]

[SLIDE 1]

Open cold, before the title sinks in:

> "Raise your hand if you've used ChatGPT to look something up. Keep it up if it gave
> you a fake case once."

(Beat. Hands drop, laughter.)

> "That's the problem. Most of us are using the most powerful tool of our careers like
> it's a search engine with a confidence problem. Today I want to show you something
> different."

[SLIDE 2]

> "**Not a search engine. A thinking partner.** Stop using AI like Google. Start using
> it like a sharp associate who never sleeps, never bills you, and will argue the other
> side of your case at two in the morning."

Frame the hour: "I'm going to take one case — a self-defense shooting — and run it
through five things that associate can do. Same case, start to finish."

---

## Beat 0.5 — Confidentiality  ·  ≈2 min  ·  (3:00 → 5:00)  ·  [SLIDE 3]

[SLIDE 3]

> "Before anything else, the question every one of you is already asking: *am I about
> to tell you to paste privileged discovery into OpenAI's servers?* No."

> "I'm not here to debate the ethics of AI. I am here about **privilege**. And the rule
> I live by is simple: **cloud for abstract thinking, local for raw privileged
> material.**"

Explain in one breath: brainstorming and rehearsing with sanitized or hypothetical
facts — the cloud is fine, no client data leaves. The moment you feed in the actual
file, you run it on your own machine, offline. "I'll show you that, live-ish, in a few
minutes — a serious model, airplane mode, nothing leaving the laptop."

---

## The case  ·  ≈1 min  ·  (5:00 → 6:00)  ·  [SLIDE 4]

[SLIDE 4]

Set the story briefly: "*People v. Daniel Reyes.* Late night, a bar and grill — a place
where, because food is the primary business, my client can lawfully carry. An argument
turns into a shooting. Reyes says the man charged him and reached for his waist. No gun
on the deceased — but a knife near his hand. Two witnesses. They do not agree. And the
whole thing may turn on **how far apart they were, who was moving, and who could
actually see.** Every fact is fictional. Let's get to work."

---

## Beat 1 — Brainstorm the theory  ·  ≈5 min  ·  (6:00 → 11:00)  ·  [SLIDE 5]  ·  ChatGPT, LIVE

[SLIDE 5]

> "First job for the associate: don't tell me the answer — give me the *options.*"

[DEMO: ChatGPT — paste the sanitized fact summary; ask for every viable defense theory
AND the biggest weakness in each.] Use the prompt in the run-sheet.

Narrate as it generates: "Watch — self-defense, imperfect self-defense, reasonable doubt
on intent. And notice I asked it to attack each one. That last column is the prosecutor
in my head, on demand."

Land it: "This took fifteen seconds. It didn't replace my judgment — it gave my judgment
something to work with."

[FALLBACK] "Conference wifi is doing conference wifi things — here's the one I ran this
morning." [CLIP: assets/beat1-brainstorm.mp4]

---

## Beat 2 — Build & stress-test strategy  ·  ≈6 min  ·  (11:00 → 17:00)  ·  [SLIDE 6]  ·  Claude Code, LIVE

[SLIDE 6]

> "Brainstorming used a paragraph. Now I want the associate to read the **whole file.**"

[DEMO: Claude Code pointed at the `case-file/` folder.] Use the run-sheet prompt: have it
(1) draft an investigation plan, (2) list motions to consider, (3) then play prosecutor
and attack the self-defense theory using only what's in the file.

Narrate: "It's reading the incident report, both witness statements, the 911 transcript,
the ME findings, the scene diagram — all at once. No human associate reads seven
documents this fast."

When the prosecutor section lands: "*This* is the part that earns its keep. It just told
me where my own theory is soft — before the prosecutor does."

[FALLBACK] "Let me show you the run from this morning." [CLIP: assets/beat2-strategy.mp4]

---

## Beat 3 — Spot the inconsistencies (LOCAL)  ·  ≈5 min  ·  (17:00 → 22:00)  ·  [SLIDE 7]  ·  Local model, CLIP

[SLIDE 7]

> "Now I'm going to feed it the *actual* witness statements. That's privileged work
> product the second it touches my theory. So I am not doing this in the cloud."

[CLIP: assets/beat3-local-inconsistencies.mp4] Narrate over it:

- "This is my own computer. Watch the corner — I'm turning on **airplane mode.** Wifi
  off. Nothing is leaving this machine."
- "Same question I'd ask an associate: where do these two witnesses contradict each
  other, and where does the physical evidence contradict *them*?"
- Point out the hits as they appear: Corey claims a clear, well-lit view — but he's at
  the far end of the bar with a column in the way and the light over the scene burned
  out. He says the man had his hands up backing away — but the bullet path is *upward*
  and the casings are ten feet out, which says the man was coming *forward.* He says the
  shooter waited and aimed — but the 911 call compresses the whole thing to seconds.

Land it: "Three impeachment points. On a privileged document. Offline. That is the
answer to the confidentiality question — you don't avoid the tool, you run it where the
data is safe."

---

## Beat 4 — Rehearse the cross  ·  ≈6 min  ·  (22:00 → 28:00)  ·  [SLIDE 8]  ·  Gemini on phone, LIVE

[SLIDE 8]

> "I know the inconsistencies. Now I have to get them out of a witness who does not want
> to give them to me. So let's rehearse."

Pull out the phone. "This is on the device in your pocket."

[DEMO: Gemini on phone, screen-mirrored. Tell it to *become* Det. Salas, the investigating
officer, and answer in character — evasive, defensive, like a real cop on cross.] Use the
run-sheet persona prompt.

Run a short, real cross live: the burned-out light, whether they measured Corey's
sightline, whether they tested it. Let it push back. "Notice it's not rolling over.
That's the point — I want to *practice* against resistance before I'm doing it in front
of a jury."

[FALLBACK] "Let me play one I recorded." [CLIP: assets/beat4-crossexam.mp4]

---

## Beat 5 — Reconstruct the scene  ·  ≈5 min  ·  (28:00 → 33:00)  ·  [SLIDE 9]  ·  3D splat, CLIP

[SLIDE 9]

> "Everything so far has been words. But this case is about *space.* So I rebuilt the
> room."

[CLIP: assets/beat5-3d-splat.mp4] Narrate:

- "This is a 3D capture of the interior — you can move through it from any position."
- "Here's the jury question made visual: this is the view **from Corey's seat.**"
- End on the obstruction: "There's the support column. There's the dark zone where the
  light was out. The witness who swore he saw it 'clear as day' — could he?"

Land it: "The splat isn't a gimmick. It turned my impeachment into something a jury can
*see.* That's the second brain at its best — it doesn't just think, it shows."

---

## Beat 6 — Close  ·  ≈2 min  ·  (33:00 → 35:00)  ·  [SLIDE 10]

[SLIDE 10]

> "One confession. **I'm a lawyer, not a programmer.** I built that 3D pipeline by
> *directing* AI — describing what I wanted, in plain English, until it existed."

One-line on alternatives: "I work in Claude. But Claude isn't the only one — ChatGPT's
Codex and Google's Antigravity do the same things. Pick what fits you; the skill is the
same."

> "So here's your homework. Monday, take **one** real task you'd normally grind through
> alone — and hand it to your second brain. Just one. That's how this starts."

[SLIDE 11] "Everything you saw — the slides, the whole fictional case file, the exact
prompts — is in this repo. Take it, break it, make it yours. Thank you. What questions
do you have?"

---

## Demo fallback quick-reference

| Beat | Live tool | If it fails, play |
|------|-----------|-------------------|
| 1 | ChatGPT | `assets/beat1-brainstorm.mp4` |
| 2 | Claude Code | `assets/beat2-strategy.mp4` |
| 4 | Gemini (phone) | `assets/beat4-crossexam.mp4` |

(Beats 3 and 5 are clips by design — see the run-sheet for cue points.)
