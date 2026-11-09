podman pod create --name mc-pod-1 -p 25565:25565
podman container run -d --pod mc-pod-1 --name mc-server-1 --env-file envs/mc-pod-1.env -v ./data:/data:Z docker.io/itzg/minecraft-server:latest
podman container run -d --pod mc-pod-1 --name mc-backup --env-file envs/mc-backup.env -v ./data:/data:ro,Z -v ./mc-backups:/backups:Z docker.io/itzg/mc-backup
