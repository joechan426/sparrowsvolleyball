# CLAUDE.md — sparrowsvolleyball

## Language: English only for anything users can see

Every string a visitor can read on this site must be **English only — no Chinese**.
That covers page copy, headings, button labels, alt text, error messages, `<title>`,
and any text rendered from `content/`. This applies to all files in this repository.

Chinese is fine in places visitors never see: commit messages, pull request
descriptions, and replies to Joe.

## Current state of the site

- The site root (`index.html`) is a **redirect page**: visitors are sent straight to
  the new scoring system at <https://sparrowsweb.netlify.app/tournaments>.
- The legacy Google Sheets based scoring system has **not** been deleted. Its full,
  unmodified source lives in `legacy-scoring.html` in the repository root. Keep it at
  the root — it uses relative `content/...` asset paths that break if it is moved into
  a subfolder.
- To restore the legacy system, swap the two files back (see `README.md`).

## Deployment

The same repository root is served by both:

- GitHub Pages — <https://joechan426.github.io/sparrowsvolleyball/>
- Netlify — <https://sparrowsliveresults.netlify.app/>

Any change to the root affects both, so check both after merging.
