require 'win-ffi/gdi32/enum/font/ext_text_out_flag'

require 'win-ffi/core/struct/rect'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162820(v=vs.85).aspx
    class POLYTEXT < FFIAdditions::Struct
      layout x:                 :int,
             y:                 :int,
             n:                :uint,
             lpstr:          :string,
             uiFlags: ExtTextOutFlag,
             rcl:               RECT,
             pdx:           :pointer
    end
  end
end