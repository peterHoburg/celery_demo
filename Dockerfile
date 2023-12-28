FROM python:3.11

ARG POETRY_HOME=/etc/poetry
ENV PATH="${POETRY_HOME}/bin:${PATH}"
RUN curl -sSL https://install.python-poetry.org | python3 -


COPY pyproject.toml poetry.lock ./
RUN poetry export -f requirements.txt --output requirements.txt
RUN pip install -r requirements.txt



WORKDIR /opt
COPY . .

ENV PYTHONPATH=/opt/src:$PYTHONPATH
