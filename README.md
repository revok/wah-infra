# We are happy Infrastructure

This project bundles the API, frontend and mongo into a single docker-compose project.

# Setup

First, make sure you have 'docker-compose' installed on your system, then copy the env.dist file to a file named '.env' and fill it in with the required parameters. (you can probably leave everything as it is.)


Next set up the infrastructure by running the following scripts (found inside directory 'scripts'):

```
update_projects.sh # check out master branch of the frontend/backend git submodules.
```

if you can't run bash scripts, then do this instead:

```
git fetch && git pull
git submodule update --init --recursive --remote # check out master branches.
```


Then start the containers by running `docker-compose up`. This will also create some dummy data. 

You can now (hopefully) view the frontend at http://localhost:8080 and log in with username `test` and password `test`.

# Container access
If you need to get into a container, you can do that with `docker exec -it [container] /bin/bash` (or `docker exec -it [container] /bin/sh` if it's an alpine system).


## Create a user

```
curl -X POST \
  http://localhost:8080/user/new \
  -H 'Content-Type: application/json' \
  -d '{
 "username": "admin",
 "password": "admin"
}'
```