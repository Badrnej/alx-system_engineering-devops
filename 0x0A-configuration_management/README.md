# Skynet Auto-Remediation Tool

## Introduction

This project is about Skynet, an auto-remediation tool developed for SlideShare. Skynet monitored, scaled, and fixed Cloud infrastructure using a parallel job-execution system called MCollective.

## Background

When working on Skynet, a bug in the code caused MCollective to interpret nil as 'all servers' for the filter method. This resulted in 75% of SlideShare's conversion infrastructure servers being shut down, affecting users' ability to convert their PDFs, PowerPoints, and videos.

## Restoration with Puppet

Thanks to Puppet, SlideShare was able to restore its infrastructure to normal operation in under 1 hour. Writing Puppet code for infrastructure requires an investment of time and energy, but in the long term, it is a must-have for managing complex infrastructures.

## Resources

- [Intro to Configuration Management](link_to_intro)
- [Puppet resource type: file](link_to_puppet_file)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](link_to_puppet_declarative)
- [Puppet lint](link_to_puppet_lint)
- [Puppet emacs mode](link_to_puppet_emacs)

## Requirements

- All files are interpreted on Ubuntu 20.04 LTS
- All files end with a new line
- Puppet manifests must pass puppet-lint version 2.1.1 without any errors
- Puppet manifests must run without error
- Puppet manifests first line must be a comment explaining what the Puppet manifest is about
- Puppet manifests files must end with the extension .pp

## Note on Versioning

Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

## Installation

To install Puppet:

```bash
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet

