FROM tomcat
COPY /home/ec2-user/.jenkins/workspace/target/*.war $CATALINA_HOME/tomcat/webapps
CMD $CATALINA_HOME/bin/startup.sh
