Use $ pip install -r requirements.txt to install requirements

Below are some updated versions requirement :

Flask==2.2.3
Jinja2==3.1.2
Werkzeug==2.2.3
gunicorn==20.1.0
gevent


ENTRYPOINT COMMAND:

ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0

Explaination:

The command ENTRYPOINT specifies the command that will be executed when a Docker container is started based on the image.

In this case, the command being executed is FLASK_APP=/app/app.py flask run --host=0.0.0.0. Here's what each part of that command means:

FLASK_APP=/app/app.py: This sets an environment variable called FLASK_APP to /app/app.py, which specifies the location of the Flask application file within the container.
flask run: This is the command to start the Flask development server.
--host=0.0.0.0: This specifies the network interface that the server should bind to. In this case, it's binding to all available network interfaces (0.0.0.0), which means that the server will be accessible from outside the container.
So overall, this command sets up the environment variable for the Flask app and starts the development server, making the app accessible from outside the Docker container.
