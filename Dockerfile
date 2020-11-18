# Use 3.7 because setup.py currently specifies python_requires='>=3.5, <3.8'
FROM python:3.7-buster

RUN mkdir -p /src
WORKDIR /src
COPY . /src/

RUN pip install -r requirements.txt .
RUN python setup.py install

ENTRYPOINT ["/src/build/scripts-3.7/riskquant"]
