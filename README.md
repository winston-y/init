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
