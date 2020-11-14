FROM openjdk:8-jdk
ADD ./firing-range/ /root/firing/
RUN ls -la /root/firing/
RUN chmod +x /root/firing/run.sh
RUN /root/firing/run.sh
EXPOSE 8080
WORKDIR /root/firing/app
ENTRYPOINT [ "ant", "runserver" ]