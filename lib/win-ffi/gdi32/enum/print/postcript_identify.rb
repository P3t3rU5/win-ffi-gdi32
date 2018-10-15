module WinFFI
  module Gdi32
    # Parameters for POSTSCRIPT_IDENTIFY escape
    PostcriptIdentify = enum :postcript_identify, [:GDICENTRIC, 0, :PSCENTRIC,  1]

    define_prefix(:PSIDENT, PostcriptIdentify)
  end
end