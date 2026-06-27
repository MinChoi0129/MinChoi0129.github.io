---
layout: default
title: CV
---
<!--
  CV page. Shows page 1 only of the Korean and English CVs (assets/pdf/).
  Language toggle is pure CSS (radio + :checked). PDF viewer chrome
  (toolbar / thumbnails / print) is hidden via #toolbar=0&navpanes=0.
-->

<div align="center">

<h1>Curriculum Vitae</h1>

</div>

<div class="cv">
<input class="cv-radio" type="radio" name="cvlang" id="cv-ko" checked>
<input class="cv-radio" type="radio" name="cvlang" id="cv-en">

<div class="cv-bar">
<div class="cv-tabs">
<label for="cv-ko">Korean</label>
<label for="cv-en">English</label>
</div>
<a class="btn-download cv-dl-ko" href="{{ '/assets/pdf/cv.pdf' | relative_url }}" target="_blank" rel="noopener">Download PDF</a>
<a class="btn-download cv-dl-en" href="{{ '/assets/pdf/cv_eng.pdf' | relative_url }}" target="_blank" rel="noopener">Download PDF</a>
</div>

<div class="pdf-frame cv-frame frame-ko" style="aspect-ratio: 612 / 792;">
<iframe src="{{ '/assets/pdf/cv.pdf' | relative_url }}#toolbar=0&amp;navpanes=0&amp;view=FitH" title="Curriculum Vitae (Korean)"></iframe>
</div>
<div class="pdf-frame cv-frame frame-en" style="aspect-ratio: 612 / 792;">
<iframe src="{{ '/assets/pdf/cv_eng.pdf' | relative_url }}#toolbar=0&amp;navpanes=0&amp;view=FitH" title="Curriculum Vitae (English)"></iframe>
</div>
</div>
