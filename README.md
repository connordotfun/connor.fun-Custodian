# connor.fun-Custodian
This is the repo that contains the files and instructions to get started in your moody weather journey!

## Requirements

You must include a file called keys.yaml with the following structure:

```YAML
weather_auth:
  key: "Secret"

twitter_consumer:
  key: "Extra"
  secret: "Secret"

twitter_access:
  key: "Mostest"
  secret: "Secret"

aws_auth:
  access: "Top"
  secret: "Secret"

ssh_key: "Ultra Secret"
```

## Usage

To run the script run:

```bash
ansible-playbook -i hosts Cluster-Initialization.yaml
```