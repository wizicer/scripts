@echo off

cd ..
if exist .bashrc del .bashrc
mklink .bashrc scripts\bashrc /h
if exist .bash_profile del .bash_profile
mklink .bash_profile scripts\bash_profile /h

mklink /j bin scripts\bin
