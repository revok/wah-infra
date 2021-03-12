# We are happy Infrastructure

# Installation

Copy the env.dist file to a file named '.env' and fill it in with the required parameters.
Next set up the infrastructure by running the following scripts (found inside directory 'scripts'):

```
update_projects.sh # check out master branch of the frontend/backend git submodules.
```

To start the containers, run `docker-compose up`.

# Container access
If you need to get into a container, you can do that with `docker exec -it [container] /bin/bash` (or `docker exec -it [container] /bin/sh` if it's an alpine system).
