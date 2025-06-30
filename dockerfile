FROM python:3.11

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y default-mysql-client \
    && pip install -r requirements.txt

RUN chmod +x wait-for-mysql.sh

EXPOSE 5000

CMD ["./wait-for-mysql.sh"]
