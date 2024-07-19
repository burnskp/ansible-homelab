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
- pve_updates: configures non-subscription PVE repos and enables
  unattended-upgrades
- pve_disable_nag: disables the nag pop up in the proxmox web-ui

## Playbooks

List and briefly describe the main playbooks in your project

- pve.yml: Configures a 3 node Minisforum MS-01 PVE cluster

## Variables

n/a

## Tags

n/a

## Testing

Testing has not been implemented, as it needs a virtual Proxmox environment and
I have not taken the time to research how to do that.
