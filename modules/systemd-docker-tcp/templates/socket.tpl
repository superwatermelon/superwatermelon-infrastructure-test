[Unit]
Requires=torcx.target
After=torcx.target
[Socket]
ListenStream=2375
BindIPv6Only=both
Service=docker.service
[Install]
WantedBy=sockets.target
