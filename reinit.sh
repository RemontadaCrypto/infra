ENV_HOST=local.remontadacrypto.com
export ENV_HOST

docker container rm -f $(docker container ls -aq)
# docker volume rm -f app_home_data elastic_data mysql_data portainer_data

# create docker volumes outside git tracked dir
#HOME=`pwd`/../..
export HOME=/Users/omoniyiilesanmi/Documents/Projects/JAYJAV_GIT/RemontadaCrypto/infrastructure/development


# rm -rf ${HOME}/DATA_HOME/PHP_APACHE_DATA
# rm -rf ${HOME}/DATA_HOME/ELASTIC_DATA
# rm -rf ${HOME}/DATA_HOME/MY_SQL_DATA

# mkdir -p ${HOME}/DATA_HOME/PHP_APACHE_DATA
# mkdir -p ${HOME}/DATA_HOME/MY_SQL_DATA
# mkdir -p ${HOME}/DATA_HOME/APP_HOME


# cp -r ../APP_HOME.demo/. ${HOME}/DATA_HOME/APP_HOME
# chmod -R  7777 ${HOME}/DATA_HOME/APP_HOME


docker network remove remontadacrypto-backend remontadacrypto-frontend

docker network create remontadacrypto-backend --driver bridge
docker network create remontadacrypto-frontend --driver bridge

# docker volume create --driver local \
#     --opt type=none \
#     --opt o=bind \
#     --opt device=${HOME}/DATA_HOME/APP_HOME \
#     app_home_data

# docker volume create --driver local \
#      --opt type=none \
#      --opt o=bind \
#      --opt device=${HOME}/DATA_HOME/PHP_APACHE_DATA \
#      apache_data

#  docker volume create --driver local \
#      --opt type=none \
#      --opt o=bind \
#      --opt device=${HOME}/DATA_HOME/MY_SQL_DATA \
#      mysql_data

