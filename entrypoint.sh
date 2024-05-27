#!/bin/sh

# Download the PostgreSQL JDBC driver
DRIVER_PATH=/drivers/postgresql-42.2.5.jar

if [ ! -f "$DRIVER_PATH" ]; then
  echo "Downloading driver $DRIVER_PATH..."
  wget -O  https://jdbc.postgresql.org/download/postgresql-42.2.5.jar
else
  echo "Existing Driver $DRIVER_PATH found, skipping download."
fi

# Run SchemaSpy with the provided arguments
schemaspy -t $SCHEMASPY_DBTYPE -db $SCHEMASPY_DBNAME -host $SCHEMASPY_HOST -port $SCHEMASPY_PORT -u $SCHEMASPY_USER -p $SCHEMASPY_PASSWORD -debug
