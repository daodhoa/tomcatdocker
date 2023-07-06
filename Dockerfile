FROM tomcat:8.5-jdk8
ENV TZ="Asia/Bangkok"
RUN groupadd -g 1000 app
RUN useradd -u 1000 -ms /bin/bash -g app app
RUN chown -R app:app /usr/local/tomcat/
USER app
EXPOSE 8080
CMD ["catalina.sh", "run"]
