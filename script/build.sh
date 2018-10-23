#!/bin/sh

echo "******************** 开始执行脚本 ********************"

if [${IS_SYNC_TOMCAT}]
then
	echo "******************** 同步到Tomcat ********************"
    copy_war_to_tomcat
fi

copy_war_to_tomcat()
{
	echo "copy_war_to_tomcat"
    rm -rf /work/ihealthtek/edserver/apache-tomcat-8.0.28/webapps/ed-web-*
	cp -rf /root/.jenkins/jobs/EDServer/workspace/ed-web-manager/target/*.war /work/ihealthtek/edserver/apache-tomcat-8.0.28/webapps
	cp -rf /root/.jenkins/jobs/EDServer/workspace/ed-web-api/target/*.war /work/ihealthtek/edserver/apache-tomcat-8.0.28/webapps
}

restart_tomcat()
{
	echo "restart tomcat"
}

echo "***************** 0 sync code     ******************************"

echo "******************1 config web service ip ××××××××××××××××××××××"

#添加版本信息
version=$(date +%Y-%m-%d\ %H:%M:%S)
echo $version

echo "***************** 1 maven project ******************************"
#mvn -f pom.xml clean
#mvn -f pom.xml package -U


echo "***************** 2 push war to tomcat ************************"

