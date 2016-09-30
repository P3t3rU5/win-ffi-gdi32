require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class HANDLETABLE < FFIAdditions::Struct
      layout objectHandle: :pointer
    end
  end
end