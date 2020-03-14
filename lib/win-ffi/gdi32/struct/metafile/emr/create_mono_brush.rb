require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrcreatemonobrush
    class EMRCREATEMONOBRUSH < FFIAdditions::Struct
      attr_accessor :emr,
                    :ihBrush,
                    :iUsage,
                    :offBmi,
                    :cbBmi,
                    :offBits,
                    :cbBits

      layout emr:     EMR,
             ihBrush: :dword,
             iUsage:  :dword,
             offBmi:  :dword,
             cbBmi:   :dword,
             offBits: :dword,
             cbBits:  :dword
    end
  end
end