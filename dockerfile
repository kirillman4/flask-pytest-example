FROM python
WORKDIR /flask-pytest-example
COPY . .
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pytest /flask-pytest-example/tests/test_routes.py
CMD ["python", "-u", "app.py"]

