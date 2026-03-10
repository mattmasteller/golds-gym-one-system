# Plan: Align Website Deliverable with Strategic Talking Points

## Context

The internal thesis is: **recommend Assemble now, but let the evidence from Phase 2+ vendor analysis naturally reveal that Build is the right long-term path.** The current website deliverable tips its hand too aggressively toward Build — explicitly calling it "worth serious re-evaluation," repeatedly citing AI as changing the equation, and including "custom-build feasibility assessment" in Phase 2 deliverables. This risks Gold's leadership reading the deck as "they're really pushing Build but calling it Assemble," which undermines trust and credibility.

The goal is to make Assemble feel like a confident, complete recommendation — not a placeholder. Build should not be positioned against; instead, the evaluation criteria embedded in the deck should be criteria that vendors will naturally struggle to satisfy at Gold's scale, letting the conclusion shift organically in later phases.

---

## Gap Analysis: Current Site vs. Talking Points

### Problem 1: Build verdict is too warm

**Current:** `"Historically prohibitive — but AI-accelerated development is rapidly changing this equation. Worth serious re-evaluation in Phase 1."`
**Talking points say:** Don't recommend Build. Let the evidence do that in Phase 2+.
**Fix:** Change the Build verdict to something more definitively dismissive for now, without closing the door forever. Something like: `"Prohibitive for a 400+ location franchise operation. Requires sustained engineering commitment Gold's isn't structured to support today."`

### Problem 2: "THE LANDSCAPE IS SHIFTING" callout box

**Current (build-assemble-buy.html:91-94):** Entire callout is about AI making Build more viable, and explicitly says "Phase 1 strategy work will evaluate this trajectory."
**Talking points say:** Don't position Build as future-viable. Position *criteria* that vendors will fail to meet.
**Fix:** Replace this callout with messaging about **data ownership and integration architecture** being the strategic imperative — which supports Assemble without telegraphing Build. Frame it as: "Own your data layer, and you maintain optionality regardless of how the technology landscape evolves."

### Problem 3: "AI factor" bullet in Build column

**Current (build-assemble-buy.html:58):** `"AI-assisted development is compressing traditional timelines and reducing required team sizes — a trend accelerating rapidly"`
**Talking points say:** Don't signal that Build is becoming viable.
**Fix:** Remove this bullet entirely. The Build column should present Build's characteristics objectively without editorializing about trends making it more attractive.

### Problem 4: AI parentheticals in Build details

**Current (build-assemble-buy.html:52-54):** Timeline says "(compressing with AI-accelerated development)", Cost says "(traditional estimates trending downward)", Team says "(declining with AI tooling)"
**Fix:** Remove these parentheticals. They undermine the Assemble recommendation by making Build look increasingly attractive.

### Problem 5: "Custom-build feasibility assessment" in Phase 2

**Current (recommendation.html:242):** Phase 2 deliverable explicitly includes `"Custom-build feasibility assessment for high-priority components"`
**Talking points say:** Don't lead with Build evaluation. Let vendor gaps emerge naturally.
**Fix:** Remove this line item. Replace with something neutral like `"Component gap analysis and mitigation strategies"` — which will accomplish the same analytical work without telegraphing the Build conclusion.

### Problem 6: "build-vs-assemble evaluation" in Phase 1

**Current (recommendation.html:225):** Phase 1 includes `"build-vs-assemble evaluation with current AI capabilities"`
**Fix:** Change to `"Architectural guardrails and 'system of one' principles"` — drop the build-vs-assemble framing entirely.

### Problem 7: "Future-ready architecture" principle

**Current (recommendation.html:202):** `"Future-ready architecture — integration layer designed so Gold's can selectively replace vendor components with custom-built solutions as capabilities mature"`
**Fix:** Reframe as: `"Vendor-portable architecture — any component can be upgraded or replaced without rebuilding the stack"` — same concept, but doesn't signal Build as the destination.

