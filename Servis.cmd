@echo off

del *.~*
del *.dcu
del *.ddp
del *.dof
del *.cfg
del *.bak
del *.mb
del *.bak
del *.db
del *.px

md Yedek
md Yedek\Data
md Yedek\Material
md Yedek\Raporlar

xcopy *.* yedek /y
xcopy Data\*.* Yedek\Data /s /y
xcopy Material\*.* Yedek\Material /s /y
xcopy Raporlar\*.* Yedek\Raporlar /s /y
