#!/bin/sh
echo
echo '----变量赋值'
youname="shell"
echo $youname
echo ${youname}
yourname="zmx"
echo $yourname
yourname="zmx2"
echo ${yourname}

#双引号和单引号
#  单引号里的任何字符都会原样输出，单引号内变量无效，单引号内不能出现单引号
#  双引号里可以有变量，双引号里可以出转义字符
#
echo
echo '----单引号和双引号'

#拼接字符串
echo
echo '----拼接字符串'
yn="hello"
greeting="$yn"", world"
greeting2="${yn}, world2"
echo $greeting
echo $greeting2
echo $greeting  $greeting2

#获取字符串长度
echo
echo '----获取字符串长度'
echo '${#str}'
str="shfohx"
echo ${#str}

#提取子字符串
#全闭区间，既包括左边也包括右边
echo
echo '----提取子字符串'
str2="alibaba is a great company"
echo ${str2:0:3}
echo ${str2:1:3}
echo ${str2:1:5}
echo ${str2:1:9}

#查找子字符串
#查找x在串中的下标位置,从下标0开始
echo
echo '----查找子串'
str3="alibaba is agreat company"
echo "'g' in string:"`expr index "$str3" g`
echo "'c' in string:"`expr index "$str3" c`

#u撤销
#y复制，Y复制行，nyw复制n个word
#p粘贴

#修改文件属性，可能需要root权限
#u代表user，g代表group，o代表other，r代表read，w代表write，x代表可执行
#chmod ugo+r file1.txt

#命令产生的数据赋值给变量,命令用反引号包裹就行
#path=`pwd`
echo
echo '----命令产生的数据赋值给变量'
echo 'path=`pwd`'
path=`pwd`
echo ${path}

#传递参数
#$0文件名
#$1第一个参数，$2第二个参数，以此类推
#$#参数个数
#其他符号请查阅https://www.runoob.com/linux/linux-shell-passing-arguments.html
echo
echo '----传递参数'
echo '$0 == '"$0"
if [ $# == 1 ]
then
        echo '$1 == '"$1"
elif [ $# == 2 ]
then
	echo '$1 == '"$1"
	echo '$2 == '"$2"
fi

#复制文件及目录
#cp -a source dest //-a:保留链接，文件属性，复制目录下所有内容，等于dpR参数组合
echo
echo '----复制文件及目录'

#移动及重命名
#mv source dest //移动文件或目录，当所在目录相同，名称不同，则会被重命名
echo
echo '----移动及重命名'

#删除文件及目录
#rm -r * //-i删除前逐一询问, -f直接删除不询问, -r删除目录及其下所有
echo
echo '----删除文件及目录'


