FROM python:3.6
RUN git clone https://github.com/joeyespo/grip /grip
WORKDIR /grip
RUN pip install -r requirements.txt
ADD favicon.ico /grip/grip/static/favicon.ico
RUN python setup.py install
ENTRYPOINT ["grip"]
CMD ["-h"]
