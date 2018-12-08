# ------------------------------------------------------------------------------------------ windows
$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$true

Disable-UAC


# ------------------------------------------------------------------------------------------ ide & sdk
#
# visual studio full installation
Write-BoxstarterMessage "installing visual studio full (community edition)"
cinst visualstudio2017community --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

cinst expressionblend

# VS extentions
cinst resharper
cinst dotcover
cinst dotpeek
cinst ncrunch-vs2017
cinst teamcity

# VS Code
cinst vscode

# VS Code extensions
code --install-extension extension_name

# text editor
cinst atom
cinst notepadplusplus

# java and related
cinst jdk8
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


cinst unity
cinst unitywebplayer
cinst arduino


# ------------------------------------------------------------------------------------------ db
#
cinst sql-server-express
cinst sql-server-management-studio
cinst mysql
cinst mysql.workbench
cinst mysql-connector
cinst mysql.utilities
cinst postgresql
cinst mongodb
cinst sqlite



# ------------------------------------------------------------------------------------------ node and js related
#
cinst nodejs

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
node i vmd -g



# ------------------------------------------------------------------------------------------ dev tools
#
cinst git
cinst github

cinst cmder

cinst bitnami-xampp

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



# ------------------------------------------------------------------------------------------ etc ( tools & utilities & ...)
#
# Browsers
cinst googlechrome
cinst tor
cinst tor-browser
cinst brave
cinst opera
cinst firefox

cinst dropbox

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
cinst launchy
cinst mp3tag


cinst battle.net
cinst steam

cinst gimp
cinst vlc
cinst mpc-hc
cinst quicktime
cinst smplayer
cinst potplayer
cinst gom-player
cinst bsplayer

cinst handbrake
cinst makemkv
cinst ffmpeg

cinst audacity
cinst mediainfo

cinst paint.net

# anti-virus
cinst avgantivirusfree
cinst avgpctuneup
cinst avginternetsecurity

cinst inkscape

#vpn
cinst ipvanish

# stream
cinst obs-studio
cinst twitch
cinst discord

cinst teamviewer
