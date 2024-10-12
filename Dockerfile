FROM python:3.10

WORKDIR /voiceapi

COPY . /voiceapi
COPY requirements.txt /voiceapi

RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE 8088
CMD  ["python", "app.py"]
