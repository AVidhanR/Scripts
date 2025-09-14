connect to the bash shell of any linux distro (in my case it's ubuntu 22.04)

`ls -al /` in order to list all dir's

`pwd` check your present working directory. make sure you are in `/home/*`

in order to add new user to current linux shell; follow the below command;

```sh
sudo adduser <username> --allow-bad-names
```

after that, give the user admin level access or root access; in-order to get that run below command;

```sh
sudo usermod -aG sudo <username>
```

to verify run;

```sh
groups <username>
```

switch to the newliy created user (with session reset)

```sh
sudo su - <username>
```

same as above but, not resetting the session

```sh
sudo -u <username> whoami
```

---

to install `git`

```sh
sudo apt update
sudo apt install git -y
```

to install `oh-my-bash`

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```
