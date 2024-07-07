FROM python:3.12-slim

ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sSL https://install.python-poetry.org | python3 - && \
    apt-get clean && \
    export PATH="/root/.local/bin:$PATH"

ENV PATH="/root/.local/bin:$PATH"

WORKDIR /backend

COPY . .

COPY .env .env

RUN poetry install

EXPOSE 8000

ENTRYPOINT ["poetry", "run", "bash"]

CMD ["-c", "poetry run ./prestart.sh && uvicorn app.main:app --reload --host 0.0.0.0 --port 8000"]
