require_relative '../../enum/bitmap/alpha_channel_blend_function'
require_relative '../../enum/bitmap/alpha_channel_format'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-blendfunction
    class BLENDFUNCTION < FFIAdditions::Struct
      attr_accessor :BlendOp,
                    :BlendFlags,
                    :SourceConstantAlpha,
                    :AlphaFormat

      layout BlendOp:             AlphaChannelBlendFunction,
             BlendFlags:          :byte,
             SourceConstantAlpha: :byte,
             AlphaFormat:         AlphaChannelFormat

      def initialize
        super
        self.BlendFlags = 0
      end

      private :BlendFlags, :BlendFlags=
    end
  end
end