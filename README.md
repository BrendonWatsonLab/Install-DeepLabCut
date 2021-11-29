# Install-DeepLabCut-on-CentOS-7

Install the latest DeepLabCut

```
git clone https://github.com/BrendonWatsonLab/Install-DeepLabCut-on-CentOS-7.git
mv Install-DeepLabCut-on-CentOS-7 dlc
(cd dlc; make -j 4 2>&1 ) | tee build.log
dlc/bin/python3 -m deeplabcut
```

#Test on the latest

CentOS 7 as of Oct 6, 2021 

Arch Linux as of Nov 29, 2021 
