# Run CTFd on Ubuntu 20.04

This repo will let you run CTFd as a secure (HTTPS) site on Ubuntu 20.04. 

## Prep

1. Run the `setup4ssl.sh` script in this repo:
`sudo ./setup4ssl.sh`

2. Edit the `hostname` line in the `docker-compose-production.yml` file to match the hostname you have defined to point to your server.
For example, if your server name is `myctf.com`, then change the `hostname: localhost` line in the `docker-compose-production.yml` file to `hostname: myctf.com`.

## Run the CTFd environment

In the terminal, run `sudo docker-compose -f docker-compose.yml -f docker-compose-production.yml up -d`

or

`sudo ./run-tls.sh`




## Credits

- CTFd by [CTFd](https://github.com/CTFd/CTFd)
- HTTPS by [Josh Grossman](https://github.com/tghosth/CTFd-docker-deploy)
