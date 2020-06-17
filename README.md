# init

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
