FROM python:3.13-slim
WORKDIR /app
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/app.py .
ENV PORT=4242 \
    GREETING="hi gik" \
    STORAGE=sqlite \
    DATA_FILE=/data/counter.db
EXPOSE 8000
CMD ["python", "app.py"]
