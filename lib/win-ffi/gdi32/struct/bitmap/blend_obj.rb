require_relative 'blend_function'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/ns-winddi-_blendobj
    class BLENDOBJ < FFIAdditions::Struct
      def BlendFunction; end
      def BlendFunction=(v); end

      layout BlendFunction: BLENDFUNCTION
    end
  end
end