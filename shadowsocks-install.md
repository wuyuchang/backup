## Install Shadowsocks On Linux With Three Steps 

### Download Install Script
``` bash
$ wget --no-check-certificate -O https://raw.githubusercontent.com/wuyuchang/backup/master/shadowsocks-all.sh
```

### Add Executation Permission To Script
``` bash
$ chmod +x shadowsocks-all.sh
```

### Run Install Shell Script With Prtint Log
``` bash
$ ./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
```
