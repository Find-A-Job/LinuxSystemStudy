#/bin/sh

#
#功能：复制指定目录并将其重命名，且删除其中不再需要的文件
#
#参数：
#参数1是需要复制的目录名
#参数2作为新目录的目录名，如果省略，则默认在其名字后加个1


#   参数合法性判断
sourceFile=""
destFile=""
if [ $# == 0 ]
then
	printf "usage error!\n"
	exit 1
elif [ $# == 1 ]
then
	#sourceFile=$1
	sourceFile=${1%/}
	if [ ! -d $sourceFile ]
	then
		printf "\'%s\' is not exist!\n" $sourceFile
		exit 1
	fi

	#destFile=$1'1'
	destFile=${1%/}'1'
	printf "copy and rename %s to %s\n" $1 "$1"'1'
elif [ $# == 2 ]
then
	#sourceFile=$1
	sourceFile=${1%/}
        if [ ! -d $sourceFile ]
        then
                printf "\'%s\' is not exist!\n" $sourceFile
                exit 1
        fi

	#destFile=$2
	destFile=${2%/}
	printf "copy and rename %s to %s\n" $1 $2
fi

echo $sourceFile
echo $destFile

#    复制并重命名文件
cp -a $sourceFile $destFile
rm -r -i "$destFile"'/log/'
rm -r -i "$destFile"'/else.md'
