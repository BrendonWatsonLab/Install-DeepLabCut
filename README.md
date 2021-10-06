# Install-DeepLabCut-on-CentOS-7

Install the latest DeepLabCut

```
git clone https://github.com/BrendonWatsonLab/Install-DeepLabCut-on-CentOS-7.git
mv Install-DeepLabCut-on-CentOS-7 dlc
cd dlc
make 2>&1 | tee build.log
bin/python3 -m deeplabcut
```
