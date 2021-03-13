@echo off
docker build -f Base.Dockerfile --no-cache --pull -t "adalove/centos:8" .
