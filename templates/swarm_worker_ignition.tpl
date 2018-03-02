{
  "ignition":{"version":"2.1.0"},
  "storage":{
    "files":[{
      "filesystem":"root",
      "path":"/etc/coreos/docker-1.12",
      "contents":{"source":"data:,no%0A"}
    }]
  },
  "systemd":{
    "units":[
      {"name":"docker.socket","enabled":true},
      {"name":"containerd.service","enabled":true},
      {"name":"docker.service","enabled":true},
      {"name":"swarm-worker.service","enabled":true,"contents":${swarm_worker_service}}
    ]
  }
}
