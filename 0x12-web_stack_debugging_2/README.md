# Web Stack Debugging

## Introduction

Debugging is a crucial skill for software engineers, often taking a significant portion of their time. It requires years of experience to master, as it involves dealing with broken code, buggy systems, edge cases, and race conditions.

## Non-exhaustive guide to debugging

### Test and verify your assumptions

When debugging, it's essential to test and verify your assumptions. For example, when troubleshooting a web server that isn't serving a page, you can start by asking these questions:

- Is the web server started? Check using the service manager and verify with the process list.
- On what port should it listen? Check the web server configuration.
- Is it actually listening on this port? Use `netstat -lpdn` (run as root or sudo) to see the process for each listening port.
- Is it listening on the correct server IP? Use `netstat` to verify.
- Is there a firewall enabled?
- Have you looked at logs? Check `/var/log` and use `tail -f` to monitor.
- Can I connect to the HTTP port from the location I am browsing from? Use `curl` to test.

### Get a quick overview of the machine state

When connecting to a server, understanding recent and current events is crucial. You can achieve this with five commands in a minute or less:

1. `w`: Shows server uptime, connected users, and load average.
2. `history`: Displays previously run commands by the current user.
3. `top`: Shows currently running processes, ordered by resource utilization.
4. `df`: Shows disk utilization.
5. `netstat`: Displays network connections, listening ports, and sockets.

## Machine

For machine-level debugging, consider the following questions:

- Does the server have free disk space? Use `df`.
- Is the server able to keep up with CPU load? Use `w`, `top`, `ps`.
- Does the server have available memory? Use `free`.
- Are the server disk(s) able to keep up with read/write IO? Use `htop`.

If the answer is no to any of these questions, it might explain unexpected behavior. Possible solutions include freeing up resources, increasing machine resources, or distributing resource usage to other machines.

## Network issue

For network-level debugging, ask these questions:

- Does the server have the expected network interfaces and IPs up and running? Use `ifconfig`.
- Does the server listen on the sockets that it is supposed to? Use `netstat`.
- Can you connect from the location you want to connect from, to the socket you want to connect to? Use `telnet`.
- Does the server have the correct firewall rules? Use `iptables` or `ufw`.

## Process issue

If a software process isn't behaving as expected, consider these steps:

- Is the software started? Use `service NAME_OF_THE_SERVICE status` or `/etc/init.d/NAME_OF_THE_SERVICE status`.
- Is the software process running? Use `pgrep -lf NAME_OF_THE_PROCESS` or `ps auxf`.
- Are there any interesting logs? Look in `/var/log` and use `tail -f`.

## Conclusion

Debugging is a challenging but rewarding part of software engineering. With experience and methodology, you can become proficient at it. Bugs will always be part of your job, and as you gain more experience, you'll tackle trickier bugs. Good luck!

