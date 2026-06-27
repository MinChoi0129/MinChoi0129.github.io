---
layout: default
title: Projects
---
<!--
  Projects page. Each project is a <details> card:
  thumbnail + title + one-line description; click to preview its PDF inline.
  To add a project, copy one .project-card block, drop a thumbnail in
  assets/img/projects/ and the PDF in assets/pdf/, and update the text/links.
-->

<div align="center">

<h1>Projects</h1>

</div>

<div class="project-list">

<details class="project-card">
<summary>
<img class="project-thumb" src="{{ '/assets/img/projects/project_1.png' | relative_url }}" alt="" />
<span class="project-meta">
<span class="project-title">AR &amp; Mixed-Reality Interaction</span>
<span class="project-desc">Shrunken Reality, low-cost mobile AR interaction (ETRI), and the J.A.R.V.I.S digital-twin system.</span>
<span class="project-cue">Click to preview the PDF</span>
</span>
</summary>
<div class="project-viewer">
<iframe src="{{ '/assets/pdf/project_1.pdf' | relative_url }}#toolbar=0&amp;navpanes=0&amp;view=FitH" title="AR &amp; Mixed-Reality Interaction" loading="lazy"></iframe>
<a class="pdf-open" href="{{ '/assets/pdf/project_1.pdf' | relative_url }}" target="_blank" rel="noopener">Open in a new tab</a>
</div>
</details>

</div>
