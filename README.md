# MailChat database

Mail DB is a database created in Docker and hosted in a Docker image repository. With this, the image can be accessed and utilized.

## Run 
In order to run the database, it is necessary to have Docker installed on your operating system. If you don't have it installed, you can use the Docker Hub platform to run the database files.

### Requirements for Docker
  - Docker installation
  -  PC with internet access
  - Virtualization enabled on your PC

### Requirements for Docker Hub
  - PC with internet access

### Run Docker
To run the application using Docker, follow these steps:

  1. Create and add the environment variables in the ".env" file.

  1. Navigate to the "school" directory of the project in a terminal.

    ``` bash
    cd SQL-db-mailchat
    ```
  2. Execute the following command to start the Docker containers.
  
    ```
    docker-compose up -d
    ```
    
  3. Access the MySQL bash.
  
    `bash
      docker exec -it <namecontainer> bash -c "mysql -h localhost -u admin -p "
    `
    
  5. Enter the password when prompted, and you will be able to access the database to verify that the tables have been created.

### Run Dockerfile or Docker hub
To run the application using Dockerfile, follow these steps:

  1. Go to the Docker Hub page and log in.

  2. Once logged in, execute the following command.
  
    ```
    docker run -d --name container-pruev --env-file ./.env angel5572/mailchat:last
    ```
    
  3. Run the container with the image dbmain.
  
    ``` bash
      docker exec -it container-pruev bash -c "mysql -h localhost -u admin -p "
    ```
    
  5. Enter the password when prompted, and you will be able to access the database to verify that the tables have been created.

## Licence
`
licence
`
