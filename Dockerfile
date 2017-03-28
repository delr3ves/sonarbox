FROM java:8-jdk
ADD scripts /app
RUN cd /app && ./download-sonar-runner.sh
ADD config/sonar-runner.properties /app/sonar-runner/conf/sonar-runner.properties
ENV SONAR_RUNNER_HOME=/app/sonar-runner
ENV PATH=$SONAR_RUNNER_HOME/bin:$PATH

WORKDIR /code
