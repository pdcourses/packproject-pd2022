echo "containers:"
docker-compose -f docker-compose-dev.yaml up
docker-compose ps

#run migrations 
# при условии существования .sequelizerc
echo "Running migrations"
docker exec -it packproject_server-dev_1 sequelize db:migrate

#seeds
echo "Running seeds"
docker exec -it packproject_server-dev_1 sequelize db:seed:all

echo "Done!"