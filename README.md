# Marco Giometti — academic website

This repository contains the Quarto source for <https://mgiomett.github.io>. It is a one-page migration of the current Google Sites website.

## Repository structure

- `index.qmd` — all page content and research entries.
- `_quarto.yml` — site metadata, navigation, rendering, and footer configuration.
- `styles.css` — restrained academic styling and responsive rules.
- `images/profile/` — profile photograph.
- `images/site/` — favicon and future site-level images.
- `files/cv/` — public CV.
- `files/papers/`, `files/slides/`, `files/discussions/` — public research materials.
- `.github/workflows/publish.yml` — automatic GitHub Pages deployment.

## Preview locally

Install [Quarto](https://quarto.org/docs/get-started/), then run:

```bash
quarto preview
```

Quarto prints a local URL and refreshes the preview when source files change.

## Render

```bash
quarto render
```

The generated website is written to `_site/`. That directory is ignored by Git and should not be committed.

## Add a research entry

In `index.qmd`, copy a complete block beginning with `::: {.paper-entry}` and ending with `:::`. Place it in the appropriate subsection, then replace the title, coauthors, status, description, and links. This keeps the page’s markup and spacing consistent.

## Replace the profile image

Replace `images/profile/marco-giometti.jpg` with the new image, retaining the filename, or update both image references in `index.qmd` and `_quarto.yml`. Use an appropriately licensed JPG or PNG and keep the alt text accurate.

## Add or update the CV

The current Google Sites page visually says the CV is available “here,” but its published markup contains no link. Add the intended public file as `files/cv/marco-giometti-cv.pdf`, then change the CV link in `index.qmd` from `files/cv/README.md` to `files/cv/marco-giometti-cv.pdf`. Remove `files/cv/README.md` after doing so.

## Add papers and slides

Place public files in the relevant `files/` directory and link to them with a repository-relative path, for example:

```markdown
[Paper](files/papers/example-paper.pdf) | [Slides](files/slides/example-slides.pdf)
```

Only upload a paper, appendix, slide deck, discussion, code archive, or replication package if it is intended for unrestricted public distribution. Preserve external links when redistribution rights are unclear.

## Deployment

Every push to `main` runs `.github/workflows/publish.yml`. The workflow installs Quarto, renders the site, adds `_site/.nojekyll`, uploads `_site` as a GitHub Pages artifact, and deploys it. In the repository settings, set **Pages → Build and deployment → Source** to **GitHub Actions**.

## Public-repository safety

Do not upload private drafts, referee reports, restricted or licensed datasets, confidential replication inputs, student information, unpublished discussions without permission, API keys, passwords, or personal documents not intended for public release. Check PDFs for comments, tracked changes, and hidden metadata before publishing.

