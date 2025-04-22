### 1. Clone the repository

```bash
git clone https://github.com/ABBNojGau/DroneSwarmUF-Simulator.git --recursive
cd DroneSwarmUF-Simulator
```

### 2. Run the setup script

```bash
chmod +x setup.sh
./setup.sh
```

This installs dependencies and builds the simulator.

### 3. Launch the simulation

```bash
make px4_sitl_default gz_x500
```

### 4. Launch QGroundControl (on Windows)

- Download: [https://docs.qgroundcontrol.com/en/getting\_started/download\_and\_install.html](https://docs.qgroundcontrol.com/en/getting_started/download_and_install.html)
- Run it. PX4 broadcasts MAVLink to UDP port 14550.
- Vehicle should auto-connect.

If it doesn't:

- Ensure PX4 is broadcasting using:

```bash
mavlink stop-all
mavlink start -u 14540 -o 14550 -t 255.255.255.255 -p
```

- Ensure QGC is allowed in Windows Firewall (private networks).

