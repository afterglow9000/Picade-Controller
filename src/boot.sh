# stop the background process
sudo /etc/init.d/bluetooth stop

# turn on Bluetooth
sudo hciconfig hcio up

# update mac address
./update_mac.sh

# update name
./update_name.sh arcade-controller

# create tmux session
tmux has-session -t  arcade-controller

if [ $? != 0 ]; then
    tmux new-session -s arcade-controller -n os -d
    tmux split-window -h -t arcade-controller
    tmux split-window -v -t arcade-controller:os.0
    tmux split-window -v -t arcade-controller:os.1
    tmux send-keys -t arcade-controller:os.0 'sudo /usr/sbin/bluetoothd --nodetach --debug -p time ' C-m
    tmux send-keys -t arcade-controller:os.1 'cd ./server && sudo python btk_server.py ' C-m
    tmux send-keys -t arcade-controller:os.2 'sudo /usr/bin/bluetoothctl' C-m
    tmux send-keys -t arcade-controller:os.3 'sleep 5 && sudo python ./keyboard/kb_client.py' C-m
fi
