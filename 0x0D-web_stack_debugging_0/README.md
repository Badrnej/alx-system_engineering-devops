# Webstack Debugging Series

## Background Context

The Webstack debugging series trains you in the art of debugging. Computers and software rarely work the way we want (that’s the “fun” part of the job!).

Being able to debug a webstack is essential for a Full-Stack Software Engineer, and it takes practice to be a master of it.

In this debugging series, broken/bugged webstacks will be given to you, and the final goal is to come up with a Bash script that once executed, will bring the webstack to a working state. But before writing this Bash script, you should figure out what is going on and fix it manually.

## Example

Let’s start with a very simple example. My server must:

- Have a copy of the `/etc/passwd` file in `/tmp`
- Have a file named `/tmp/isworking` containing the string `OK`

Let’s pretend that without these 2 elements, my web application cannot work.

## Instructions

1. Start a Docker container with Ubuntu 14.04:
   ```bash
   docker run -d -ti ubuntu:14.04

