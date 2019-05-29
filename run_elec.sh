#!/bin/sh
###############
# run_electrumx
###############

# configure electrumx
export COIN=Commercium
export DAEMON_URL=http://x:x@127.0.0.1:12020
export NET=mainnet
export CACHE_MB=400
export DB_DIRECTORY=/home/electrum/.electrumx/db
export SSL_CERTFILE=/home/electrum/.electrumx/certfile.crt
export SSL_KEYFILE=/home/electrum/.electrumx/keyfile.key
export BANNER_FILE=/home/electrum/.electrumx/banner
export DONATION_ADDRESS=CKyBhW5xh9svSMU8sBxbRbBkmmsQrvUnLt

# connectivity
export HOST=
export TCP_PORT=50001
export SSL_PORT=50002

# visibility
export REPORT_HOST=electrum.commercium.net
export RPC_PORT=8000

# run electrumx
ulimit -n 10000
/usr/local/bin/electrumx_server 2>> /home/electrum/.electrumx/electrumx.log >> /home/electrum/.electrumx/electrumx.log &

######################
# auto-start electrumx
######################

# add this line to crontab -e
# @reboot /home/electrum/run_elec.sh
