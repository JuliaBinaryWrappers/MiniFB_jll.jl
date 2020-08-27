# Autogenerated wrapper script for MiniFB_jll for x86_64-w64-mingw32
export libminifb

using Xorg_libX11_jll
using Xorg_xorgproto_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libminifb`
const libminifb_splitpath = ["bin", "libminifb.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libminifb_path = ""

# libminifb-specific global declaration
# This will be filled out by __init__()
libminifb_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libminifb = "libminifb.dll"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # Initialize PATH and LIBPATH environment variable listings
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Xorg_libX11_jll.PATH_list, Xorg_xorgproto_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Xorg_libX11_jll.LIBPATH_list, Xorg_xorgproto_jll.LIBPATH_list,))

    global libminifb_path = normpath(joinpath(artifact_dir, libminifb_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libminifb_handle = dlopen(libminifb_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libminifb_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()
