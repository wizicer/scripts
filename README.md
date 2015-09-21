# Installation for Windows

1. Install `choco`
```
powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
```

2. Install `git`
```
choco install git -y
```

# Quickly setup git alias

You can use following command to quickly setup git environment:
```
curl -s https://raw.githubusercontent.com/wizicer/scripts/master/install/setupgit.sh | bash -s
```

# SSH

## Step 1: Generate Key

```
$ ssh-keygen
```

## Step 2: Copy Key to SSH Host

In Linux:

```
$ ssh-copy-id user@hostname
```

In Windows:

```
cat ~/.ssh/id_rsa.pub | ssh user@hostname "mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys"
```
