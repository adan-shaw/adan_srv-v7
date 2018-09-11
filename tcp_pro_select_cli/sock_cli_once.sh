#!/bin/bash
#
function help(){
echo "
# sock_cli_once 单次单非固定数据, 无loop 测试客户端(非dns port 型)
# 目的: 可以在不填满socket 的情况下, 不断更换send data 的内容, 
# 达到测试业务逻辑的目的...
# 注意: 为了测试使用时的便捷性, 请自行修改关键信息
";
return;
}
#
######################
# 关键信息如下:
test_count="5000"
srv_ip="127.0.0.1"
srv_port="6666"
__sleep="0" # 测试间隔休眠(单位秒)
#
# 全局变量:
start_time="0"
end_time="0"
right_count="0"
error_count="0"
######################
#
# 不接受参数输入
if [ $# != "0" ];then
  (help)
  exit
fi
#
# 执行测试
start_time=$(date)
#
tmp=$test_count
while true
do
# 软件执行语句...
tmp2=$(./obj_out "$srv_ip" "$srv_port" "hello adan, youre an asshole!")
echo "$tmp2" # 显示执行过程中, 所有打印出来的语句
#echo "${#tmp2}" # 显示字符串长度(当前为82, 耍点小聪明, )
#测试一次之后就知道字符串长度了
#if test "$tmp2" = "send data";then
	#let right_count=right_count+1
#else
	#let error_count=error_count+1
#fi
#
sleep "$__sleep"
#
if test "$tmp" = "0";then
	break
fi
let tmp=tmp-1
#
done
#
end_time=$(date)
let tmp=test_count-tmp
#
# 打印测试报告
sleep 1
echo ""
echo ""
echo "************************************"
echo "<< test report >>"
echo "start at :" "$start_time"
echo "finish at:" "$end_time"
echo "test count:" "$tmp"
#echo "right_count:" "$right_count"
#echo "error_count:" "$error_count"
echo "__sleep:" "$__sleep"
echo "************************************"



