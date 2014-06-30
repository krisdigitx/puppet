Supports enviroment variables for foreman..


to use...

Set parameter type as "YAML" in foreman then override it by using the environment variables

example:

env_var:
  > ftp_proxy: http://10.10.10.10:3128
  > https_proxy: http://10.10.10.10:3128
  > term: vt100

