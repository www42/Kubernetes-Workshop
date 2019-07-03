# Just completed AZ-301T02 Lab Mod 03?

Let's prepare the Linux VM for Docker!


Open CloudShell (Bash) and look for your Linux VM. Should be up and running.
<details>

```bash
az vm list --show-details -o table

IP=$(az vm list --show-details --resource-group AADESIGNLAB1202-RG --query [].publicIps  -o tsv)
echo $IP
```
</details>

Log into VM and install Docker and some more tools. Enable and start Docker service.
<details>

Student's password is `Pa55w.rd1234`
```bash
ssh Student@$IP

sudo yum -y install docker git epel-release jq

sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
```
</details>

In CentOS running Docker as a non root user is not not enabled (despite of the group `dockerroot`). See [Why we don't let non-root users run Docker in CentOS, Fedora, or RHEL](https://www.projectatomic.io/blog/2015/08/why-we-dont-let-non-root-users-run-docker-in-centos-fedora-or-rhel/)

Test your Docker daemon.
<details>

```bash
sudo -i
docker version
```
</details>

Clone the repo.
<details>

```bash
git clone https://github.com/www42/k8w.git
```
</details>

You are ready for the [Docker challenge](ChallengeDocker.md)!