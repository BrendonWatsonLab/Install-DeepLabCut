build/dlc : build/wxPython
	bin/pip3 install wheel
	bin/pip3 install "deeplabcut[gui]"
	touch $@
build/wxPython : build/python
	cd $(@D) && wget -c https://files.pythonhosted.org/packages/b9/8b/31267dd6d026a082faed35ec8d97522c0236f2e083bf15aff64d982215e1/wxPython-4.0.7.post2.tar.gz && tar xvfz wxPython-4.0.7.post2.tar.gz
	cd $(@D)/wxPython-4.0.7.post2 && ../../bin/python3 setup.py build || :
	cd $(@D)/wxPython-4.0.7.post2/wx && find . -type l -ls |awk '{print "rm", $$11 " && cp " $$13, $$11}' | bash
	cd $(@D)/wxPython-4.0.7.post2 && ../../bin/python3 setup.py install
	touch $@
build/python : 
	mkdir -p $(@D)
	cd $(@D) && wget -c https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz && tar xvfz Python-3.8.12.tgz
	cd $(@D)/Python-3.8.12 && ./configure --prefix=$(PWD) && make -j 16 && make install
	touch $@
