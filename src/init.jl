
using Cxx

@static if is_apple()
    if @__DIR__ != nothing
        const DLIB_PATH = "$(@__DIR__)/../deps/build/dlib/dlib/build/libdlib.dylib"
    else
        const DLIB_PATH = Pkg.dir("Dlib", "deps", "build", "dlib", "dlib", "build", "libdlib.dylib")
    end
end
        


function init()
    Libdl.dlopen(DLIB_PATH, Libdl.RTLD_GLOBAL)
end
