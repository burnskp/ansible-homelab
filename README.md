# ansible-homelab

## Description

This is my ansible setup to manage my homelab.

## Table of Contents

- [Roles](#roles)
- [Playbooks](#playbooks)
- [Variables](#variables)
- [Tags](#tags)
- [Testing](#testing)

## Roles

[List and briefly describe the main roles in your project

- ansible_user: configures the ansible user so that ansible can be run in a
  more automated fashion
  unattended-upgrades
- pve_ceph: Installs ceph and configures it with two pools, kubernetes and pve,
  and a cephFS named iso
- pve_cluster: creates a PVE cluster and joins all the nodes that run the role
- pve_dns01_route53: Configures Let's Encrypt to use route53 dns01. Requires
  1password to store credentials
- pve_disable_nag: disables the nag pop up in the proxmox web-ui
- pve_updates: configures non-subscription PVE repos and enables

## Playbooks

List and briefly describe the main playbooks in your project

- pve.yml: Configures a 3 node Minisforum MS-01 PVE cluster

## Variables

- net_ceph.prefix: prefix for the ceph network (ex: 10.0.0)
- net_ceph.cidr: cidr for the ceph network (ex: 24)
- net_internal.prefix: prefix for the internal network (ex: 10.0.0)
- net_internal.cidr: cidr for the internal network (ex: 24)
- net_external.prefix: prefix for the external network (ex: 10.0.0)
- net_external.cidr: cidr for the external network (ex: 24)
- osd_device: path to the block device used for the osd volume
- acme.email: email address for let's encrypt account
  acme.domain: domain to use for TLS certs
  acme.aws_user: AWS IAM user with access to create DNS entries for the domain

## Tags

n/a

## Testing

Testing has not been implemented, as it needs a virtual Proxmox environment and
I have not taken the time to research how to do that.
