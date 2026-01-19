FROM quay.io/fenicsproject/stable:latest

WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY handler.py .
CMD ["python3", "handler.py"]
