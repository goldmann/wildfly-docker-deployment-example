FROM jboss/wildfly
ADD node-info.war /opt/wildfly/standalone/deployments/
