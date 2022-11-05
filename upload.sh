if [ $1 == "movies" ]; then
    docker exec -it rclone rclone copy --verbose --transfers 50 --checkers 20 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s /downloads/Movies jellyfin:/Movies
fi

if [ $1 == "shows" ]; then
docker exec -it rclone rclone copy --verbose --transfers 50 --checkers 20 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s /downloads/Shows jellyfin:/Shows
fi
