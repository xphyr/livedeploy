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

## Deploying a Cluster with the CD

## Projects Used

- Podman Quadlet - https://www.redhat.com/en/blog/quadlet-podman
- Assisted Service - https://github.com/openshift/assisted-service/tree/master/deploy/podman
- CoreDNS - https://hackmd.io/@QI-AN/Run-CoreDNS-with-Podman-Pod?utm_source=preview-mode&utm_medium=rec
- FireFox - should start automatically and bring up the assisted service UI
- OpenShift
- Pulp - https://pulpproject.org/pulp-oci-images/docs/admin/tutorials/quickstart/#single-container  (need to see if this will work or not)
