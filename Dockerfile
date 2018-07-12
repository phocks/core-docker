
FROM jamesdbloom/docker-java6-maven

RUN apt-get update \
  && apt-get install -y libxi6 libxtst6 libxrender1

RUN wget http://nucwed.aus.aunty.abc.net.au/editor/webstart/editor.jnlp

ENTRYPOINT ["/bin/bash"]

