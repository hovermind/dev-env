. { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force

refreshenv

Install-BoxstarterPackage -PackageName https://gist.githubusercontent.com/hovermind/865454bd29a04d2d00e955a43cb123b7/raw/c28d7c38cc0c09864e4841170dc28befcea9a7c9/hover.txt -DisableReboots
