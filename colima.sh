colima stop

colima start \
    --cpu 4 \
    --memory 8 \
    --mount-type 9p \
    --mount $(PWD)/dags:w \
    --mount $(PWD)/logs:w \
    --mount $(PWD)/plugins:w

docker-compose up airflow-init

docker-compose up
