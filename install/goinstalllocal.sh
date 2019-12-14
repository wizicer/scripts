#!/bin/sh

git clone https://github.com/golang/tools.git $GOPATH/src/golang.org/x/tools
git clone https://github.com/golang/lint.git $GOPATH/src/golang.org/x/lint

go get -u -v github.com/uudashr/gopkgs/cmd/gopkgs
go get -u -v github.com/mdempsky/gocode
go get -u -v github.com/rogpeppe/godef
go get -u -v golang.org/x/tools/cmd/gorename   
go get -u -v golang.org/x/tools/cmd/guru  
go get -u -v github.com/ramya-rao-a/go-outline
go get -u -v github.com/newhook/go-symbols   
go get -u -v sourcegraph.com/sqs/goreturns
go get -u -v github.com/golang/lint/golint
go get -v -u github.com/peterh/liner
go get -v -u github.com/derekparker/delve/cmd/dlv

