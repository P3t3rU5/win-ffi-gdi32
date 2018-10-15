require_relative '../emr'
require_relative '../../windows_color_space/log_color_space'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrcreatecolorspace
    class EMRCREATECOLORSPACE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihCS; end
      def ihCS=(v) end
      def lcs; end
      def lcs=(v) end

      layout emr:  EMR,
             ihCS: :dword,
             lcs:  LOGCOLORSPACE
    end

    class EMRCREATECOLORSPACEW < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihCS; end
      def ihCS=(v) end
      def lcs; end
      def lcs=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def cbDate; end
      def cbDate=(v) end
      def Data; end
      def Data=(v) end

      layout emr:     EMR,
             ihCS:    :dword,
             lcs:     LOGCOLORSPACE,
             dwFlags: :dword,
             cbDate:  :dword,
             Data:    [:byte, 1]
    end
  end
end