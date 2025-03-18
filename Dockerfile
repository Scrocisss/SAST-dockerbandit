FROM alpine

MAINTAINER A.Davarski

# Установка необходимых пакетов
RUN apk add --no-cache python3 py3-pip bash

# Создание и активация виртуального окружения
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Обновление pip и установка bandit внутри виртуального окружения
RUN pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -U bandit

# Установка рабочей директории
WORKDIR /app

# Копирование вашего кода в контейнер (если нужно)
# COPY . /app

# Команда по умолчанию (если нужно)
# CMD ["bandit", "-r", "/app"]

