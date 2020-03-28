# Autogenerated wrapper script for PROPACK_jll for i686-w64-mingw32-libgfortran3
export libcpropack, libzpropack, libdpropack, libspropack

using OpenBLAS_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `libcpropack`
const libcpropack_splitpath = ["bin", "libcpropack.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcpropack_path = ""

# libcpropack-specific global declaration
# This will be filled out by __init__()
libcpropack_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcpropack = "libcpropack.dll"


# Relative path to `libzpropack`
const libzpropack_splitpath = ["bin", "libzpropack.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libzpropack_path = ""

# libzpropack-specific global declaration
# This will be filled out by __init__()
libzpropack_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libzpropack = "libzpropack.dll"


# Relative path to `libdpropack`
const libdpropack_splitpath = ["bin", "libdpropack.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libdpropack_path = ""

# libdpropack-specific global declaration
# This will be filled out by __init__()
libdpropack_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libdpropack = "libdpropack.dll"


# Relative path to `libspropack`
const libspropack_splitpath = ["bin", "libspropack.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libspropack_path = ""

# libspropack-specific global declaration
# This will be filled out by __init__()
libspropack_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libspropack = "libspropack.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"PROPACK")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (OpenBLAS_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (OpenBLAS_jll.LIBPATH_list,))

    global libcpropack_path = normpath(joinpath(artifact_dir, libcpropack_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcpropack_handle = dlopen(libcpropack_path)
    push!(LIBPATH_list, dirname(libcpropack_path))

    global libzpropack_path = normpath(joinpath(artifact_dir, libzpropack_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libzpropack_handle = dlopen(libzpropack_path)
    push!(LIBPATH_list, dirname(libzpropack_path))

    global libdpropack_path = normpath(joinpath(artifact_dir, libdpropack_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libdpropack_handle = dlopen(libdpropack_path)
    push!(LIBPATH_list, dirname(libdpropack_path))

    global libspropack_path = normpath(joinpath(artifact_dir, libspropack_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libspropack_handle = dlopen(libspropack_path)
    push!(LIBPATH_list, dirname(libspropack_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

