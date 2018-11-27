# Step-1:
create a github gist

# Step-2:
run powershell command: 
```
> . { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force
```

**Note:**
- Above command will install Chocolatey if necessary and then install the necessary boxstarter modules

# Step-3:
Invoke the the Install-BoxstarterPackage command pointing to your gist created above: 
```
> Install-BoxstarterPackage -PackageName https://gist.github.com/......./xxxx.txt
```

**Note:**
- While you can use the -PackageName argument to point to any public Chocolatey package, you can also point to any URL that resolves to a plain text script like the gist we created.
- use the -DisableReboots argument to suppress automatic reboots
```
> Install-BoxstarterPackage -PackageName https://gist.github.com/......./xxxx.txt -DisableReboots
```
