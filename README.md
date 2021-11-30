# Install-DeepLabCut
Install the latest DeepLabCut

```
git clone https://github.com/BrendonWatsonLab/Install-DeepLabCut.git
mv Install-DeepLabCut dlc
(cd dlc; make 2>&1 ) | tee build.log
dlc/bin/python3 -m deeplabcut
```

# Tested on the latest

CentOS 7 as of Oct 6, 2021 

Arch Linux as of Nov 29, 2021 
