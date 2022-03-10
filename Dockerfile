FROM python:3.9.6-slim

# install equirements before copying application code to optimize layer caching
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install black
RUN pip install -r requirements.txt

# ENTRYPOINT ["python"]

# # run with -u to disable buffered output and log print statements
# CMD ["-u", "./main.py", "--production", "true"]