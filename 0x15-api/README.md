# Python Scripts for API Data Access and Export

## Background Context

Old-school system administrators usually only know Bash and that is what they use to build their scripts. While Bash is perfectly fine for a lot of things, it can quickly get messy and not efficient compared to other programming languages. The new generation of system administrators, usually called SREs, are pretty much regular software engineers but instead of building products, they are managing systems. And one of the big differences with their predecessors is that they know more than just Bash scripting.

One popular way to expose an application and dataset is to use an API. Often, they are the public facing part of websites and micro-services that allow outsiders to interact with them – access and modify their data. In this project, you will access employee data via an API to organize and export them to different data structures.

This is a perfect example of a task that is not suited for Bash scripting, so let’s build Python scripts.

## Resources

Read or watch:

- [Friends don’t let friends program in shell script](https://intranet.hbtn.io/rltoken/X2Qb1dfz3Rxmp7fbWZ03Aw)
- [What is an API](https://intranet.hbtn.io/rltoken/S9-7Uy0oS8XZ6rkK7HRrWg)
- [What is an API? In English, please](https://intranet.hbtn.io/rltoken/5VqRUPL6Oup_pBzI5eAb_A)
- [What is a REST API](https://intranet.hbtn.io/rltoken/QM3T_Dtvbi53nJu2HjHTIw)
- [What are microservices](https://intranet.hbtn.io/rltoken/2WaPojJBRMgp5WdjNRA7Kw)
- [PEP8 Python style](https://www.python.org/dev/peps/pep-0008/) - having a clean code respecting style guide is really appreciated in the industry

## Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### General

- What Bash scripting should not be used for
- What is an API
- What is a REST API
- What are microservices
- What is the CSV format
- What is the JSON format
- Pythonic Package and module name style
- Pythonic Class name style
- Pythonic Variable name style
- Pythonic Function name style
- Pythonic Constant name style
- Significance of CapWords or CamelCase in Python

## Copyright - Plagiarism

You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.
You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
You are not allowed to publish any content of this project.
Any form of plagiarism is strictly forbidden and will result in removal from the program.

## Requirements

### General

- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted/compiled on Ubuntu 20.04 LTS using `python3` (version 3.8.5)
- All your files should end with a new line
- The first line of all your files should be exactly `#!/usr/bin/python3`
- Libraries imported in your Python files must be organized in alphabetical order
- A `README.md` file, at the root of the folder of the project, is mandatory
- Your code should use the `pycodestyle` (version 2.8.*)
- All your files must be executable
- The length of your files will be tested using `wc`
- All your modules should have documentation (`python3 -c 'print(__import__("my_module").__doc__)'`)
- You must use `get` to access dictionary values by key (it won’t throw an exception if the key doesn’t exist in the dictionary)
- Your code should not be executed when imported (by using `if __name__ == "__main__":`)

