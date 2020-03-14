require_relative '../emr'
require_relative '../../windows_color_space/log_color_space'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrcreatecolorspace
    class EMRCREATECOLORSPACE < FFIAdditions::Struct
      attr_accessor :emr, :ihCS, :lcs

      layout emr:  EMR,
             ihCS: :dword,
             lcs:  LOGCOLORSPACE
    end

    class EMRCREATECOLORSPACEW < FFIAdditions::Struct
      attr_accessor :emr, :ihCS, :lcs, :dwFlags, :cbDate, :Data

      layout emr:     EMR,
             ihCS:    :dword,
             lcs:     LOGCOLORSPACE,
             dwFlags: :dword,
             cbDate:  :dword,
             Data:    [:byte, 1]
    end
  end
end