FROM dolfinx/dolfinx:stable

WORKDIR /app
COPY requirements.txt .
RUN python3 -m pip install --upgrade pip && pip3 install --no-cache-dir -r requirements.txt

COPY handler.py .
CMD ["python3", "handler.py"]
