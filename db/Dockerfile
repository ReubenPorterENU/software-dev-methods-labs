# Start from the official MySQL 8 image
FROM mysql:8.0
# Work from the tmp folder
WORKDIR /tmp
# Copy the SQL and data files into the container
COPY test_db/*.sql /tmp/
COPY test_db/*.dump /tmp/
# Anything in this folder runs automatically when MySQL first starts
COPY test_db/employees.sql /docker-entrypoint-initdb.d
# Set the root password
ENV MYSQL_ROOT_PASSWORD=example
# Allow connections from other containers
ENV MYSQL_ROOT_HOST=%