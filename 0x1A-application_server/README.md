# Adding Application Server to Web Infrastructure

## Background

Your web infrastructure currently serves static web pages via Nginx. To serve dynamic content, you need to add an application server. This project focuses on integrating Gunicorn as the application server for your Flask application, serving your Airbnb clone project.

## Resources

- [Application server vs web server](https://example.com/application-server-vs-web-server)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://example.com/flask-gunicorn-nginx-ubuntu) (Install Gunicorn globally)
- [Running Gunicorn](https://example.com/running-gunicorn)
- Be careful with the way Flask manages slash in route - `strict_slashes`
- [Upstart documentation](https://example.com/upstart-documentation)

## Requirements

### General
- A `README.md` file, at the root of the project folder, is mandatory
- Use Python 3 for all Python-related tasks
- All config files must have comments

### Bash Scripts
- All files will be interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- All Bash scripts must be executable
- Bash scripts must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any errors
- The first line of all Bash scripts should be `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining the script's purpose

## Project Setup

### Step 1: Install Gunicorn and Nginx

Install Gunicorn globally:
```bash
sudo apt-get install gunicorn

