FROM python:3.6
RUN pip install --no-cache-dir --requirement /restful_python_2_01_01/Flask01/requirements.txt && useradd -ms /bin/bash admin
USER admin
WORKDIR /app
COPY app /app
CMD ["python", "service.py"]