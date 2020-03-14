require_relative '../emr'
require_relative '../../font/extended_log_font'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrextcreatefontindirectw
    class EMREXTCREATEFONTINDIRECT < FFIAdditions::Struct
      attr_accessor :emr, :ihFont, :elfw

      layout emr:    EMR,
             ihFont: :dword,
             elfw:   EXTLOGFONT
    end
  end
end