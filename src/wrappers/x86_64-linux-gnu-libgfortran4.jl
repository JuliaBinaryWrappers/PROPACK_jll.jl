# Autogenerated wrapper script for PROPACK_jll for x86_64-linux-gnu-libgfortran4
export libcpropack, libdpropack, libspropack, libzpropack

using libblastrampoline_jll
JLLWrappers.@generate_wrapper_header("PROPACK")
JLLWrappers.@declare_library_product(libcpropack, "libcpropack.so")
JLLWrappers.@declare_library_product(libdpropack, "libdpropack.so")
JLLWrappers.@declare_library_product(libspropack, "libspropack.so")
JLLWrappers.@declare_library_product(libzpropack, "libzpropack.so")
function __init__()
    JLLWrappers.@generate_init_header(libblastrampoline_jll)
    JLLWrappers.@init_library_product(
        libcpropack,
        "lib/libcpropack.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libdpropack,
        "lib/libdpropack.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libspropack,
        "lib/libspropack.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libzpropack,
        "lib/libzpropack.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
