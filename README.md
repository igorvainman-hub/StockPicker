# Stock Picker

A standalone CrewAI project that finds trending companies in a selected sector, researches them, and picks the best stock candidate for investment.

## Features

- finds companies trending in the news
- researches them with AI agents
- compares their investment potential
- selects the best candidate
- saves output to the `output` directory
- optionally sends a push notification via Pushover

## Requirements

- Python 3.13
- OpenAI API key
- Optional: Pushover credentials for push notifications

## Setup

1. Clone the project
2. Create a virtual environment:

```powershell
py -3.13 -m venv .venv
.\.venv\Scripts\Activate.ps1
```

3. Install dependencies:

```powershell
python -m pip install -U pip
python -m pip install -e .
```

4. Create a local `.env` file from the template:

```powershell
Copy-Item .env.example .env
```

5. Add your own keys to `.env`:

```env
OPENAI_API_KEY=your_openai_key_here
PUSHOVER_USER=your_pushover_user
PUSHOVER_TOKEN=your_pushover_token
```

## Run

```powershell
stock_picker
```

Or run directly:

```powershell
.\run.ps1
```

## Notes

- Never commit `.env` or `.venv`
- The project was designed to be run with personal credentials from the environment
- The generated output is stored in the `output` folder
