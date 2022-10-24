ARG PORT TOKEN
FROM fnndsc/ubuntu-python3
USER root
RUN apt-get update \
    && apt-get install -y curl gnupg screen wget git bash
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
