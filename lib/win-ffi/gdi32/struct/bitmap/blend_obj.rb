require_relative 'blend_function'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-blendobj
    class BLENDOBJ < FFIAdditions::Struct
      attr_accessor :BlendFunction

      layout BlendFunction: BLENDFUNCTION
    end
  end
end