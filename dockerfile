FROM python
WORKDIR /flask-pytest-example
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip freeze
COPY . .
RUN pytest /flask-pytest-example/tests/test_routes.py
EXPOSE 5000
CMD ["python", "-u", "app.py"]
