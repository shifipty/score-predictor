FROM python:3.8
WORKDIR /opt/student_scores
COPY requirements.txt .
RUN pip3.8 install -r requirements.txt
COPY model.py .
COPY student_scores.csv .
RUN python3.8 model.py
COPY app.py .
ENTRYPOINT python3.8 app.py
