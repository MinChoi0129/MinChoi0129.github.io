---
layout: default
title: CV
---
<!--
  CV page. The PDF shown follows the site language switch:
  English site -> cv_eng.pdf, Korean site -> cv.pdf. Page 1 only,
  viewer chrome hidden via #toolbar=0&navpanes=0.
-->

<div align="center">

<h1><span class="lang-en">Curriculum Vitae</span><span class="lang-ko">이력서</span></h1>

</div>

<div class="cv-bar">
<a class="btn-download lang-en" href="{{ '/assets/pdf/cv_eng.pdf' | relative_url }}" target="_blank" rel="noopener">Download PDF</a>
<a class="btn-download lang-ko" href="{{ '/assets/pdf/cv.pdf' | relative_url }}" target="_blank" rel="noopener">PDF 다운로드</a>
</div>

<div class="pdf-frame cv-frame lang-en" style="aspect-ratio: 612 / 792;">
<iframe src="{{ '/assets/pdf/cv_eng.pdf' | relative_url }}#toolbar=0&amp;navpanes=0&amp;view=FitH" title="Curriculum Vitae (English)"></iframe>
</div>
<div class="pdf-frame cv-frame lang-ko" style="aspect-ratio: 612 / 792;">
<iframe src="{{ '/assets/pdf/cv.pdf' | relative_url }}#toolbar=0&amp;navpanes=0&amp;view=FitH" title="이력서 (한국어)"></iframe>
</div>
