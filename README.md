
  

# We are happy Infrastructure

  

  

This project bundles the API, frontend and mongo into a single docker-compose project.

  

  

# Setup

  

- Make sure you have [docker-compose](https://docs.docker.com/compose/install/) installed on your system.

- Copy the env.dist file to a file named '.env' and fill it in with the required parameters. (you can probably leave everything as it is.)

- Run `update_projects.sh` (found inside directory 'scripts') to check out the main branches of the git submodules. If you can't run bash scripts (boo!) then do this instead:

  

  

```

  

git fetch && git pull

  

git submodule update --init --recursive --remote # check out master branches.

  

```

  
  
  

- Now start the containers by running `docker-compose up`. This will also create some dummy data.

  

You can now (hopefully) view the frontend at http://localhost:8080 and log in with username `test` and password `test`.

  

  

# Container access

  

If you need to get into a container, you can do that with `docker exec -it [container] /bin/bash` (or `docker exec -it [container] /bin/sh` if it's an alpine system).

  

  

## Create a user

  

If you need to create a user (you will need this to login in the frontend), you can send a POST request to `[api:port]/user/new` to register one through the API. Example:

  
  
  

```
curl -X POST http://localhost:8080/user/new -H 'Content-Type: application/json' -d '{ "username": "admin", "password": "admin" }'
```

  
  
  

## Modify dummy data

  

If you would like to insert different dummy data in the mongodb container, remove the 'data' folder if it's there (this folder is automatically created after setting up the docker infra) and edit the file mongo-init.sh (found in directory 'docker').

  

Then run `docker-compose up`. The fact that the data folder is missing will cause mongodb to run this script during setup.