git submodule update --init --recursive
./tools/install_deps.sh
src/experiments/setup.py --install-deps --all
src/experiments/setup.py --setup --all
sudo sysctl -w net.ipv4.ip_forward=1
