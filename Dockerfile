FROM python:3.8

WORKDIR /app

COPY ./requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
COPY ./ ./  

CMD ["source","virtenv/bin/activate"]

CMD [ "python","manage.py","runserver", "0.0.0.0:8000"]

