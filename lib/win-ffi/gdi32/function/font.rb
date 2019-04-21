require 'win-ffi/core/struct/size'

require 'win-ffi/gdi32/enum/font/weight'
require 'win-ffi/gdi32/enum/font/charset'
require 'win-ffi/gdi32/enum/font/output_precision'
require 'win-ffi/gdi32/enum/font/clip_precision'
require 'win-ffi/gdi32/enum/font/quality'
require 'win-ffi/gdi32/enum/font/family'
require 'win-ffi/gdi32/enum/font/pitch'
require 'win-ffi/gdi32/struct/font/log_font'

require_relative '../enum/font/ext_text_out_flag'
require_relative '../enum/font/resource_flag'
require_relative '../enum/font/get_character_placement_flag'
require_relative '../enum/font/get_glyph_outline_format'
require_relative '../enum/font/text_align_flag'
require_relative '../enum/font/get_glyph_indices_flag'

require_relative '../struct/font/abc'
require_relative '../struct/font/abcfloat'
require_relative '../struct/font/enum_log_font'
require_relative '../struct/font/enum_log_font_extended_design_vector'
require_relative '../struct/font/glyph_set'
require_relative '../struct/font/glyph_metrics'
require_relative '../struct/font/gcp_results'
require_relative '../struct/font/kerning_pair'
require_relative '../struct/font/mat2'
require_relative '../struct/font/outline_text_metric'
require_relative '../struct/font/poly_text'
require_relative '../struct/font/rasterizer_status'
require_relative '../struct/font/text_metric'

