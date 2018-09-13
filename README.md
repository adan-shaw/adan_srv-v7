# adan_srv-v7
# All copyright and other proprietary notices \
# shall be retained on all reproductions.
# date: 2018/09/11
#
# usage demo:
# cd tcp_pro_select
# 1.
# for srv: cd srv && make all
# ulimit -n 4096
# ./obj_out
# 2.
# for cli: cd cli && make all
# chmod 755 ./sock_cli_once.sh
# ./sock_cli_once.sh
# 3.
# attention: 
# if you wanna use tcp_pro_select2 version, please use root user and order: ulimit -n 40960
# and one more things, tcp_pro_select2 is a crap but codes is more different.
#
#
# project notices:
#   it's a <echo-server> server && client demo,
#   and working with Multi process, Tcp sync socket, 
#   and Io multiplexing choosed select mode,
#   if you feel interesting then please check up the codes.
#
