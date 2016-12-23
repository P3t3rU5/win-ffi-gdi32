require 'win-ffi/gdi32/enum/font/font/font_weight'
require 'win-ffi/gdi32/enum/font/font/font_charset'
require 'win-ffi/gdi32/enum/font/font/font_output_precision'
require 'win-ffi/gdi32/enum/font/font/font_clip_precision'
require 'win-ffi/gdi32/enum/font/font/font_quality'
require 'win-ffi/gdi32/enum/font/font/font_family_pitch'
require 'win-ffi/core/string_utils'

using WinFFI::StringUtils

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd145037(v=vs.85).aspx
    class LOGFONT < FFIAdditions::Struct
      layout lfHeight:                      :long,
             lfWidth:                       :long,
             lfEscapement:                  :long,
             lfOrientation:                 :long,
             lfWeight:                 FontWeight,
             lfItalic:                     :uint8,
             lfUnderline:                  :uint8,
             lfStrikeOut:                  :uint8,
             lfCharSet:               FontCharset,
             lfOutPrecision:  FontOutputPrecision,
             lfClipPrecision:   FontClipPrecision,
             lfQuality:               FontQuality,
             lfPitchAndFamily:    FontFamilyPitch,
             lfFaceName: WideInlineString.new(32)

      def face_name
        lfFaceName
      end

      encoded_setter(:lfFaceName)
    end
  end
end