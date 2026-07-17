---
layout: default
title: Projects
# ─── HOW TO ADD A PROJECT ───────────────────────────────────────────────
# 1) Append one block to the `projects:` list below.
# 2) Drop a SQUARE thumbnail at  assets/img/projects/<id>.png
# 3) Drop the PDF at             assets/pdf/<id>.pdf
# That's it — the page renders every entry automatically. (title_ko/desc_ko
# are optional; they fall back to the English text.)
projects:
  - title_en: "AR & Mixed-Reality Interaction"
    title_ko: "AR·혼합현실 인터랙션"
    desc_en: "Shrunken Reality, low-cost mobile AR interaction (ETRI), and the J.A.R.V.I.S digital-twin system."
    desc_ko: "Shrunken Reality, 저비용 모바일 AR 인터랙션(ETRI), J.A.R.V.I.S 디지털 트윈 시스템."
    thumb: /assets/img/projects/project_1.png
    pdf: /assets/pdf/project_1.pdf
---

<div align="center">

<h1><span class="lang-en">Projects</span><span class="lang-ko">프로젝트</span></h1>

</div>

<div class="project-list">
{% for p in page.projects %}
<details class="project-card">
<summary>
<img class="project-thumb" src="{{ p.thumb | relative_url }}" alt="" />
<span class="project-meta">
<span class="project-title"><span class="lang-en">{{ p.title_en }}</span><span class="lang-ko">{{ p.title_ko | default: p.title_en }}</span></span>
<span class="project-desc"><span class="lang-en">{{ p.desc_en }}</span><span class="lang-ko">{{ p.desc_ko | default: p.desc_en }}</span></span>
<span class="project-cue"><span class="lang-en">Click to preview the PDF</span><span class="lang-ko">클릭하면 PDF 미리보기</span></span>
</span>
</summary>
<div class="project-viewer">
<iframe src="{{ p.pdf | relative_url }}#toolbar=0&amp;navpanes=0&amp;view=FitH" title="{{ p.title_en | escape }}" loading="lazy"></iframe>
<a class="pdf-open" href="{{ p.pdf | relative_url }}" target="_blank" rel="noopener"><span class="lang-en">Open in a new tab</span><span class="lang-ko">새 탭에서 열기</span></a>
</div>
</details>
{% endfor %}
</div>

{% if page.projects.size == 0 %}
<div class="maintenance">
<p class="maintenance-title"><span class="lang-en">No projects yet</span><span class="lang-ko">아직 프로젝트가 없습니다</span></p>
<p class="maintenance-sub"><span class="lang-en">Check back soon.</span><span class="lang-ko">곧 업데이트됩니다.</span></p>
</div>
{% endif %}
