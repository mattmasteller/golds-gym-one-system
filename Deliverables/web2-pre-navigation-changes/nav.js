/* ================================================================
   GOLD'S GYM — GLOBAL NAVIGATION
   Shared across all 7 pages of the executive presentation
   ================================================================ */

(function () {
  'use strict';

  var PAGES = [
    { file: 'index.html',              label: 'Summary' },
    { file: 'discovery.html',          label: 'Discovery' },
    { file: 'survey.html',             label: 'Survey' },
    { file: 'comps-stacks.html',       label: 'Market' },
    { file: 'build-assemble-buy.html', label: 'Approach' },
    { file: 'recommendation.html',     label: 'Recommendation' },
    { file: 'future-work.html',        label: 'Future Work' }
  ];

  // Determine current page index from filename
  var path = window.location.pathname.split('/').pop() || 'index.html';
  var currentIndex = PAGES.findIndex(function (p) { return p.file === path; });
  if (currentIndex === -1) currentIndex = 0;

  // 1. Mark visited steps (all pages before current)
  var steps = document.querySelectorAll('.global-stepper .step');
  steps.forEach(function (step, i) {
    if (i < currentIndex) step.classList.add('visited');
    if (i === currentIndex) step.classList.add('active');
  });

  // 2. Keyboard navigation (Left / Right arrow keys)
  document.addEventListener('keydown', function (e) {
    if (e.target.tagName === 'INPUT' || e.target.tagName === 'TEXTAREA' || e.target.isContentEditable) return;
    if (e.key === 'ArrowLeft' && currentIndex > 0) {
      window.location.href = PAGES[currentIndex - 1].file;
    } else if (e.key === 'ArrowRight' && currentIndex < PAGES.length - 1) {
      window.location.href = PAGES[currentIndex + 1].file;
    }
  });
})();
