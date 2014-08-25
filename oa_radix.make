; Open Atrium Radix theme Makefile

api = 2
core = 7.x

; Parent Theme
projects[radix][type] = theme
projects[radix][version] = 3.x-dev
projects[radix][download][type] = git
projects[radix][download][branch] = 7.x-3.x
projects[radix][download][revision] = a12f216

; Bootstrap Library
projects[bootstrap_library][version] = 1.4
projects[bootstrap_library][subdir] = contrib

libraries[bootstrap][download][type] = get
libraries[bootstrap][download][url] = https://github.com/twbs/bootstrap/releases/download/v3.1.1/bootstrap-3.1.1-dist.zip
libraries[bootstrap][directory_name] = bootstrap
