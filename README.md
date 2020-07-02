# [Welcome to the world of technology](https://git.io/JfN8g)


https://git.io/JfN8y

### short url
```bash
gisturl="Jf5h1"
```

# windows init
```cmd
choco install -y 7zip vim nextcloud-client typora
```

[win + r]
slmgr.vbs /dlv


```cmd
wmic os get caption
```


## proxy

```powershell
$Env:http_proxy="http://127.0.0.1:7890";$Env:https_proxy="http://127.0.0.1:7890"

$Env:http_proxy="http://192.168.1.1:7890";$Env:https_proxy="http://192.168.1.1:7890"

$Env:http_proxy="http://192.168.1.1:7890";$Env:https_proxy="http://192.168.1.1:7890"


```

```cmd
set http_proxy=http://127.0.0.1:7890 & set https_proxy=http://127.0.0.1:7890

set http_proxy=http://192.168.1.1:7890 & set https_proxy=http://192.168.1.1:7890

set http_proxy=http://127.0.0.1:7890 & set https_proxy=http://127.0.0.1:7890
```


```bash
MY_PROXY_URL="prox.srv.world:3128"

HTTP_PROXY=$MY_PROXY_URL
HTTPS_PROXY=$MY_PROXY_URL
FTP_PROXY=$MY_PROXY_URL
http_proxy=$MY_PROXY_URL
https_proxy=$MY_PROXY_URL
ftp_proxy=$MY_PROXY_URL

export HTTP_PROXY HTTPS_PROXY FTP_PROXY http_proxy https_proxy ftp_proxy
```



### bash shell init

```bash
# echo "alias xxx=''" >> ~/.bashrc

echo "alias vibashrc='vi ~/.bashrc'" >> ~/.bashrc
echo "alias sourbashrc='source ~/.bashrc'" >> ~/.bashrc


cat >> ~/.bashrc <<EOF
sourcegist() {
    source <(curl -s -L https://git.io/Jf5x0)
}
EOF


source ~/.bashrc
```

### PowherShell init


echo "" >> $PROFILE

```powershell
echo "function pro {code $PROFILE}" >> $PROFILE
echo "function .pro {. $PROFILE}" >> $PROFILE
echo "function .progit {. http://xxxx}" >> $PROFILE
echo "" >> $PROFILE

```

# WSL (適用於 Linux 的 Windows 子系統)

[手动安装WSL](https://docs.microsoft.com/zh-cn/windows/wsl/install-manual)（Microsoft Store）
https://wsldownload.azureedge.net/kali-linux-08-06-2019.appx
https://wsldownload.azureedge.net/DebianGNULinux_1-1-3-0_x64__76v4gfsz19hv4.Appx

```powershell
Add-AppxPackage .\kali-linux-08-06-2019.appx
```

### 使用 PowerShell 下載
```powershell
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile Ubuntu.appx -UseBasicParsing
```

curl.exe -L -o ubuntu-1604.appx https://aka.ms/wsl-ubuntu-1604


## vagrant 

```powershell
vagrant init generic/debian10
# 安装VBoxGuestAdditions
vagrant plugin install vagrant-vbguest

# Install proxyconf:
vagrant plugin install vagrant-proxyconf
```

#### vagrantfile
```ruby
Vagrant.configure("2") do |config|
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://192.168.0.2:3128/"
    config.proxy.https    = "http://192.168.0.2:3128/"
    config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
  end
  # ... other stuff
end
```



## DNS

| 国家 |                   | IPv4           | time (ms) |      |
| ---- | ----------------- | -------------- | --------- | ---- |
| 台湾 | 台灣大學          | 140.112.254.4  | 60        |      |
|      | 台灣大學          | 211.79.61.47   | x         |      |
|      | 中華電信 Hinet    | 168.95.1.1     | 80        |      |
|      | 中華電信 Hinet    | 168.95.192.1   | 40        |      |
|      | Google Public DNS | 8.8.8.8        | 100       |      |
|      | Google Public DNS | 8.8.4.4        | 80        |      |
|      | So-net            | 61.64.127.1    | 100       |      |
|      | So-net            | 61.64.127.2    | 60        |      |
|      | 台灣固網 TFN      | 211.78.215.137 | 110       |      |
|      | 台灣固網 TFN      | 211.78.215.200 | 110       |      |
|      |                   |                |           |      |
|      |                   |                |           |      |
|      |                   |                |           |      |


# NTP

Timezone:   Asia/Shanghai

| IP            |                          |                                   | time |
| ------------- | ------------------------ | --------------------------------- | ---- |
| 202.120.2.101 | ntp.sjtu.edu.cn          | 上海交通大学网络中心NTP服务器地址 | 30   |
| 101.6.6.172   | ntp.tuna.tsinghua.edu.cn | TUNA NTP                          |      |

```cmd

w32tm /stripchart /computer:time.windows.com
w32tm /stripchart /computer:ntp.sjtu.edu.cn
```

```bash
ntpdate -q pool.ntp.org
ntpdate -q time.windows.com
```



# choco install

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

# scoop install

```powershell
iwr -useb get.scoop.sh | iex
```
#### Note: if you get an error you might need to change the execution policy (i.e. enable Powershell) with
```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```
