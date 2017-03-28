FROM java:8-jdk
ADD scripts /app
RUN cd /app && ./download-sonar-scanner.sh
ADD config/sonar-scanner.properties /app/sonar-scanner/conf/sonar-scanner.properties
ENV SONAR_scanner_HOME=/app/sonar-scanner
ENV PATH=$SONAR_scanner_HOME/bin:$PATH

WORKDIR /code
