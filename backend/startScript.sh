poetry run bash ./prestart.sh

poetry run uvicorn app.main:app --reload --port 8000