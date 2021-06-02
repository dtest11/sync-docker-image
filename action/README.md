# Sync Docker Image to Docker Hub

## Usage

```yaml
name: Sync Docker Image to Docker Hub

on:
  workflow_dispatch: # 手动触发

jobs:
  sync-to-dockerhub:
    name: Sync Docker Image to Docker Hub
    runs-on: ubuntu-latest
    steps:
    - name: sync
      uses: ameizi/sync-docker-image/action@master
      with:
        username: ${{ secrets.DOCKER_USERNAME }}
        password: ${{ secrets.DOCKER_PASSWORD }}
        image: ${{ secrets.IMAGE }}
        repository: v5cn
```
