FROM python:3-slim

RUN  apt update && apt  install python3-pip -y  &&  apt install git -y &&  pip3 install --upgrade pip &&  pip install Django==4.2.2
COPY . .
#RUN git clone https://github.com/shreys7/django-todo.git && cd django-todo
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
EXPOSE 8000
#RUN python3 manage.py runserver
CMD ["python3", "manage.py","runserver","0.0.0.0:8000"]
