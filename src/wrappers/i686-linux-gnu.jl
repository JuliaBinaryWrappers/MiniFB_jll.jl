# Autogenerated wrapper script for MiniFB_jll for i686-linux-gnu
export libminifb

using Xorg_libX11_jll
using xkbcommon_jll
using Libglvnd_jll
JLLWrappers.@generate_wrapper_header("MiniFB")
JLLWrappers.@declare_library_product(libminifb, "libminifb.so")
function __init__()
    JLLWrappers.@generate_init_header(Xorg_libX11_jll, xkbcommon_jll, Libglvnd_jll)
    JLLWrappers.@init_library_product(
        libminifb,
        "lib/libminifb.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
