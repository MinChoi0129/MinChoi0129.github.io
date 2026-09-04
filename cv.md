---
layout: default
title: CV
---
<!--
  CV page. Follows the site language switch (English -> cv-en, Korean -> cv-ko).
  The inline preview is a rendered image of page 1 (assets/img/cv/cv-*-p1.webp
  with a JPEG fallback); clicking it or the button opens the full PDF
  (assets/pdf/cv-*.pdf). Source LaTeX lives in /cv-src (en/, ko/). Run
  cv-src/build.sh to rebuild both PDFs and regenerate the preview images.
-->

<div align="center">

<h1><span class="lang-en">Curriculum Vitae</span><span class="lang-ko">이력서</span></h1>

</div>

<div class="cv-bar">
<a class="btn-download lang-en" href="{{ '/assets/pdf/cv-en.pdf' | relative_url }}" target="_blank" rel="noopener">Download PDF</a>
<a class="btn-download lang-ko" href="{{ '/assets/pdf/cv-ko.pdf' | relative_url }}" target="_blank" rel="noopener">PDF 다운로드</a>
</div>

<div class="pdf-frame cv-frame lang-en">
<a href="{{ '/assets/pdf/cv-en.pdf' | relative_url }}" target="_blank" rel="noopener" title="Open the full CV (PDF)"><picture><source type="image/webp" srcset="{{ '/assets/img/cv/cv-en-p1.webp' | relative_url }}"><img src="{{ '/assets/img/cv/cv-en-p1.jpg' | relative_url }}" width="1632" height="2112" alt="Curriculum Vitae (English), page 1"></picture></a>
</div>
<div class="pdf-frame cv-frame lang-ko">
<a href="{{ '/assets/pdf/cv-ko.pdf' | relative_url }}" target="_blank" rel="noopener" title="전체 이력서 열기 (PDF)"><picture><source type="image/webp" srcset="{{ '/assets/img/cv/cv-ko-p1.webp' | relative_url }}"><img src="{{ '/assets/img/cv/cv-ko-p1.jpg' | relative_url }}" width="1632" height="2112" alt="이력서 (한국어), 1쪽"></picture></a>
</div>

<p class="pdf-fallback"><span class="lang-en">Preview shows page 1. Click it or use the button for the full PDF.</span><span class="lang-ko">미리보기는 1쪽입니다. 그림을 누르거나 버튼으로 전체 PDF를 열 수 있습니다.</span></p>
