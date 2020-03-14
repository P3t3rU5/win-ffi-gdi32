require_relative 'font_signature'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-charsetinfo
    class CHARSETINFO < FFIAdditions::Struct
      attr_accessor :ciCharset, :ciACP, :fs

      layout ciCharset: :uint,
             ciACP:     :uint,
             fs:        FONTSIGNATURE
    end
  end
end