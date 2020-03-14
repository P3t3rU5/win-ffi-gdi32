require_relative '../emr'

module WinFFI
  module Gdi32
    class EMREXTESCAPE < FFIAdditions::Struct
      attr_accessor :emr,:iEscape,:cbDriver, :cbEscData, :EscData

      layout emr:       EMR,
             iEscape:   :int,
             cbDriver:  :int,
             cbEscData: :int,
             EscData:   [:byte, 1]
    end
  end
end