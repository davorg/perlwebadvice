# Editing the site using Docker

It is also possible to work on the site using Docker. The process is as
follows:

* Build the Docker image  

        docker build . -t perlwebadvice

* Run the Docker container  

        docker run -p7007:7007 -v$PWD:/perlwebadvice --name perlwebadvice perlwebadvice

* You can then see a local version of the site at http://localhost:7007/

* When you have changed something, you can rebuild the site by running (in a different command line window) 

        docker exec perlwebadvice aphra build

* Your new version of the site will appear when you refresh http://localhost:7007/

* To close down the Docker container, run  

        docker stop perlwebadvice

