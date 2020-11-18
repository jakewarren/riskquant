# Use 3.7 because setup.py currently specifies python_requires='>=3.5, <3.8'
FROM python:3.7-buster

RUN mkdir -p /src
WORKDIR /src
COPY . /src/

RUN pip install -r requirements.txt .
RUN python setup.py install
RUN pip install jupyter

CMD ["jupyter", "notebook", "--port=3000", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
