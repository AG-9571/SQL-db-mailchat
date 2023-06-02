# MailChat database
mail db is an database create en docker y up at repositori of docker images, whit what they be access a the imagen

## Structure
La estructura creada en este projecto es realizada sobre un modelo muchos a muchos.

## Run 
para poder correr la base de datos  es necesaroio tener instalado docker en tu sistema operativo, en caso de no ser asi, puedes utilizar la plataforma de docker hub para correr los archivos de la base de datos.

### Requiret Docker
 - Docker install
 - Pc access a internet
 - tener habilitados la maquina virtual en tu pc

### Requirent docker hub
  - pc access a internet

### Run Docker
To run the application using Docker, follow these steps:

  1. Crea y añade las variavles de entorno en el arechivo ".env".

  1. Navigate to the "school" directory of the project in a terminal.

    ``` bash
    cd SQL-db-mailchat
    ```
  2. Execute the following command to start the Docker containers.
    ```
    docker-compose up -d
    ```
  3. inglesa al mysql bash
    ``` bash
      docker exec -it <namecontainer> bash -c "mysql -h localhost -u admin -p "
    ```
  5. Se te pedira la contraseña y podras entrar a la db para ver que la base de datos y las tablas se encuentran creadas.

### Run Dockerfile or Docker hub
To run the application using Dockerfile, follow these steps:

  1. ingresa en la pagina de docker hub e inicia secion.

  2. una vez iniciada la secion ejecuta el siguiente comando.
    ``` bash
    docker run -d --name container-pruev --env-file ./.env angel5572/mailchat:last
    ```
  3. Run container whith image dbmain
    ``` bash
      docker exec -it container-pruev bash -c "mysql -h localhost -u admin -p "
    ```
  5. Se te pedira la contraseña y podras entrar a la db para ver que la base de datos y las tablas se encuentran creadas.  

## View


## Licence
`
hola mundo
`
