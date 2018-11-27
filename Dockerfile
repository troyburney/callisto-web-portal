#
# Dockerfile for the Callisto Web Portal 
#
FROM httpd

MAINTAINER Troy Burney “troy@softwareshinobi.com”

USER root

ENV webServerFileRoot /usr/local/apache2/htdocs/
RUN rm -rf $webServerFileRoot

COPY ./ $webServerFileRoot

RUN ls -lha $webServerFileRoot

# Expose ports
EXPOSE 80

