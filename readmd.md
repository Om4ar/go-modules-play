# golang intro!

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
go modules is something like npm for nodejs 
please read this for more info about go modules
[https://blog.golang.org/using-go-modules](https://blog.golang.org/using-go-modules)
[https://github.com/golang/go/wiki/Modules](https://github.com/golang/go/wiki/Modules)

[video 1](https://www.youtube.com/watch?v=aeF3l-zmPsY)
[video 2 ](https://www.youtube.com/watch?v=H_4eRD8aegk)

`note: go mod downloads the need dependencies inside GOPATH/pkg`
go mod init <NAME_OF_YOUR_MODULE>

what should be commited 
[https://github.com/MuhamadOmr/go-modules-play/tree/7495a601794ad71e5f014096c63cc7bd50767fc3](https://github.com/MuhamadOmr/go-modules-play/tree/7495a601794ad71e5f014096c63cc7bd50767fc3)

what should be we are working on in the dev 
[https://github.com/MuhamadOmr/go-modules-play/tree/d00a92ed31ff2ca15c74d47c1333398532efa256](https://github.com/MuhamadOmr/go-modules-play/tree/d00a92ed31ff2ca15c74d47c1333398532efa256)

example for using go modules : 
create `main.go` starting file for our app
```go
package  main

import  ("fmt")

func  main()  {
fmt.Println("hello world")
}
```
start installizeing the project as a go module
```
go mod init github.com/org/myrepo
```
this will name the module as github.com/org/myrepo .. naming 
 

