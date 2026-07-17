---
layout: default
title: Projects
---
<!--
  HOW TO ADD A PROJECT
  1) Create _projects/<name>.md  (front matter: title_en, title_ko, desc_en,
     desc_ko, thumb, order) + a markdown body (text, images, videos).
  2) Drop a SQUARE thumbnail at assets/img/projects/<name>.png
  The list renders every _projects/*.md automatically.

  UX: collapsed = a vertical list of cards. Open one and the list shrinks to a
  left sidebar (Finder-style) while the chosen project's body fills the detail
  pane; click any item in the sidebar to switch, or "All projects" to go back.
-->

<div align="center">

<h1><span class="lang-en">Projects</span><span class="lang-ko">프로젝트</span></h1>

</div>

<div class="projects">
{% assign items = site.projects | sort: 'order' %}
<aside class="p-sidebar">
<button class="p-back" type="button"><span class="lang-en">← All projects</span><span class="lang-ko">← 전체 목록</span></button>
<ul class="p-list">
{% for p in items %}
<li class="p-item" data-idx="{{ forloop.index0 }}">
<button class="p-head" type="button">
<img class="p-thumb" src="{{ p.thumb | relative_url }}" alt="" />
<span class="p-meta">
<span class="p-title"><span class="lang-en">{{ p.title_en }}</span><span class="lang-ko">{{ p.title_ko | default: p.title_en }}</span></span>
<span class="p-desc"><span class="lang-en">{{ p.desc_en }}</span><span class="lang-ko">{{ p.desc_ko | default: p.desc_en }}</span></span>
</span>
</button>
</li>
{% endfor %}
</ul>
</aside>
<div class="p-detail">
{% for p in items %}
<article class="p-panel" data-idx="{{ forloop.index0 }}">
{{ p.content | markdownify }}
</article>
{% endfor %}
</div>
</div>

{% if site.projects.size == 0 %}
<div class="maintenance">
<p class="maintenance-title"><span class="lang-en">No projects yet</span><span class="lang-ko">아직 프로젝트가 없습니다</span></p>
</div>
{% endif %}

<script>
  (function () {
    var root = document.querySelector('.projects');
    if (!root) return;
    var items = root.querySelectorAll('.p-item');
    var panels = root.querySelectorAll('.p-panel');
    var back = root.querySelector('.p-back');

    function select(idx) {
      root.classList.add('reading');
      for (var i = 0; i < items.length; i++) {
        items[i].classList.toggle('active', items[i].getAttribute('data-idx') === idx);
      }
      for (var j = 0; j < panels.length; j++) {
        panels[j].classList.toggle('active', panels[j].getAttribute('data-idx') === idx);
      }
    }
    function reset() {
      root.classList.remove('reading');
      for (var i = 0; i < items.length; i++) items[i].classList.remove('active');
      for (var j = 0; j < panels.length; j++) panels[j].classList.remove('active');
    }

    for (var k = 0; k < items.length; k++) {
      items[k].querySelector('.p-head').addEventListener('click', function () {
        select(this.parentNode.getAttribute('data-idx'));
      });
    }
    if (back) back.addEventListener('click', reset);
  })();
</script>
