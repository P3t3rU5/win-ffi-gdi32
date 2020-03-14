require_relative '../emr'
require_relative '../../pen/ext_log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrextcreatefontindirectw
    class EMREXTCREATEFONTINDIRECT < FFIAdditions::Struct
      attr_accessor :emr,
                    :ihPen,
                    :offBmi,
                    :cbBmi,
                    :offBits,
                    :cbBits,
                    :elp

      layout emr:     EMR,
             ihPen:   :dword,
             offBmi:  :dword,
             cbBmi:   :dword,
             offBits: :dword,
             cbBits:  :dword,
             elp:     EXTLOGPEN32
    end
  end
end