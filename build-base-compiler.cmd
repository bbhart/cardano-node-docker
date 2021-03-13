@echo off
set cabal-ver=%1
set ghc-ver=%2
if not defined cabal-ver set "cabal-ver=3.2.0.0"
if not defined ghc-ver set "ghc-ver=8.10.2"

echo Cabal is %cabal-ver%
echo GHC os %ghc-ver%

docker build -f BaseCompiler.Dockerfile --build-arg GHC_VERSION=%ghc-ver% --build-arg CABAL_VERSION=%cabal-ver% --no-cache -t "adalove/centos:8-ghc%ghc-ver%-c%cabal-ver%" .
