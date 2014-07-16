# Example deployment of applications using the `jboss/wildfly` Docker image

This example shows how to deploy a war file using the [`jboss/wildfly` image](https://registry.hub.docker.com/u/jboss/wildfly/).

## Manual instructions

1. Create `Dockerfile` with following content:

        FROM jboss/wildfly
        ADD node-info.war /opt/wildfly/standalone/deployments/
2. Place your `node-info.war` file in the same directory as your `Dockerfile`.
3. Run the build with `docker build --tag=wildfly-app .`
4. Run the container with `docker run -it wildfly-app`. Application will be deployed on the container boot.
