# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule MiniFB_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("MiniFB")
JLLWrappers.@generate_main_file("MiniFB", UUID("b93afbca-07d8-5443-9979-bb4221978155"))
end  # module MiniFB_jll
