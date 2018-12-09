## Warning:
* Read: [retiring-the-boxstarter-web-launcher](http://www.hurryupandwait.io/blog/retiring-the-boxstarter-web-launcher)

# Method 2:  Web launcher
Step-1: Create powershell script (in github of somewhere)
Step-2: Use Internet Explorer of Chrome with [Click-Once Extention](https://chrome.google.com/webstore/detail/windows-remix-clickonce-h/dgpgholdldjjbcmpeckiephjigdpikan)
Step-3: Goto url
https://boxstarter.org/package/nr/url?<raw-url-of-ps1-script>

Example: https://boxstarter.org/package/nr/url?https://github.com/hovermind/dev-env/blob/master/ultimate-dev-env.ps1

Notes:   
* nr means no reboot. if you want reboot you can remove it from url
* you can use local ps1 script
```
> START https://boxstarter.org/package/nr/url?c:\myscript.txt
```
* by default the web launch URLs will not work outside of Internet Explorer or if Internet Explorer is not your default browser. You need to install a "Click-Once" extension for non-IE browsers. 
