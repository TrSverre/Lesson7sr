FROM ubuntu:18.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD app.py /opt/webapp/app.py
WORKDIR /opt/webapp/
EXPOSE 5000
CMD ["python", "app.py"]