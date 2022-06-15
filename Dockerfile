FROM jboss/keycloak:15.1.1

COPY ./deployments/keycloak-discord-ear-0.3.1.ear /opt/jboss/keycloak/standalone/deployments/keycloak-discord-ear-0.3.1.ear
COPY ./deployments/keycloak_http_webhook_provider-jar-with-dependencies.jar /opt/jboss/keycloak/standalone/deployments/keycloak_http_webhook_provider-jar-with-dependencies.jar
COPY ./startup-scripts/ /opt/jboss/startup-scripts/

CMD ["-b", "0.0.0.0"]
