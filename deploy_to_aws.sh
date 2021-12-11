echo 'Starting to Deploy...'
ssh ec2-user@3.16.232.152 "
        sudo docker image prune -f 
        cd sbeltrana/atsea-sample-shop-app
        sudo docker-compose down
        git fetch origin
        git reset --hard origin/main  &&  echo 'You are doing well'
        sudo docker-compose up --build -d
        "
echo 'Deployment completed successfully'