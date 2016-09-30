require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162907(v=vs.85).aspx
    class RECTL < FFIAdditions::Struct
      layout left:   :long,
             top:    :long,
             right:  :long,
             bottom: :long
    end
  end
end