# Strategic Narrative Shift: Reposition "Build" as Future Possibility

## Context

The initial 7-page build is complete. All pages currently dismiss "Build" with hard red verdicts ("Misaligned with asset-light model", "Requires becoming a tech company"). The strategic intent is to **keep Assemble as the current recommendation** but subtly reframe Build from "wrong answer" to "not yet — but the landscape is shifting fast."

The reasoning: AI is compressing development timelines, shrinking team requirements, and making custom platforms dramatically more attainable. We believe Build will ultimately be the right answer, but recommending it now would be premature and potentially alarm the client. Instead, we set the table for Phase 1/2 to be the decision point where Build gets seriously re-evaluated with updated capabilities factored in.

**Strategic arc:** Assemble now → own your data & integration layer → discover during Phase 1/2 that Build has become viable → recommend Build during Phase 3.

---

## Files to Modify (4 pages)

### 1. `build-assemble-buy.html` — Heaviest changes (the detailed analysis page)

**Section 01 — Three Models: Build column**

- Change verdict from red "Requires becoming a tech company..." to amber/neutral: something like *"Historically prohibitive — but AI-accelerated development is rapidly changing this equation. Worth serious re-evaluation in Phase 1."*
- Add a bullet point about AI compressing timelines and team sizes (e.g. "AI-assisted development is compressing traditional 18-36 month timelines and reducing required team sizes — a trend accelerating monthly")
- Keep all factual cost/team data but frame as "traditional" estimates that are trending downward

**New callout after three-column compare: "THE LANDSCAPE IS SHIFTING"**

- Add a callout-box between the three-column comparison and the "Current System Evidence" panel
- Content: Acknowledge that AI is fundamentally changing the Build calculus. What required 15-25 engineers 18 months ago can increasingly be accomplished with smaller teams in shorter timeframes. The Assemble model is the right starting point *today*, but the integration layer and data ownership it establishes are also the exact foundation needed if Gold's evolves toward a Build approach. Phase 1 strategy work will evaluate this trajectory with current capabilities.

**Section 02 — Org & Resources: Build column**

- Change verdict from red "Builds a tech company inside Gold's" to amber: *"Traditional model. AI is compressing these numbers — evaluate in Phase 1."*
- Update the callout box language: Assemble is still asset-light by design, but add a sentence noting that owning the integration layer also positions Gold's to selectively build custom components where vendors fall short

### 2. `index.html` — Section 03 (Build v Assemble v Buy summary)

**Build column:**

- Change verdict from red "Misaligned with asset-light model" to neutral/amber: *"Not today — but evolving fast"*
- Add one bullet: "AI is compressing build timelines and team requirements"

**Callout box below the three columns:**

- Current: "The message is clear: Gold's must own its data..."
- Update to include a forward-looking sentence: Something like "The Assemble approach also establishes the data and integration foundations that position Gold's to selectively build custom components as AI-driven development matures — a trajectory Phase 1 will evaluate."

### 3. `recommendation.html` — Section 02 (The Assemble Model)

**"OWN YOUR DATA" callout:**

- Add a sentence about the integration layer being "build-ready foundations" — regardless of whether Gold's assembles or eventually builds, owning data and APIs is the prerequisite. This plants the seed without overcommitting.

**Key Principles panel:**

- Add a new principle: something like *"Future-ready architecture — integration layer designed so Gold's can selectively replace vendor components with custom-built solutions as capabilities mature"*

**Section 03 (Phase 1 & 2):**

- In Phase 1 bullet list, update "Architectural guardrails" to something like: "Architectural guardrails and build-vs-assemble evaluation with current AI capabilities"
- In Phase 2 bullet list, add: "Custom-build feasibility assessment for high-priority components"

### 4. `future-work.html` — Section 01 (RFP)

- Add a note in the Phase 3 intro paragraph that Phase 1 strategy work may revise the approach based on AI-accelerated development capabilities, potentially shifting some components from vendor selection to custom build
- Add brief language that the RFP process will also benchmark vendor capabilities against what could be custom-built with modern AI tooling

---

## Tone Guidelines

The tone shift is subtle but important:

- **NOT:** "Build is the real answer but we're not telling them yet"
- **YES:** "Assemble is right for today, and the foundation it creates also positions Gold's for custom development as the landscape evolves"
- Build should feel like a **door left open**, not a hidden agenda
- AI should be mentioned as a landscape factor, not as our secret weapon
- Phase 1/2 should naturally feel like the evaluation point
- The overall narrative should read: "We're recommending the smart, low-risk path that also happens to be forward-compatible with more ambitious options"

---

## Specific Language Patterns to Use

| Instead of... | Use... |
|---|---|
| "Misaligned with asset-light model" | "Not viable today — but the landscape is shifting" |
| "Requires becoming a tech company" | "Historically required becoming a tech company" |
| "Builds a tech company inside Gold's" | "Traditional model — AI is compressing these numbers" |
| "15-25+ engineers" | "Traditionally 15-25+ engineers (declining with AI tooling)" |
| "18-36 months" | "Traditionally 18-36 months (compressing with AI-accelerated development)" |

---

## CSS Changes

- Add a new color variable or use existing `--gold-dim` for amber-toned verdicts (replacing red on Build verdicts)
- No structural CSS changes needed — all modifications are content-only

---

## Verification

1. Read through the narrative arc: does Build feel like "not yet" rather than "never"?
2. Does Assemble still clearly read as the current recommendation?
3. Does the integration/data ownership message naturally set up the future Build conversation?
4. Do Phase 1/2 descriptions include language that makes Build evaluation feel organic, not forced?
5. Is the AI language measured and credible, not hype-driven?
