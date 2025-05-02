FROM python:3.9
WORKDIR /opt/student_scores
COPY requirements.txt .
RUN pip3.9 install -r requirements.txt
COPY model.py .
COPY student_scores.csv .
RUN python3.9 model.py
COPY app.py .
ENTRYPOINT python3.9 app.py
