FROM python:3.11
WORKDIR /app
RUN git clone https://github.com/NousResearch/hermes-agent.git .
RUN pip install --no-cache-dir --upgrade pip setuptools wheel
RUN pip install --no-cache-dir .

# Render ka dummy server aur Rio dono ek sath automatically start honge
CMD sh -c "python -m http.server $PORT & hermes"
