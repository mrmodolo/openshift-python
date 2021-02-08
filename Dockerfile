FROM python:3

RUN mkdir /opt/app

ADD app /opt/app/

# Adding the following to your Dockerfile sets the directory and 
# file permissions to allow users in the root group to access 
# them in the built image! Because the container user is always a 
# member of the root group, the container user can read and write these files.
RUN chgrp -R 0 /opt/app && \
    chmod -R g+rwX /opt/app

WORKDIR /opt/app

RUN pip install -r /opt/app/requirements.txt

EXPOSE 5000
CMD ["python", "/opt/app/app.py"]
