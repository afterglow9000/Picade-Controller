# stop the background process
sudo /etc/init.d/bluetooth stop

# turn on Bluetooth
sudo hciconfig hcio up

# update mac address
./updateMac.sh

# update name
./updateName.sh arcade-controller

# get current path
export C_PATH=$(pwd)

# create Tmux session
tmux has-session -t  mlabviet

if [ $? != 0 ]; then
    tmux new-session -s mlabviet -n os -d
    tmux split-window -h -t mlabviet
    tmux split-window -v -t mlabviet:os.0
    tmux split-window -v -t mlabviet:os.1
    tmux send-keys -t mlabviet:os.0 'cd $C_PATH && sudo /usr/sbin/bluetoothd --nodetach --debug -p time ' C-m
    tmux send-keys -t mlabviet:os.1 'cd $C_PATH/server && sudo python btk_server.py ' C-m
    tmux send-keys -t mlabviet:os.2 'cd $C_PATH && sudo /usr/bin/bluetoothctl' C-m
    tmux send-keys -t mlabviet:os.3 'cd $C_PATH/keyboard/ && sleep 5 && sudo python kb_client.py' C-m
fi
