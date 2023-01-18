# write a dockerfile to build a container image of app.py
# use the python:3.8.10-alpine3.13 image
# copy the app.py file to the container image
# run the app.py file when the container starts

FROM python:3.8.10

ENV PYTHONUNBUFFERED True

COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 8080

CMD ["python3", "app.py"]