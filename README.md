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

