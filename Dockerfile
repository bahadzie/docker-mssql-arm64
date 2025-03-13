FROM mcr.microsoft.com/azure-sql-edge:1.0.5

USER root

RUN apt-get update && apt-get install -y gnupg2
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/msprod.list
RUN apt-get -y update && apt-get -y install dialog
ENV ACCEPT_EULA=Y
RUN apt-get install -y mssql-tools18 unixodbc-dev
ENV PATH="/opt/mssql-tools18/bin:${PATH}"
