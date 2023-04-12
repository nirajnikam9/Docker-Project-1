FROM python
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0

