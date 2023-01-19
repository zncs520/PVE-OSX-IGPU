

############### 型号       软测功耗     满负载最高温度
RTX3050 <金属大师迷你>        135W        67℃
RX460 <景讯XFX无风扇静音版>     50W        63℃
UHD630 <IGPU>             ??        

`` 一 BIOS 主要关注几个点：``

## 1.打开，Intel® Virtualization Technology for Directed I/O (VT-d)
硬件直通必备的开关
## 2.关闭，Above 4G decoding
显卡直通时需要关闭（虽然物理机黑苹果建议大家打开）
## 3.核显开启最大2G显存
核显虚拟化直通时需要



`` 二 上传配置文件 ``

./ddsinstall.sh


`` 三 核显直通 ``



 加载-bios ddsbios.bin 即可通过uefi模式直通启动
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  其他：
  
# 定时开关机
crontab
10 6 * * * qm start 机器ID #每天6点10分开机
00 7 * * * qm stop 机器ID #每天7点关机











2步实现开机运行自定义命令


文件autostart放入 /etc/init.d 目录中：
/etc/init.d/autostart
加入开机启动项
cd /etc/init.d
update-rc.d autostart defaults

然后重新启动系统，或者命令行执行 /etc/init.d/autostart ，执行启动脚本看看是否执行




移除开机启动项
cd /etc/init.d
update-rc.d -f autostart remove
