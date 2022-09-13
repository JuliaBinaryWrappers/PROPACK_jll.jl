# Autogenerated wrapper script for PROPACK_jll for i686-w64-mingw32-libgfortran5
export libcpropack, libdpropack, libspropack, libzpropack

using libblastrampoline_jll
JLLWrappers.@generate_wrapper_header("PROPACK")
JLLWrappers.@declare_library_product(libcpropack, "libcpropack.dll")
JLLWrappers.@declare_library_product(libdpropack, "libdpropack.dll")
JLLWrappers.@declare_library_product(libspropack, "libspropack.dll")
JLLWrappers.@declare_library_product(libzpropack, "libzpropack.dll")
function __init__()
    JLLWrappers.@generate_init_header(libblastrampoline_jll)
    JLLWrappers.@init_library_product(
        libcpropack,
        "bin\\libcpropack.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libdpropack,
        "bin\\libdpropack.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libspropack,
        "bin\\libspropack.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libzpropack,
        "bin\\libzpropack.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
