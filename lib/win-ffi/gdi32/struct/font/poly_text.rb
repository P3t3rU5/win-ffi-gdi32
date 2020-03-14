require 'win-ffi/core/struct/rect'

require_relative '../../enum/font/ext_text_out_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-polytexta
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-polytextw
    class POLYTEXT < FFIAdditions::Struct
      attr_accessor :x, :y, :n, :lpstr, :uiFlags, :rcl, :pdx

      layout x:       :int,
             y:       :int,
             n:       :uint,
             lpstr:   :string,
             uiFlags: ExtTextOutFlag,
             rcl:     RECT,
             pdx:     :pointer
    end
  end
end