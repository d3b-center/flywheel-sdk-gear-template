FROM python:3.9.7-slim-buster

ENV FLYWHEEL="/flywheel/v0"
WORKDIR ${FLYWHEEL}

# Install main deps
COPY requirements.txt $FLYWHEEL/
RUN pip install -r requirements.txt

COPY run.py manifest.json $FLYWHEEL/
COPY fw_gear_functions ${FLYWHEEL}/fw_gear_functions 

# Configure entrypoint
RUN chmod a+x $FLYWHEEL/run.py
ENTRYPOINT ["python","/flywheel/v0/run.py"]
