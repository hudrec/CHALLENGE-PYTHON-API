FROM python:3.9

WORKDIR /app
COPY ./backend_test/. /app/backend_test

# Install poetry:
RUN pip install --upgrade pip
RUN pip install poetry

# Copy in the config files:
COPY pyproject.toml poetry.lock ./
# Copy in the config files:
COPY ./docker/start.sh /app/start.sh
# Install only dependencies:
RUN poetry install --no-root --only main

# Copy in everything else and install:
RUN poetry install --no-dev
CMD ["./start.sh"]
