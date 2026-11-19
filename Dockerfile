FROM python:3.12-slim

WORKDIR /app

ENV PUBLIC_DEMO=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY drl.py agent_systems.json ./

EXPOSE 7860

CMD ["streamlit", "run", "drl.py", "--server.address=0.0.0.0", "--server.port=7860", "--server.headless=true"]
