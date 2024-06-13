# Airbnb Clone Infrastructure

## Background Context

Your web infrastructure is already serving web pages via Nginx that you installed in your first web stack project. While a web server can also serve dynamic content, this task is usually given to an application server. In this project, you will add this piece to your infrastructure, plug it into your Nginx, and make it serve your Airbnb clone project.

## Resources

Read or watch:
- [Application server vs web server](https://example.com/application-server-vs-web-server)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://example.com/flask-gunicorn-nginx-ubuntu) (As mentioned in the video, do not install Gunicorn using virtualenv, just install everything globally)
- [Running Gunicorn](https://example.com/running-gunicorn)
- Be careful with the way Flask manages slash in route - `strict_slashes`
- [Upstart documentation](https://example.com/upstart-documentation)

## Requirements

### General
- A `README.md` file, at the root of the folder of the project, is mandatory
- Everything Python-related must be done using python3
- All config files must have comments

### Bash Scripts
- All your files will be interpreted on Ubuntu 16.04 LTS
- All your files should end with a new line
- All your Bash script files must be executable
- Your Bash script must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

## Project Setup

### Step 1: Install Gunicorn and Nginx

Install Gunicorn globally:
```bash
sudo apt-get install gunicorn

