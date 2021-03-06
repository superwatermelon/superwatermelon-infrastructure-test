[Unit]
Requires=docker.service
After=docker.service
[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/bin/bash -c 'until /usr/bin/docker swarm join --token $(/usr/bin/docker -H ${manager_host} swarm join-token -q worker) ${manager_host} ; do sleep 5 ; done'
ExecStop=/bin/bash -c '/usr/bin/docker swarm leave'
[Install]
WantedBy=multi-user.target
