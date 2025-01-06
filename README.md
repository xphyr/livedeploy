# livedeploy
Fedora Live CD with Assisted Installer

All in one Live Fedora CD, that can be used to deploy an OpenShift cluster using the Assisted Installer UI. It will also include a DHCP and DNS server for PoCs where access to corporate DNS servers is not possible.

## Requirements

Boot to Live CD/Assisted Installer UI
  - may need a "configure" web page to enable extra services and mirror as well as DNS
Supply Local DNS if needed
Supply local mirror registry if required
 - start mirror process if needed

## Building CD

### Generate login password:

```
openssl passwd -1 -salt xyz PASSWORD
```

The example file uses "PASSWORD" as the password. This should be changed.

### Creating config tar file

```
tar -C customconfig -cvf ocpdeployimage/config-files.tar .
```

# kiwi does not work with SELinux ... so we need to disable it for the build process to work
sudo senforcing 0
sudo kiwi-ng --profile=Live system build --description=ocpdeployimage/ --target-dir=/u01/kiwi/ 
```

## Deploying a Cluster with the CD

## Projects Used

- Podman Quadlet - https://www.redhat.com/en/blog/quadlet-podman
- Assisted Service - https://github.com/openshift/assisted-service/tree/master/deploy/podman
- CoreDNS - https://hackmd.io/@QI-AN/Run-CoreDNS-with-Podman-Pod?utm_source=preview-mode&utm_medium=rec
- FireFox - should start automatically and bring up the assisted service UI
- OpenShift
- Pulp - https://pulpproject.org/pulp-oci-images/docs/admin/tutorials/quickstart/#single-container  (need to see if this will work or not)
- Kiwi - https://osinside.github.io/kiwi/index.html
- OSBuild - https://osbuild.org




#### Temp notes

```
$ sudo dnf install osbuild-composer composer-cli

Note that composer-cli is a virtual provides for the actual package name, which is weldr-client for historical reasons.

To enable the service, run this command:

$ sudo systemctl enable --now osbuild-composer.socket

Verify that the installation works by running composer-cli:

$ sudo composer-cli status show

If you prefer to run this command without sudo privileges, add your user to the weldr group:

$ sudo usermod -a -G weldr <user>
$ newgrp weldr
```
