FROM python:3.8-slim-buster
#RUN export FLASK_APP=flash.py
WORKDIR /python-docker
RUN python3 -m pip install Flask
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
