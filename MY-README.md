# my home assistant

This is a branch off master to setup a custom Dockerfile intended to be built and run on a raspberry pi 3.

### New Directories/Files Added

- MY-README.md
- my-config/
- my-scripts/
- My-Dockerfile

### Existing Directories/Files Modified

- None

### Prerequisites

The raspberry pi should have the following installed:

- raspbian
- git
- git ssh keys
- docker
- this project cloned/copied to /home/pi/home-assistant/

There are some files that are not added to the repository because they contain secrets, so if you clone this repository you'll need to add these files manually.

- my-config/secrets.yaml (contains secrets in home assistant config)
- my-config/nginx-home-assistant (nginx config, contains domain names)
- my-config/.htpasswd (contains nginx basic auth password)
- my-config/letsencrypt/ (contains private keys, domain names)
- my-scripts/copy.sh (contains ip addresses)
- my-scripts/letsencrypt.sh (contains domain name)
- my-scripts/letsencrypt-renew.sh (contains domain name)

### Building

Run this command on the raspberry pi (requires a clean git index) - `./my-scripts/build.sh`

### Running

Run this command on the raspberry pi - `./my-scripts/run.sh`
