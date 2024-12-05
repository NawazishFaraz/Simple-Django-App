#Base Image
FROM python:3.7

#working directory
WORKDIR /app


#copy code
COPY . /app


#install library

RUN pip install -r requirement.txt

#migrations

RUN python cool_counters/manage.py migrate


#run app
CMD ["python", "cool_counters/manage.py", "rumserver", 0.0.0.0:8000"]
