#定义变量
FILE_NAME=$(date +"%Y-%m-%d_%H-%M-%S.sql")
FILE_PATH="/tmp/${FILE_NAME}"  #导出路径
CONTAINER_NAME=root-mysql-1  #容器名称
ROOT_PASS=root  #mysql root 密码
MYSQL_BACKUP_FOLDER="sqlbackup" #备份目录

#执行备份，此处不要加-it，否则会报“the input device is not a TTY”错误（脚本后台运行没有可交互终端）
docker exec ${CONTAINER_NAME} bash -c "mysqldump -uroot -p${ROOT_PASS} -A > ${FILE_PATH}"
#复制备份文件
docker cp ${CONTAINER_NAME}:${FILE_PATH} $MYSQL_BACKUP_FOLDER
#删除docker内备份文件
docker exec ${CONTAINER_NAME} bash -c "rm ${FILE_PATH}"
#压缩文件
cd $MYSQL_BACKUP_FOLDER
tar -zcvf "${FILE_NAME}.tgz" $FILE_NAME
rm $FILE_NAME
#保留最新30个备份文件，其他删除
ls -lt | awk '{if(NR>31){print "rm "$9}}' | sh
