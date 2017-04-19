
DLIB_NAME="dlib-19.4"

# download dlib

run(`rm -fr $(DLIB_NAME).tar.bz2`)
run(`rm -fr $(DLIB_NAME)`)
run(`wget http://dlib.net/files/$(DLIB_NAME).tar.bz2`)
run(`tar -vxjf $(DLIB_NAME).tar.bz2`)
run(`mv $(DLIB_NAME) dlib`)
run(`rm -fr $(DLIB_NAME).tar.bz2`)

# build dlib

cd("dlib/dlib")
mkdir("build")
cd("build")
run(`cmake ..`)
run(`make`)
