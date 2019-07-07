# golang intro!

## reference 
- [golang intro!](#golang-intro)
	- [reference](#reference)
	- [Installation](#Installation)
		- [for vscode only ( install golang development dependencies )](#for-vscode-only--install-golang-development-dependencies)
	- [go modules for dependency management](#go-modules-for-dependency-management)
		- [go commands](#go-commands)
		- [examples of code working with go modules](#examples-of-code-working-with-go-modules)

## Installation 

latest stable version 12.6
```
wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
```
extract and move
```
sudo tar -xvf go1.12.6.linux-amd64.tar.gz
sudo mv go /usr/local
```

setup golang evnironment variables 
```
sudo nano ~/.bashrc
```
then add the next to access go binaries/tools and source code
```
# go binaries located 
export GOROOT=/usr/local/go
# source code for go projects and downloaded packages
export GOPATH=$HOME/go
# go built code here
export GOBIN=$GOPATH/bin
# setting the path to access binaries in both go root and go path 
export PATH="$HOME/bin:$HOME/.local/bin:$GOROOT/bin"
```
then load the .bashrc config
```
source .bashrc
```
### for vscode only ( install golang development dependencies )
install `go` extenstion 
1. run `Go: Install/Update Tools` command in vscode and install needed development dependencies  
2. go to `settings` and change  Go: Format Tool to `goimports`

## go modules for dependency management 
go modules is something like package.json for javascript projects ,
please read this for more info about go modules
[https://blog.golang.org/using-go-modules](https://blog.golang.org/using-go-modules)

[https://github.com/golang/go/wiki/Modules](https://github.com/golang/go/wiki/Modules)

video tutorials  

[video 1](https://www.youtube.com/watch?v=aeF3l-zmPsY)

[video 2 ](https://www.youtube.com/watch?v=H_4eRD8aegk)

### go commands 
`go mod init <NAME_OF_YOUR_MODULE>` => start initializing the project as a go module, name of the module should be related to github repository path

`go build ` => building the project will detect and download download used go packages then would build the go project from the folder 

`go mod edit --replace github.com/org/repo=../localFolderOfModule`  => command that would temporarly use the local developed module before it is committed

`go get ./..` => find all used modules and download them for go.mod without building the project

`go mode why -m github.com/org/repo` => would tell what is the tree usage of a module used from our go.mod

note: `go mod` command downloads the need dependencies inside GOPATH/pkg


### examples of code working with go modules  

notice go.mod and how it is using replace to use the local folder for the go module, normally go module would fetched from vsc (github, ... ) and not from local folder like usage of modules in JavaScript for example

[example: go modules in local development](https://github.com/MuhamadOmr/go-modules-play/tree/d00a92ed31ff2ca15c74d47c1333398532efa256)

[example: working with when go.mod modules should commited](https://github.com/MuhamadOmr/go-modules-play/tree/7495a601794ad71e5f014096c63cc7bd50767fc3)