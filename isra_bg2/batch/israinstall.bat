@echo off
@echo Installing audio...
    
isra_bg2\batch\oggdec.exe override\rh#is*.ogg
del override\rh#is*.ogg
del override\rh#blank.mus
    
@echo Finished installing audio.