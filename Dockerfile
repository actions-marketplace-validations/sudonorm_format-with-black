FROM python:3.10.9-alpine3.17

LABEL maintainer="Sudonorm"
LABEL repository="https://github.com/sudonorm/format-with-black"
LABEL homepage="https://github.com/sudonorm/format-with-black"

LABEL com.github.actions.name="format-with-black"
LABEL com.github.actions.description="Automating Python formatting using Black"
LABEL com.github.actions.icon="check-circle"
LABEL com.github.actions.color="blue"

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]