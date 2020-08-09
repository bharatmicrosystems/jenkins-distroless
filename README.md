# Jenkins Distroless
[![Actions Status](https://github.com/bharatmicrosystems/jenkins-distroless/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/bharatmicrosystems/jenkins-distroless/actions)

This repository contains Docker Images for Jenkins that run on the distroless images provided by Google at https://github.com/GoogleContainerTools/distroless

The distroless images are more secure as they contain only your application and its runtime dependencies. They do not contain package managers, shells or any other programs you would expect to find in a standard Linux distribution.

This repository is updated regularly and monitors every Jenkins release.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

```shell
docker run bharamicrosystems/jenkins-distroless:tagname --volume=/my_volume:/var/lib/jenkins
```

Mount the volume to a particular disk to persist data


As this is a distroless container, you cannot start a shell in the container, you can use the debug image to run a busybox shell if you like

```shell
docker run bharamicrosystems/jenkins-distroless:debug --volume=/my_volume:/var/lib/jenkins
docker exec -it <container_name> /busybox/sh
```

#### Volumes

* `/var/lib/jenkins` - Jenkins Data Directory


## Find Us

* [GitHub](https://github.com/bharatmicrosystems/jenkins-distroless)

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/your/repository/tags). 

## Authors

* **Gaurav Agarwal** - *Initial work* - [Bharatmicrosystems](https://github.com/bharatmicrosystems)


## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](https://raw.githubusercontent.com/bharatmicrosystems/jenkins-distroless/master/LICENSE) file for details.
