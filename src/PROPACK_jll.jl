# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule PROPACK_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("PROPACK")
JLLWrappers.@generate_main_file("PROPACK", UUID("2c99449f-f194-5e92-8ff0-13814ff41dcf"))
end  # module PROPACK_jll
