Run the command below in docker terminal:

docker run -it -v %cd%/cypress-ci:/e2e -w /e2e cypress/included:12.9.0

*or* 

build the image in the dockerfile

REM: need to use the dockerfile to copy to /
if we use the commandline it doesn;t allow it

Command explanation: 

This command is used to run a Docker container with the Cypress image version 12.9.0. Here’s what each flag does:

-it: This flag is used to run the container in interactive mode and allocate a pseudo-TTY.
-v %cd%:/e2e: This flag is used to mount the current working directory (represented by %cd%) to the /e2e directory inside the container. This allows you to share files between your host machine and the container.
-w /e2e: This flag is used to set the working directory inside the container to /e2e.
cypress/included:12.9.0: This is the name of the Docker image that you want to run

-----------------

To execute commands, execute as below:

docker run --entrypoint "/bin/sh" cypressci:latest -c "ls /e2e"
Output: 1-getting-started

docker run --entrypoint "/bin/sh" cypressci:latest -c "cypress run"
Output: the test run