module WinFFI
  module Gdi32

    typedef :pointer, :hfont

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-addfontmemresourceex
    # @param [FFI::Pointer] pbFont
    # @param [Integer] cbFont
    # @param [FFI::Pointer] pdv
    # @param [FFI::Pointer] pcFonts
    # @return [FFI::Pointer]
    def self.AddFontMemResourceEx(pbFont, cbFont, pdv, pcFonts) end
    attach_function 'AddFontMemResourceEx', [:pointer, :dword, :pointer, :pointer], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-addfontresource
    # @param [String] lpszFilename
    # @return [Integer]
    def self.AddFontResource(lpszFilename) end
    encoded_function 'AddFontResource', [:string], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-addfontresourceex
    # @param [String] lpszFilename
    # @param [Integer] fl
    # @param [FFI::Pointer] pdv
    # @return [Integer]
    def self.AddFontResourceEx(lpszFilename, fl, pdv) end
    encoded_function 'AddFontResourceEx', [:string, FontResourceFlag, :pointer], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createfont
    # @param [Integer] nHeight
    # @param [Integer] nWidth
    # @param [Integer] nEscapement
    # @param [Integer] nOrientation
    # @param [Integer] fnWeight
    # @param [Integer] fdwItalic
    # @param [Integer] fdwUnderline
    # @param [Integer] fdwStrikeOut
    # @param [Integer] fdwCharSet
    # @param [Integer] fdwOutputPrecision
    # @param [Integer] fdwClipPrecision
    # @param [Integer] fdwQuality
    # @param [Integer] fdwPitchAndFamily
    # @param [String] lpszFace
    # @return [FFI::Pointer]
    def self.CreateFont(
        nHeight, nWidth, nEscapement, nOrientation, fnWeight, fdwItalic, fdwUnderline, fdwStrikeOut, fdwCharSet,
            fdwOutputPrecision, fdwClipPrecision, fdwQuality, fdwPitchAndFamily, lpszFace) end
    encoded_function 'CreateFont',
                     [:int, :int, :int, :int, FontWeight, :dword, :dword, :uint, FontCharset, FontOutputPrecision,
                      FontClipPrecision, FontQuality, :dword, :string], :hfont

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createfontindirect
    # @param [FFI::Pointer] lplf
    # @return [FFI::Pointer]
    def self.CreateFontIndirect(lplf) end
    encoded_function 'CreateFontIndirect', [LOGFONT.ptr(:in)], :hfont

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createfontindirectex
    # @param [FFI::Pointer] penumlfex
    # @return [FFI::Pointer]
    def self.CreateFontIndirectEx(penumlfex) end
    encoded_function 'CreateFontIndirectEx', [ENUMLOGFONTEXDV.ptr(:in)], :hfont

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createscalablefontresource
    # @param [Integer] fdwHidden
    # @param [String] lpszFontRes
    # @param [String] lpszFontFile
    # @param [String] lpszCurrentPath
    # @return [true, false]
    def self.CreateScalableFontResource(fdwHidden, lpszFontRes, lpszFontFile, lpszCurrentPath) end
    encoded_function 'CreateScalableFontResource', [:dword, :string, :string, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/gdi/enableeudc
    # @param [true, false] fEnableEUDC
    # @return [true, false]
    def self.EnableEUDC(fEnableEUDC) end
    attach_function 'EnableEUDC', [:bool], :bool

    # https://msdn.microsoft.com/en-us/library/dd162618(v=vs.85).aspx
    # int CALLBACK EnumFontFamExProc(
    #   const LOGFONT *lpelfe,
    #   const TEXTMETRIC *lpntme,
    #   DWORD FontType,
    #   LPARAM lParam )
    EnumFontFamExProc = callback 'EnumFontFamExProc', [LOGFONT.ptr, TEXTMETRIC.ptr, :dword, :lparam], :int

    # https://msdn.microsoft.com/en-us/library/dd162621(v=vs.85).aspx
    # int CALLBACK EnumFontFamProc(
    #   _In_  ENUMLOGFONT *lpelf,
    #   _In_  NEWTEXTMETRIC *lpntm,
    #   _In_  DWORD FontType,
    #   _In_  LPARAM lParam )
    EnumFontFamProc = callback 'EnumFontFamProc', [ENUMLOGFONT.ptr(:in), TEXTMETRIC.ptr(:in), :dword, :lparam], :int

    # https://msdn.microsoft.com/en-us/library/dd162623(v=vs.85).aspx
    # int CALLBACK EnumFontsProc(
    #   _In_  const LOGFONT *lplf,
    #   _In_  const TEXTMETRIC *lptm,
    #   _In_  DWORD dwType,
    #   _In_  LPARAM lpData )
    EnumFontsProc = callback 'EnumFontsProc', [ENUMLOGFONT.ptr(:in), TEXTMETRIC.ptr(:in), :dword, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumfontfamilies
    # @param [FFI::Pointer] hdc
    # @param [String] lpszFamily
    # @param [EnumFontFamProc] lpEnumFontFamProc
    # @param [Integer] lParam
    # @return [Integer]
    def self.EnumFontFamilies(hdc, lpszFamily, lpEnumFontFamProc, lParam) end
    encoded_function 'EnumFontFamilies', [:hdc, :string, EnumFontFamProc, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumfontfamiliesex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpLogfont
    # @param [EnumFontFamExProc] lpEnumFontFamExProc
    # @param [Integer] lParam
    # @param [Integer] dwFlags
    # @return [Integer]
    def self.EnumFontFamiliesEx(hdc, lpLogfont, lpEnumFontFamExProc, lParam, dwFlags) end
    encoded_function 'EnumFontFamiliesEx', [:hdc, LOGFONT.ptr(:in), EnumFontFamExProc, :lparam, :dword], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumfonts
    # @param [FFI::Pointer] hdc
    # @param [String] lpFaceName
    # @param [EnumFontsProc] lpFontFunc
    # @param [Integer] lParam
    # @return [Integer]
    def self.EnumFonts(hdc, lpFaceName, lpFontFunc, lParam) end
    encoded_function 'EnumFonts', [:hdc, :string, EnumFontsProc, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-exttextout
    # @param [FFI::Pointer] hdc
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] fuOptions
    # @param [FFI::Pointer] lprc
    # @param [String] lpString
    # @param [Integer] cbCount
    # @param [FFI::Pointer] lpDx
    # @return [true, blue]
    def self.ExtTextOut(hdc, x, y, fuOptions, lprc, lpString, cbCount, lpDx) end
    encoded_function 'ExtTextOut', [:hdc, :int, :int, ExtTextOutFlag, RECT.ptr(:in), :string, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getaspectratiofilterex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpAspectRatio
    # @return [true, false]
    def self.GetAspectRatioFilterEx(hdc, lpAspectRatio) end
    attach_function 'GetAspectRatioFilterEx', [:hdc, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharabcwidths
    # @param [FFI::Pointer] hdc
    # @param [Integer] uFirstChar
    # @param [Integer] uLastChar
    # @param [FFI::Pointer] lpabc
    # @return [true, false]
    def self.GetCharABCWidths(hdc, uFirstChar, uLastChar, lpabc) end
    encoded_function 'GetCharABCWidths', [:hdc, :uint, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharabcwidthsfloat
    # @param [FFI::Pointer] hdc
    # @param [Integer] iFirstChar
    # @param [Integer] iLastChar
    # @param [FFI::Pointer] lpABCF
    # @return [true, false]
    def self.GetCharABCWidthsFloat(hdc, iFirstChar, iLastChar, lpABCF) end
    encoded_function 'GetCharABCWidthsFloat', [:hdc, :uint, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharabcwidthsi
    # @param [FFI::Pointer] hdc
    # @param [Integer] giFirst
    # @param [Integer] cgi
    # @param [FFI::Pointer] pgi
    # @param [FFI::Pointer] lpabc
    # @return [true, false]
    def self.GetCharABCWidthsI(hdc, giFirst, cgi, pgi, lpabc) end
    attach_function 'GetCharABCWidthsI', [:hdc, :uint, :uint, :pointer, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharacterplacement
    # @param [FFI::Pointer] hdc
    # @param [String] lpString
    # @param [Integer] nCount
    # @param [Integer] nMaxExtent
    # @param [FFI::Pointer] lpResults
    # @param [Integer] dwFlags
    # @return [Integer]
    def self.GetCharacterPlacement(hdc, lpString, nCount, nMaxExtent, lpResults, dwFlags) end
    encoded_function 'GetCharacterPlacement',
                     [:hdc, :string, :int, :int, GCP_RESULTS.ptr, GetCharacterPlacementFlag], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharwidth
    # @param [FFI::Pointer] hdc
    # @param [Integer] iFirstChar
    # @param [Integer] iLastChar
    # @param [FFI::Pointer] lpBuffer
    # @return [true, false]
    def self.GetCharWidth(hdc, iFirstChar, iLastChar, lpBuffer) end
    encoded_function 'GetCharWidth', [:hdc, :uint, :uint, :pointer], :bool


    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharwidth32
    # @param [FFI::Pointer] hdc
    # @param [Integer] iFirstChar
    # @param [Integer] iLastChar
    # @param [FFI::Pointer] lpBuffer
    # @return [true, false]
    def self.GetCharWidth32(hdc, iFirstChar, iLastChar, lpBuffer) end
    encoded_function 'GetCharWidth32', [:hdc, :uint, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharwidthfloat
    # @param [FFI::Pointer] hdc
    # @param [Integer] iFirstChar
    # @param [Integer] iLastChar
    # @param [FFI::Pointer] pxBuffer
    # @return [true, false]
    def self.GetCharWidthFloat(hdc, iFirstChar, iLastChar, pxBuffer) end
    encoded_function 'GetCharWidthFloat', [:hdc, :uint, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharwidthi
    # @param [FFI::Pointer] hdc
    # @param [Integer] giFirst
    # @param [Integer] cgi
    # @param [FFI::Pointer] pgi
    # @param [FFI::Pointer] lpBuffer
    # @return [true, false]
    def self.GetCharWidthI(hdc, giFirst, cgi, pgi, lpBuffer) end
    attach_function 'GetCharWidthI', [:hdc, :uint, :uint, :pointer, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getfontdata
    # @param [FFI::Pointer] hdc
    # @param [Integer] dwTable
    # @param [Integer] dwOffset
    # @param [FFI::Pointer] lpvBuffer
    # @param [Integer] cbData
    # @return [Integer]
    def self.GetFontData(hdc, dwTable, dwOffset, lpvBuffer, cbData) end
    attach_function 'GetFontData', [:hdc, :dword, :dword, :pointer, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getfontlanguageinfo
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetFontLanguageInfo(hdc) end
    attach_function 'GetFontLanguageInfo', [:hdc], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getfontunicoderanges
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpgs
    # @return [Integer]
    def self.GetFontUnicodeRanges(hdc, lpgs) end
    attach_function 'GetFontUnicodeRanges', [:hdc, GLYPHSET.ptr(:out)], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getglyphindices
    # @param [FFI::Pointer] hdc
    # @param [String] lpstr
    # @param [Integer] c
    # @param [FFI::Pointer] pgi
    # @param [Integer] fl
    # @return [Integer]
    def self.GetGlyphIndices(hdc, lpstr, c, pgi, fl) end
    encoded_function 'GetGlyphIndices', [:hdc, :string, :int, :pointer, GetGlyphIndicesFlag], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getglyphoutline
    # @param [FFI::Pointer] hdc
    # @param [Integer] uChar
    # @param [Integer] uFormat
    # @param [FFI::Pointer] lpgm
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] lpvBuffer
    # @param [FFI::Pointer] lpmat2
    # @return [Integer]
    def self.GetGlyphOutline(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2) end
    encoded_function 'GetGlyphOutline',
                     [:hdc, :uint, GetGlyphOutlineFormat, GLYPHMETRICS.ptr(:out), :dword, :pointer, MAT2.ptr(:in)], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getkerningpairs
    # @param [FFI::Pointer] hdc
    # @param [Integer] nNumPairs
    # @param [FFI::Pointer] lpkrnpair
    # @return [Integer]
    def self.GetKerningPairs(hdc, nNumPairs, lpkrnpair) end
    encoded_function 'GetKerningPairs', [:hdc, :dword, :pointer], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getoutlinetextmetrics
    # @param [FFI::Pointer] hdc
    # @param [Integer] cbData
    # @param [FFI::Pointer] lpOTM
    # @return [Integer]
    def self.GetOutlineTextMetrics(hdc, cbData, lpOTM) end
    encoded_function 'GetOutlineTextMetrics', [:hdc, :uint, OUTLINETEXTMETRIC.ptr(:out)], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getrasterizercaps
    # @param [FFI::Pointer] lprs
    # @param [Integer] cb
    # @return [true, false]
    def self.GetRasterizerCaps(lprs, cb) end
    attach_function 'GetRasterizerCaps',  [RASTERIZER_STATUS.ptr(:out), :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextalign
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetTextAlign(hdc) end
    attach_function 'GetTextAlign', [:hdc], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcharacterextra
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetTextCharacterExtra(hdc) end
    attach_function 'GetTextCharacterExtra', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcolor
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetTextColor(hdc) end
    attach_function 'GetTextColor', [:hdc], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentexpoint
    # @param [FFI::Pointer] hdc
    # @param [String] lpszStr
    # @param [Integer] cchString
    # @param [Integer] nMaxExtent
    # @param [FFI::Pointer] lpnFit
    # @param [FFI::Pointer] alpDx
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.GetTextExtentExPoint(hdc, lpszStr, cchString, nMaxExtent, lpnFit, alpDx, lpSize) end
    encoded_function 'GetTextExtentExPoint',
                     [:hdc, :string, :int, :int, :pointer, :pointer, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentexpointi
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] pgiIn
    # @param [Integer] cgi
    # @param [Integer] nMaxExtent
    # @param [FFI::Pointer] lpnFit
    # @param [FFI::Pointer] alpDx
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.GetTextExtentExPointI(hdc, pgiIn, cgi, nMaxExtent, lpnFit, alpDx, lpSize) end
    attach_function 'GetTextExtentExPointI',
                    [:hdc, :pointer, :int, :int, :pointer, :pointer, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentpoint
    # @param [FFI::Pointer] hdc
    # @param [Strig] lpString
    # @param [Integer] cbString
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.GetTextExtentPoint(hdc, lpString, cbString, lpSize) end
    encoded_function 'GetTextExtentPoint', [:hdc, :string, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentpoint
    # @param [FFI::Pointer] hdc
    # @param [String] lpString
    # @param [Integer] c
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.GetTextExtentPoint32(hdc, lpString, c, lpSize) end
    encoded_function 'GetTextExtentPoint32', [:hdc, :string, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentpointi
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] pgiIn
    # @param [Integer] cgi
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.GetTextExtentPointI(hdc, pgiIn, cgi, lpSize) end
    attach_function 'GetTextExtentPointI', [:hdc, :pointer, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextface
    # @param [FFI::Pointer] hdc
    # @param [Integer] nCount
    # @param [String] lpFaceName
    # @return [Integer]
    def self.GetTextFace(hdc, nCount, lpFaceName) end
    encoded_function 'GetTextFace', [:hdc, :int, :pointer], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextmetrics
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lptm
    # @return [true, false]
    def self.GetTextMetrics(hdc, lptm) end
    encoded_function 'GetTextMetrics', [:hdc, TEXTMETRIC.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polytextout
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] pptxt
    # @param [Integer] cStrings
    # @return [true, false]
    def self.PolyTextOut(hdc, pptxt, cStrings) end
    encoded_function 'PolyTextOut', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-removefontmemresourceex
    # @param [FFI::Pointer] fh
    # @return [true, false]
    def self.RemoveFontMemResourceEx(fh) end
    attach_function 'RemoveFontMemResourceEx', [:handle], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-removefontresource
    # @param [String] lpFileName
    # @return [true, false]
    def self.RemoveFontResource(lpFileName) end
    encoded_function 'RemoveFontResource', [:string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-removefontresourceex
    # @param [String] lpFileName
    # @param [Integer] fl
    # @param [FFI::Pointer] pdv
    # @return [true, false]
    def self.RemoveFontResourceEx(lpFileName, fl, pdv) end
    encoded_function 'RemoveFontResourceEx', [:string, :dword, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmapperflags
    # @param [FFI::Pointer] lpFileName
    # @param [Integer] dwFlag
    # @return [Integer]
    def self.SetMapperFlags(lpFileName, dwFlag) end
    attach_function 'SetMapperFlags', [:hdc, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-settextalign
    # @param [FFI::Pointer] hdc
    # @param [Integer] fMode
    # @return [Integer]
    def self.SetTextAlign(hdc, fMode) end
    attach_function 'SetTextAlign', [:hdc, TextAlignFlag], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-settextcharacterextra
    # @param [FFI::Pointer] hdc
    # @param [Integer] nCharExtra
    # @return [Integer]
    def self.SetTextCharacterExtra(hdc, nCharExtra) end
    attach_function 'SetTextCharacterExtra', [:hdc, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-settextcolor
    # @param [FFI::Pointer] hdc
    # @param [Integer] crColor
    # @return [Integer]
    def self.SetTextColor(hdc, crColor) end
    attach_function 'SetTextColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-settextjustification x
    # @param [FFI::Pointer] hdc
    # @param [Integer] nBreakExtra
    # @param [Integer] nBreakCount
    # @return [true, false]
    def self.SetTextJustification(hdc, nBreakExtra, nBreakCount) end
    attach_function 'SetTextJustification', [:hdc, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-textout
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXStart
    # @param [Integer] nYStart
    # @param [String] lpString
    # @param [Integer] cchString
    def self.TextOut(hdc, nXStart, nYStart, lpString, cchString) end
    encoded_function 'TextOut', [:hdc, :int, :int, :string, :int], :bool
  end
end