# my home assistant

This is a branch off master to setup a custom Dockerfile intended to be built and run on a raspberry pi 3.

### New Directories/Files Added

- MY-README.md
  - Documentation on my customization of home-assistant
- my-config/
  - Files that will be used by the container
- my-host-config/
  - Files that will be used by the raspberry pi host
- my-scripts/
  - Scripts that are meant to be run on the raspberry pi host
- My-Dockerfile
  - My customized Dockerfile

### Existing Directories/Files Modified

- None

### Prerequisites

The raspberry pi should have the following installed:

- raspbian
- git
- git ssh keys
- docker
- this project cloned/copied to /home/pi/home-assistant/
- iptables (installed and configured by my-scripts/install-fail2ban.sh)
- fail2ban (installed and configured by my-scripts/install-fail2ban.sh)
- `sudo adduser pi dialout`

There are some files that are not added to the repository because they contain secrets, so if you clone this repository you'll need to add these files manually.

- my-config/secrets.yaml (contains secrets in home assistant config)
- my-config/nginx-home-assistant (nginx config, contains domain names)
- my-config/.htpasswd (contains nginx basic auth password)
- my-config/letsencrypt.sh (contains domain name)
- my-config/letsencrypt-renew.sh (contains domain name)
- my-scripts/copy.sh (contains ip addresses)

### Building

Run this command on the raspberry pi - `./my-scripts/build.sh`

### Running

Run this command on the raspberry pi - `./my-scripts/run.sh`
