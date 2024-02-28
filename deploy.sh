#!/bin/bash

echo "Deploying to test environment..."

# Set environment variables for the script
export DB_SERVER=$DB_SERVER
export DB_NAME=$DB_NAME
export DB_USER=$DB_USER
export DB_PASSWORD=$DB_PASSWORD
export DB_PORT=$DB_PORT
export DB_CONNECTION_LIMIT=$DB_CONNECTION_LIMIT

# Update app.properties with the secrets
echo "Updating app.properties..."
echo "db.server=$DB_SERVER" > test/backend/server/config/app.properties
echo "db.name=$DB_NAME" >> test/backend/server/config/app.properties
echo "db.user=$DB_USER" >> test/backend/server/config/app.properties
echo "db.password=$DB_PASSWORD" >> test/backend/server/config/app.properties
echo "db.port=$DB_PORT" >> test/backend/server/config/app.properties
echo "db.connectionLimit=$DB_CONNECTION_LIMIT" >> test/backend/server/config/app.properties

# Add other credentials if needed

echo "Deployment to test environment completed."
