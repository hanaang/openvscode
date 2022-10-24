ARG PORT TOKEN
FROM fnndsc/ubuntu-python3
USER root
RUN apt-get install -y curl screen wget git bash
USER openvscode-server
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
