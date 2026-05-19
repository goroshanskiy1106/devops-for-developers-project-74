FROM node:20.12.2

WORKDIR /app

# Копируем файлы зависимостей (если они есть в корне или app)
COPY app/package*.json ./

# Устанавливаем зависимости
RUN npm install

# # Копируем остальной код
COPY app/ .

# По умолчанию запускаем тесты (как просит задание)
CMD ["make", "test"]