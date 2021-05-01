FROM python
WORKDIR /flask-pytest-example
COPY . .
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip freeze
#RUN chmod 777 tests
#RUN pytest tests/
CMD ["python", "-u", "app.py"]

