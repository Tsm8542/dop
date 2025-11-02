# 1. Docker version
```
# Syntax:
docker --version
```

# 2. Pulling an image
```
# Syntax:
docker pull <image>

# Example:
docker pull nginx
```

# 3. Building an image
```
# Syntax:
docker build -t <image_name> <source_path>

# Example:
docker build -t myapp:latest .
```

# 4. Listing images
```
# Syntax:
docker images
```

# 5. Removing an image
```
# Syntax:
docker rmi <image>

# Example:
docker rmi nginx
```

# 6. List running Docker containers
```
# Syntax:
docker ps
```

# 7. List all available Docker containers
```
# Syntax:
docker ps -a
```

# 8. Running a docker container on a specified port using nginx.
```
# Syntax:
docker run -d -p <port> nginx

# Example:
docker run -d -p 8080:80 nginx
```

# 9. Running a docker image in interactive mode
```
# Syntax:
docker run -it <image>

# Example:
docker run -it ubuntu bash
```

# 10. Fetching Docker information
```
# Syntax:
docker info
```

# 11. Listing networks
```
# Syntax:
docker network ls
```

# 12. List Docker volumes
```
# Syntax:
docker volume ls
```

# 13. Display detailed information about an image/container.
```
# Syntax:
docker inspect <image>

# Example:
docker inspect nginx
```