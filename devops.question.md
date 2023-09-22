1. linux remapping uid
2. What is expose ?
3. Dockerfile -> copy vs add ?

DevOps vs SRE 
SLA, SLO, SLI
Bug Budget

podman rootless
open shift red hat
container security book


CI/CD - continue delivery vs continue deployment
Jenkins
TeamCity
GitHub Action

What is Continue testing?
Observability? Tracing vs Monitoring ?
OpenTelemetry


Infrastructure as a Code
VM level:
    Terraform (Cloud VM management)

OS level:
    Ansible - How it work under hood ?
    Chef
    Puppet
    SaltStack
    (Push/Pull, Independent)

Container level:
    Docker
    Podman - https://docs.podman.io/en/latest/ 
    Docker compose
    kubernetes

Docker
=======================================================================================================================

# What is the alternative to condition form of depends_on in docker-compose Version 3?

There's been a move away from specifying container dependencies in compose. 
They're only valid at startup time and don't work when dependent containers are restarted at run time. 
Instead, each container should include mechanism to retry to reconnect to dependent services when the connection is dropped. 
Many libraries to connect to databases or REST API services have configurable built-in retries. 
I'd look into that. It is needed for production code anyway.

# healthcheck, (Service health ?)

healthcheck declares a check that's run to determine whether or not the service containers are "healthy". 
It works in the same way, and has the same default values, as the HEALTHCHECK Dockerfile instructionopen_in_new set by the service's Docker image. 
Your Compose file can override the values set in the Dockerfile.

https://docs.docker.com/compose/compose-file/05-services/#healthcheck

Linux
=======================================================================================================================

load average ???
ls > a.txt 2>b.txt execution order ???
set +e / set -e
What is signal in linux ? SIGTERM, SIGKILL ???

process zomby ? сирота ?


=======================================================================================================================
English
Soft skill
Ever green knowledge 