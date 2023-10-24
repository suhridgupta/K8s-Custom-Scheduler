FROM python:3.7
ENV PYTHONUNBUFFERED=1
RUN pip install kubernetes
COPY custom-scheduler.py /custom-scheduler.py
CMD python /custom-scheduler.py