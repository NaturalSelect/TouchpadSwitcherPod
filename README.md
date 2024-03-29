# TouchpadSwitcherPod

auto enable or disable touchpad

## Deploy

**Pull image:**

```bash
docker pull naturalselect/touchpadswitcherpod:latest
```

**Run container:**

```bash
docker run \
    --name touchpadswitcher\
    --rm \
    -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    "naturalselect/touchpadswitcherpod:latest"
```

### Using Docker

```bash
docker run \
    --name touchpadswitcher\
    --restart always\
    -d \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    "naturalselect/touchpadswitcherpod:latest"
```

### Using Podman

**Start container:**

```bash
docker run \
    --name touchpadswitcher\
    --restart always\
    -d \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    "naturalselect/touchpadswitcherpod:latest"
```

**Generate systemd service:**

```bash
docker generate systemd --new --name touchpadswitcher -f

mv container-touchpadswitcher.service ~/.config/systemd/user/
```

**Enable service:**

```bash
systemctl --user enable container-touchpadswitcher
systemctl --user restart container-touchpadswitcher
```