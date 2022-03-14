FROM python:3.6
RUN pip install Flask
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
COPY app /app
CMD ["python", "service.py"]