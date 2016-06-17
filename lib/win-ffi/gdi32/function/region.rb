require 'win-ffi/gdi32'

module WinFFI
  module Gdi32


    # https://msdn.microsoft.com/en-us/library/dd183465(v=vs.85).aspx
    # int CombineRgn(
    #   _In_ HRGN hrgnDest,
    #   _In_ HRGN hrgnSrc1,
    #   _In_ HRGN hrgnSrc2,
    #   _In_ int  fnCombineMode)
    attach_function 'CombineRgn', [:hrgn, :hrgn, :hrgn, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd183496(v=vs.85).aspx
    # HRGN CreateEllipticRgn(
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect)
    attach_function 'CreateEllipticRgn', [:int, :int, :int, :int], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd183497(v=vs.85).aspx
    # HRGN CreateEllipticRgnIndirect(_In_ const RECT *lprc)
    attach_function 'CreateEllipticRgnIndirect', [RECT.ptr(:in)], :hrgn

  end
end