require_relative '../../enum/bitmap/alpha_channel_blend_function'
require_relative '../../enum/bitmap/alpha_channel_format'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_blendfunction
    class BLENDFUNCTION < FFIAdditions::Struct
      def BlendOp; end
      def BlendOp=(v); end
      def BlendFlags; end
      def BlendFlags=(v); end
      def SourceConstantAlpha; end
      def SourceConstantAlpha=(v); end
      def AlphaFormat; end
      def AlphaFormat=(v); end

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