---
layout: default
title: Projects
---
<!--
  HOW TO ADD A PROJECT
  1) Create one file:  _projects/<name>.md
     front matter: title_en, title_ko, desc_en, desc_ko, thumb, order
     body: free markdown (text, images, videos, links) — shown when the card opens
  2) Drop a SQUARE thumbnail at  assets/img/projects/<name>.png
  Nothing here needs editing; every _projects/*.md renders automatically.
-->

<div align="center">

<h1><span class="lang-en">Projects</span><span class="lang-ko">프로젝트</span></h1>

</div>

<div class="project-list">
{% assign items = site.projects | sort: 'order' %}
{% for p in items %}
<details class="project-card">
<summary>
<img class="project-thumb" src="{{ p.thumb | relative_url }}" alt="" />
<span class="project-meta">
<span class="project-title"><span class="lang-en">{{ p.title_en }}</span><span class="lang-ko">{{ p.title_ko | default: p.title_en }}</span></span>
<span class="project-desc"><span class="lang-en">{{ p.desc_en }}</span><span class="lang-ko">{{ p.desc_ko | default: p.desc_en }}</span></span>
<span class="project-cue"><span class="lang-en">Click to open</span><span class="lang-ko">클릭해서 열기</span></span>
</span>
</summary>
<div class="project-body">
{{ p.content | markdownify }}
</div>
</details>
{% endfor %}
</div>

{% if site.projects.size == 0 %}
<div class="maintenance">
<p class="maintenance-title"><span class="lang-en">No projects yet</span><span class="lang-ko">아직 프로젝트가 없습니다</span></p>
<p class="maintenance-sub"><span class="lang-en">Check back soon.</span><span class="lang-ko">곧 업데이트됩니다.</span></p>
</div>
{% endif %}
