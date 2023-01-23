docker build -t kasmweb/terminal:1.12.0-root .

docker inspect --format='{{.Config.Cmd}}' kasmweb/terminal:1.12.0-anki2
docker inspect --format='{{.Config.EntryPoint}}' kasmweb/terminal:1.12.0-anki2