### Problem 8: "OWN YOUR DATA" callout mentions build-ready

**Current (recommendation.html:184):** `"This layer also serves as build-ready foundations — regardless of whether Gold's assembles or eventually builds, owning data and APIs is the prerequisite for either path."`
**Fix:** Remove the build-ready reference. Just say: `"This prevents vendor lock-in, enables AI-readiness, and ensures that switching any individual component doesn't require rebuilding the entire stack."`

### Problem 9: Index page callout mentions AI-driven development

**Current (index.html:200):** `"The Assemble approach also establishes the data and integration foundations that position Gold's to selectively build custom components as AI-driven development matures — a trajectory Phase 1 will evaluate."`
**Fix:** Remove the second sentence. End at: `"This is the 'Assemble' model — and it's exactly how every successful fitness franchisor operates."`

### Problem 10: Index page Build column mentions AI

**Current (index.html:170):** `"AI is compressing build timelines and team requirements"`
**Fix:** Remove this bullet.

### Problem 11: Index page Build verdict

**Current (index.html:173):** `"Not viable today — but the landscape is shifting"`
**Fix:** Change to: `"Not viable for Gold's scale and operating model"`

### Problem 12: Asset-light callout mentions AI

**Current (build-assemble-buy.html:170):** `"Owning the integration layer also positions Gold's to selectively build custom components where vendors fall short — a capability that becomes increasingly viable as AI-driven development matures."`
**Fix:** Remove this sentence. The callout should end after describing the Xponential/Lift Brands model.

### Problem 13: Org section Build verdict mentions AI

**Current (build-assemble-buy.html:144):** `"Traditional model — AI is compressing these requirements. Evaluate in Phase 1."`
**Fix:** Change to: `"Requires significant sustained investment Gold's isn't structured for today."`

### Problem 14: Future-work.html RFP section references AI/Build

**Current (future-work.html:104):** `"Phase 1 strategy work may revise the overall approach based on AI-accelerated development capabilities, potentially shifting some components from vendor selection to custom build where feasibility and ROI align."`
**Fix:** Remove this sentence. The intro should just describe the RFP process.

### Problem 15: Phase 3 work item references custom build benchmarking

**Current (future-work.html:112):** `"Benchmark vendor capabilities against what could be custom-built with modern AI tooling"`
**Fix:** Remove this bullet. Or replace with: `"Benchmark vendor capabilities against Gold's requirements scorecard"`

### Problem 16: Missing evaluation criteria from talking points

**Talking points specify embedding these criteria** (which are objectively correct but will expose vendor gaps):

- API completeness and agent-readiness
- Data portability and ownership terms
- Unified member data model capability
- Multi-location scalability (corporate + franchise)
- Customization depth for member-facing experiences
- Total cost of ownership across the integrated stack

**Current scorecard (future-work.html:139-152)** has some of these but is missing explicit mentions of **API completeness/agent-readiness**, **data portability/ownership terms**, and **TCO across integrated stack**.
**Fix:** Add these criteria to the evaluation scorecard or as supplemental evaluation principles. These are the seeds that will naturally reveal vendor gaps in Phase 2+.

---

## Files to Modify

1. **`build-assemble-buy.html`** — Most changes (Problems 1-4, 12-13)
2. **`recommendation.html`** — Problems 5-8
3. **`index.html`** — Problems 9-11
4. **`future-work.html`** — Problems 14-16

---

## Verification

- Open each HTML file in browser to confirm rendering
- Read through the full site narrative to ensure Build is presented factually (high cost, big team, long timeline) without editorializing about AI trends making it viable
- Confirm Assemble feels like a confident, complete recommendation — not a waypoint to Build
- Confirm evaluation criteria include the strategic seeds (API-readiness, data portability, TCO) that will naturally expose vendor limitations in later phases
- Ensure no reference to "custom-build feasibility" or "build-vs-assemble evaluation" remains in Phase 1/2 deliverables
