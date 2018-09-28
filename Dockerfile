FROM nginx:alpine
LABEL maintainer="janet.huacahuasi.garcia@gmail.com"
WORkDIR /app
COPY ./preguntas.md ./intro.md ./