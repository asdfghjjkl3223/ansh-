FROM python:3.11
WORKDIR /app
RUN git clone https://github.com/NousResearch/hermes-agent.git .
RUN pip install --no-cache-dir --upgrade pip setuptools wheel
RUN pip install --no-cache-dir .

# Render ka rule: Server ko $PORT par zinda rakhna zaroori hai
CMD sh -c "python -m http.server $PORT & sleep infinity"
