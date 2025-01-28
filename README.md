# small-docker-jupyterlab
Instructions to setup a container for access to jupyter application across LAN. 

# To run it replicate following steps:

## Schematics
1. Clone the repository
2. Change the directory into cloned one
3. Build the image
4. Run the container
5. Access token to configure login password

## Commands
1. `git clone https://github.com/ArmoredStone/small-docker-jupyterlab.git`
2. `cd small-docker-jupyterlab`
3. `docker build -t small-docker-jupyterlab .`
4. ```
   docker run -d --name small-docker-jupyterlab \
   -p 9999:9999 \
   -v jupyter-work:/home/jupyter \
   small-docker-jupyterlab
   ```
5. `docker logs small-docker-jupyterlab`

Feel free to contribute best practices around running applications in Docker containers.
