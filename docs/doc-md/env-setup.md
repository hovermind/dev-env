# Method 1
## Step-1: Create a github gist (.txt)

## Step-2: Create powershell script
`hover.ps1`
```
. { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force

refreshenv

Install-BoxstarterPackage -PackageName https://gist.githubusercontent.com/hovermind/865454bd29a04d2d00e955a43cb123b7/raw/c28d7c38cc0c09864e4841170dc28befcea9a7c9/hover.txt -DisableReboots
```

**Note:**
- Above command will install Chocolatey if necessary and then install the necessary boxstarter modules

## Step-3: Run powershell script

**Note:**
- While you can use the -PackageName argument to point to any public Chocolatey package, you can also point to any URL that resolves to a plain text script like the gist we created.
- use the -DisableReboots argument to suppress automatic reboots
```
> Install-BoxstarterPackage -PackageName <URL-TO-RAW-GIST> -DisableReboots
```

## [Method 2 - Web Launcher](https://github.com/hovermind/dev-env/blob/master/docs/doc-md/boxstarter-web-launcher.md)
