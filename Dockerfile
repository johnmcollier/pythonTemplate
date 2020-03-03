FROM python:3.7-alpine
ADD requirements.txt /code/
WORKDIR /code
RUN pip install -r requirements.txt
ADD . /code
RUN chmod 644 /code/app.py
CMD ["python", "app.py"]
EXPOSE 5000
