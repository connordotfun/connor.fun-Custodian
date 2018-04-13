# connor.fun-Custodian
This is the repo that contains the files and instructions to get started in your moody weather journey!

## Requirements

+'d files are generated by the ansible script

*'d files are supplied by you

```
connor.fun-Custodian
│
├── connor.fun.pem+
├── hosts
│
├── Prep-AWS.yaml
├── Create-Custodian.yaml
├── Create-Workers.yaml
│
├── LICENSE
├── README.md
│
├── configs
│   ├── environment+
│   ├── sample.properties+
│   ├── storm-env.sh+
│   ├── storm-nimbus.conf+
│   ├── storm-supervisors.conf+
│   └── zoo.cfg
│
├── logs+
│   ├── AMI_generation.yaml+
│   ├── Base_AMI_search.yaml+
│   ├── Custodian_generation.yaml+
│   ├── Security_Group_generation.yaml+
│   ├── SSHKey_generation.yaml+
│   └── Worker_generation.yaml+
│
├── services
│   ├── storm-nimbus.service
│   ├── storm-supervisor.service
│   ├── storm-ui.service
│   └── zookeeper.service
│
├── templates
│   ├── environment.j2
│   ├── sample.properties.j2
│   ├── storm-nimbus.conf.j2
│   └── storm-supervisors.conf.j2
│
└── vars
    ├── config.yaml*
    ├── keys.yaml*
    ├── machines.yaml
    └── security_groups.yaml
```

The contents of `keys.yaml` should look like this:

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
  access: "Ultra"
  secret: "Secret"
```

The contents of `config.yaml` should look like this:

```YAML
region: someAWSregion
ssh_key_name: connor.fun
base_ami_name: some-ami-name-in-amzn-ec2-ami-store
```

If you wish to, you may tweak the `vars/machines.yaml` and `vars/security_groups.yaml` to experiment with more workers or larger machines

## Usage

To create the basics for the network run:

```
ansible-playbook -i hosts Prep-AWS.yaml
```

To create the Custodian machine and it's AMI run:

```
ansible-playbook -i hosts Create-Custodian.yaml
```

To create the Worker machines run:

```
ansible-playbook -i hosts Create-Workers.yaml
```
