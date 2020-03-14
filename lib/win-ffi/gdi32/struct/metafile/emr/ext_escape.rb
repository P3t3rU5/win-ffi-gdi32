require_relative '../emr'

module WinFFI
  module Gdi32
    class EMREXTESCAPE < FFIAdditions::Struct
      attr_accessor :emr, :iEscape, :cbEscData, :EscData

      layout emr:       EMR,
             iEscape:   :int,
             cbEscData: :int,
             EscData:   [:byte, 1]
    end

    class EMRDRAWESCAPE < EMREXTESCAPE; end
  end
end