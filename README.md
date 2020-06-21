# init
## [welcome to world](https://git.io/JfNC0)


### short url
```bash
gisturl="Jf5h1"
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

# DNS

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

| IP            |                 |                                   | time |
| ------------- | --------------- | --------------------------------- | ---- |
| 202.120.2.101 | ntp.sjtu.edu.cn | 上海交通大学网络中心NTP服务器地址 | 30   |
|               |                 |                                   |      |





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
