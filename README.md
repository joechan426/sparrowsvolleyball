# Sparrows Volleyball Schedule

This repository contains a simple static web site used to publish and manage the Sparrows volleyball schedule. Match information lives in the `content/matches` folder and can be edited through Netlify CMS.

## Running the site locally

Any static file server can host the site. From the repository root run:

```bash
python3 -m http.server
```

Then open `http://localhost:8000` in your browser to view `index.html`.

## Adding match data via Netlify CMS

1. With the local server running (or after deployment), navigate to `/src/admin/`.
2. Log in using your Netlify Identity or GitHub credentials.
3. Under **Volleyball Matches**, click **New** to create a match entry.
4. Fill in the date, teams, time, court and duty team fields and save.

The CMS commits the new file under `content/matches/` so the schedule can be updated automatically.

## Live Results

> **Retired.** Tournament scoring has moved to
> <https://sparrowsweb.netlify.app/tournaments>. The site root (`index.html`)
> now shows a notice pointing users there.

The legacy Google Sheets based scoring system has **not** been deleted — its
full, unmodified source lives in `legacy-scoring.html` in the repository root
(kept at the root so all `content/...` asset paths keep working). It stays
reachable at:

- <https://joechan426.github.io/sparrowsvolleyball/legacy-scoring.html>
- <https://sparrowsliveresults.netlify.app/legacy-scoring.html>

### Restoring the legacy system

Swap the two files back and push:

```bash
git mv index.html notice.html
git mv legacy-scoring.html index.html
git commit -m "Restore legacy tournament scoring system"
git push
```

(Or just rename `legacy-scoring.html` back to `index.html` in the GitHub web
editor.) The same instructions are repeated in a comment at the top of
`index.html`.

Live standings and score submissions in the legacy page are driven by the same
Google Sheets document used for the schedule. That page calls a Google Apps
Script (`apiUrl` in `legacy-scoring.html`) to fetch the latest results and to
record score updates, so no manual updates to `content/results.json` are
required.

