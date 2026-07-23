---
layout: default
title: CV
---
<!--
  CV page. The PDF shown follows the site language switch:
  English site -> cv-en.pdf, Korean site -> cv-ko.pdf. Page 1 only,
  viewer chrome hidden via #toolbar=0&navpanes=0.
  Source LaTeX lives in /cv-src (en/, ko/); build it with pdflatex.
-->

<div align="center">

<h1><span class="lang-en">Curriculum Vitae</span><span class="lang-ko">이력서</span></h1>

</div>

<div class="cv-bar">
<a class="btn-download lang-en" href="{{ '/assets/pdf/cv-en.pdf' | relative_url }}" target="_blank" rel="noopener">Download PDF</a>
<a class="btn-download lang-ko" href="{{ '/assets/pdf/cv-ko.pdf' | relative_url }}" target="_blank" rel="noopener">PDF 다운로드</a>
<a class="btn-download btn-secondary lang-en" href="{{ '/assets/pdf/cv-en-full.pdf' | relative_url }}" target="_blank" rel="noopener">Full CV (with publications)</a>
<a class="btn-download btn-secondary lang-ko" href="{{ '/assets/pdf/cv-ko-full.pdf' | relative_url }}" target="_blank" rel="noopener">전체 CV (논문 목록 포함)</a>
</div>

<div class="pdf-frame cv-frame lang-en" style="aspect-ratio: 612 / 792;">
<iframe src="{{ '/assets/pdf/cv-en.pdf' | relative_url }}#toolbar=0&amp;navpanes=0&amp;view=FitH" title="Curriculum Vitae (English)"></iframe>
</div>
<div class="pdf-frame cv-frame lang-ko" style="aspect-ratio: 612 / 792;">
<iframe src="{{ '/assets/pdf/cv-ko.pdf' | relative_url }}#toolbar=0&amp;navpanes=0&amp;view=FitH" title="이력서 (한국어)"></iframe>
</div>
