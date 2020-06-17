# init

### 
```bash
gisturl="Jf5h1"
```

# bash shell

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
