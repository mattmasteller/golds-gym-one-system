/* ================================================================
   GOLD'S GYM — GLOBAL NAVIGATION (MMS Vendor Evaluation)
   ================================================================ */

(function () {
  'use strict';

  var PAGES = [
    { file: 'index.html', label: 'Summary' },
    { file: 'methodology.html', label: 'Methodology' },
    { file: 'threshold-gates.html', label: 'Gates' },
    { file: 'categories.html', label: 'Categories' },
    { file: 'business-groups.html', label: 'Business Groups' },
    { file: 'evidence.html', label: 'Evidence' }
  ];

  var rawPath = window.location.pathname.split('/').pop() || 'index.html';
  var path = rawPath.replace(/\.html$/, '') || 'index';
  var currentIndex = PAGES.findIndex(function (p) {
    return p.file.replace(/\.html$/, '') === path;
  });
  if (currentIndex === -1) currentIndex = 0;

  var steps = document.querySelectorAll('.global-stepper .step');
  steps.forEach(function (step, i) {
    if (i < currentIndex) step.classList.add('visited');
    if (i === currentIndex) step.classList.add('active');
  });

  document.addEventListener('keydown', function (e) {
    if (e.target.tagName === 'INPUT' || e.target.tagName === 'TEXTAREA' || e.target.isContentEditable) return;
    if (e.key === 'ArrowLeft' && currentIndex > 0) {
      window.location.href = PAGES[currentIndex - 1].file;
    } else if (e.key === 'ArrowRight' && currentIndex < PAGES.length - 1) {
      window.location.href = PAGES[currentIndex + 1].file;
    }
  });
})();
