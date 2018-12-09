# ------------------------------------------------------------------------------------------ windows
Disable-UAC
Set-ExecutionPolicy Unrestricted -Scope Process -Force
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

choco feature enable -n allowGlobalConfirmation
choco feature enable -n allowEmptyChecksums


# ************************* Windows Subsystems/Features **************************
cinst Microsoft-Hyper-V-All -source windowsFeatures
#cinst Microsoft-Windows-Subsystem-Linux -source windowsfeatures


# ------------------------------------------------------------------------------------------ ide & sdk
#
# visual studio full installation
Write-BoxstarterMessage "installing visual studio full (community edition)"
cinst visualstudio2017community --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"
refreshenv

cinst expressionblend

# VS extentions
cinst resharper
cinst dotcover
cinst dotpeek
cinst ncrunch-vs2017

# VS Code
cinst vscode
refreshenv

# VS Code extensions
#code --install-extension extension_name

# text editor
cinst atom
cinst notepadplusplus

# java and related
cinst jdk8
refreshenv

cinst eclipse
cinst springtoolsuite
cinst android-sdk
cinst androidstudio

# cpp
cinst codeblocks

#jet brains
cinst intellijidea-community
cinst pycharm-community
cinst webstorm


# ------------------------------------------------------------------------------------------ db
#
cinst sql-server-express
cinst sql-server-management-studio
cinst mongodb
cinst sqlite
cinst mysql
cinst mysql.workbench
cinst postgresql


# ------------------------------------------------------------------------------------------ node and js related
#
cinst nodejs
refreshenv

# task automation
npm i grunt -g
npm i gulp -g
npm i webpack -g

#babel
npm i babel-core -g
npm i babel-cli -g
npm i babel-preset-env -g
npm i babel-preset-react -g
npm i babel-eslint -g

# yoeman
npm i yo -g
npm i phantomjs-prebuilt -g
npm i generator-webapp -g
npm i generator-react-webpack-redux -g

# others
npm i sass -g
npm i vmd -g

# ------------------------------------------------------------------------------------------ dev tools
#
cinst git
cinst github

cinst cmder

cinst python
cinst ruby
cinst teraterm
cinst winscp
cinst putty

cinst slack

cinst postman
cinst winmerge

cinst gradle
cinst resharper
cinst markdownmonster
cinst markdowneditor
cinst stylecop
cinst jwtdecode

cinst wireshark
cinst fiddler

cinst sysinternals
cinst zoomit

cinst bitnami-xampp

# ------------------------------------------------------------------------------------------ etc ( tools & utilities & ...)
#
# Browsers
cinst googlechrome
cinst tor
cinst tor-browser
cinst brave
cinst firefox

# File Utilities
cinst 7zip
cinst winrar
cinst filezilla

cinst foxitreader
cinst skype
cinst googledrive
cinst imagemagick
cinst IrfanView
cinst irfanviewplugins
cinst mp3tag

cinst battle.net
cinst steam

cinst gimp
cinst vlc
cinst mpc-hc

cinst ffmpeg
cinst handbrake
cinst makemkv


cinst audacity
cinst mediainfo

cinst paint.net

# anti-virus
cinst avgantivirusfree
cinst avgpctuneup

cinst inkscape

#vpn
cinst ipvanish

# stream
cinst obs-studio
cinst twitch
cinst discord

cinst teamviewer
