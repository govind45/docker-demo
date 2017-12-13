FROM python:2.7
COPY app.py /app.py
RUN pip install -U pip setuptools
RUN pip install flask redis datetime MySQL-python
CMD python /app.py


