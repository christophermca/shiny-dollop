# Using Virtualenv for python projects

### Helps keep dependencies from affecting other python projects

## Create

`virtualenv env_name`

to specify a version a python

**python3**
`virtualenv -p /usr/bin/python3 virtualenv_name`

**python2**
`virtualenv -p /usr/bin/python3 virtualenv_name`

## Usage

### Activate
`source virtualenv_name/bin/activate`

### Deactivate
`deactivate`

### install packages

global install
`pip install Django==1.9`

To install local packages first __activate__ the virutalenv

```bash
  source virtualenv_name/bin/activate
  pip install Django==1.9
```

