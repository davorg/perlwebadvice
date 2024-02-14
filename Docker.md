# Editing the site using Docker

It is also possible to work on the site using Docker. The process is as
follows:

* Build the Docker image 
    docker build . -t perlwebadvice

* Run the Docker container 
    docker run -p7007:7007 -v$PWD:/perlwebadvice perlwebadvice

* You can then see a local version of the site at http://localhost:7007/

* In a different command terminal run `docker ps` to see the name of your container

* When you have changed something, you can rebuild the site by running 
    docker exec YOUR_CONTAINER_NAME aphra build

* Your new version of the site will appear when you refresh http://localhost:7007/

* To close down the Docker container, run 
    docker stop YOUR_CONTAINER_NAME
