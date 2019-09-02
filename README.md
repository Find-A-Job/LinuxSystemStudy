# LinuxSystemStudy

### CentOS 7
* ip配置
```
1.ip addr    //列出所有网络接口，找到接口名称
2.vi /etc/sysconfig/network-scripts/ifcfg-ens33   //打开对应接口的配置文件，其中ifcfg-ens33应替换为ifcfg-XXXX
  I键进入修改模式，然后添加如下内容：
  BOOTPROTO=static          #静态ip地址，即手动分配ip地址
  ONBOOT=yes                #开机启动网络
  IPADDR=192.168.100.101    #指定具体的ip地址，要与上面配置为的NAT网络在同一个网段
  NETMASK=255.255.255.0     #配置子网掩码
  GATEWAY=192.168.100.2     #配置网关，VMware NAT网络的网关是该网段ip地址为2
  DNS1=114.114.114.114      #配置国内的一个域名解析器
  ESC退出编辑，:wq保存退出，要带冒号
3.systemctl restart network  //重启网络服务，如果失败了，就直接reboot
4.ping 14.215.177.39         //测试网络,内网IP和外网IP都测试一下，ping域名可能会失败
```
