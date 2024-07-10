# Ansible GitHub Repository Template

This repo provides a basic template for use with Ansible.

## Tools

This repo uses the following tools:

- [Kics](https://kics.io)
- [Markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2)
- [Molecule](https://ansible.readthedocs.io/projects/molecule/)
- [ansible-lint](https://ansible.readthedocs.io/projects/lint/)
- [yamllint](https://yamllint.readthedocs.io)

## Molecule

Molecule is setup to test the ansible code using docker. See the
[Molecule Documentation](https://ansible.readthedocs.io/projects/molecule/getting-started/)
for more information on how to use Molecule for your code.

## Security Scans

[Kics](https://kics.io) is setup for security scans. The
[GitHub Action](.github/workflows/ansible.yml) is configured to upload a sarif
file. You need to have Code Scanning enabled on your repository for this to
work. This requires either a public repository or an account with
[GitHub Advanced Security](https://docs.github.com/en/get-started/learning-about-github/about-github-advanced-security)
enabled. If you do not have either of these then you should remove the upload
step from this file.

The default security policy expects you to have Private vulnerability reporting
enabled. If you do not wish to do this, please rewrite or deleted SECURITY.md
