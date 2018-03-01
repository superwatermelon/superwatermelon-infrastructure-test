[Unit]
Requires=docker.service var-lib-docker-swarm.mount
After=docker.service var-lib-docker-swarm.mount
[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/bin/bash -c 'docker swarm init --advertise-addr $(curl http://169.254.169.254/latest/meta-data/local-ipv4)'
ExecStart=/bin/bash -c 'docker node update --availability drain $(docker node inspect --format '{{.ID}}' self)'
[Install]
WantedBy=multi-user.target