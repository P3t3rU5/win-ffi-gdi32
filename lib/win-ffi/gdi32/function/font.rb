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
    # HANDLE AddFontMemResourceEx( _In_  PVOID pbFont, _In_  DWORD cbFont, _In_  PVOID pdv, _In_  DWORD *pcFonts )
    def self.AddFontMemResourceEx(pbFont, cbFont, pdv, pcFonts) end
    attach_function 'AddFontMemResourceEx', [:pointer, :dword, :pointer, :pointer], :handle

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-addfontresource
    # int AddFontResource( _In_  LPCTSTR lpszFilename )
    def self.AddFontResource(lpszFilename) end
    encoded_function 'AddFontResource', [:string], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-addfontresourceex
    # int AddFontResourceEx( _In_  LPCTSTR lpszFilename, _In_  DWORD fl, _In_  PVOID pdv )
    def self.AddFontResourceEx(lpszFilename, fl, pdv) end
    encoded_function 'AddFontResourceEx', [:string, FontResourceFlag, :pointer], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createfont
    # HFONT CreateFont(
    #   __in  int nHeight,
    #   __in  int nWidth,
    #   __in  int nEscapement,
    #   __in  int nOrientation,
    #   __in  int fnWeight,
    #   __in  DWORD fdwItalic,
    #   __in  DWORD fdwUnderline,
    #   __in  DWORD fdwStrikeOut,
    #   __in  DWORD fdwCharSet,
    #   __in  DWORD fdwOutputPrecision,
    #   __in  DWORD fdwClipPrecision,
    #   __in  DWORD fdwQuality,
    #   __in  DWORD fdwPitchAndFamily,
    #   __in  LPCTSTR lpszFace)
    def self.CreateFont(
        nHeight, nWidth, nEscapement, nOrientation, fnWeight, fdwItalic, fdwUnderline, fdwStrikeOut, fdwCharSet,
            fdwOutputPrecision, fdwClipPrecision, fdwQuality, fdwPitchAndFamily, lpszFace) end
    encoded_function 'CreateFont',
                     [:int, :int, :int, :int, FontWeight, :dword, :dword, :uint, FontCharset, FontOutputPrecision,
                      FontClipPrecision, FontQuality, :dword, :string], :hfont

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createfontindirect
    # HFONT CreateFontIndirect( _In_  const LOGFONT *lplf )
    def self.CreateFontIndirect(lplf) end
    encoded_function 'CreateFontIndirect', [LOGFONT.ptr(:in)], :hfont

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createfontindirectex
    # HFONT CreateFontIndirectEx( _In_  const ENUMLOGFONTEXDV *penumlfex )
    def self.CreateFontIndirectEx(penumlfex) end
    encoded_function 'CreateFontIndirectEx', [ENUMLOGFONTEXDV], :hfont

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createscalablefontresource
    # BOOL CreateScalableFontResource(
    #   _In_  DWORD fdwHidden,
    #   _In_  LPCTSTR lpszFontRes,
    #   _In_  LPCTSTR lpszFontFile,
    #   _In_  LPCTSTR lpszCurrentPath )
    def self.CreateScalableFontResource(fdwHidden, lpszFontRes, lpszFontFile, lpszCurrentPath) end
    encoded_function 'CreateScalableFontResource', [:dword, :string, :string, :string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enableeudc
    # BOOL EnableEUDC( _In_  HDC BOOL fEnableEUDC )
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
    # int EnumFontFamilies(
    #   _In_  HDC hdc,
    #   _In_  LPCTSTR lpszFamily,
    #   _In_  FONTENUMPROC lpEnumFontFamProc,
    #   _In_  LPARAM lParam )
    def self.EnumFontFamilies(hdc, lpszFamily, lpEnumFontFamProc, lParam) end
    encoded_function 'EnumFontFamilies', [:hdc, :string, EnumFontFamProc, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumfontfamiliesex
    # int EnumFontFamiliesEx(
    #   _In_  HDC hdc,
    #   _In_  LPLOGFONT lpLogfont,
    #   _In_  FONTENUMPROC lpEnumFontFamExProc,
    #   _In_  LPARAM lParam,
    #   DWORD dwFlags )
    def self.EnumFontFamiliesEx(hdc, lpLogfont, lpEnumFontFamExProc, lParam, dwFlags) end
    encoded_function 'EnumFontFamiliesEx', [:hdc, LOGFONT.ptr(:in), EnumFontFamExProc, :lparam, :dword], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumfonts
    # int EnumFonts( _In_  HDC hdc, _In_  LPCTSTR lpFaceName, _In_  FONTENUMPROC lpFontFunc, _In_  LPARAM lParam )
    def self.EnumFonts(hdc, lpFaceName, lpFontFunc, lParam) end
    encoded_function 'EnumFonts', [:hdc, :string, EnumFontsProc, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-exttextout
    # BOOL ExtTextOut(
    #   _In_  HDC hdc,
    #   _In_  int X,
    #   _In_  int Y,
    #   _In_  UINT fuOptions,
    #   _In_  const RECT *lprc,
    #   _In_  LPCTSTR lpString,
    #   _In_  UINT cbCount,
    #   _In_  const INT *lpDx )
    def self.ExtTextOut(hdc, x, y, fuOptions, lprc, lpString, cbCount, lpDx) end
    encoded_function 'ExtTextOut', [:hdc, :int, :int, ExtTextOutFlag, RECT.ptr(:in), :string, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getaspectratiofilterex
    # BOOL GetAspectRatioFilterEx( _In_   HDC hdc, _Out_  LPSIZE lpAspectRatio )
    def self.GetAspectRatioFilterEx(hdc, lpAspectRatio) end
    attach_function 'GetAspectRatioFilterEx', [:hdc, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharabcwidths
    # BOOL GetCharABCWidths( _In_   HDC hdc, _In_   UINT uFirstChar, _In_   UINT uLastChar, _Out_  LPABC lpabc )
    def self.GetCharABCWidths(hdc, uFirstChar, uLastChar, lpabc) end
    encoded_function 'GetCharABCWidths', [:hdc, :uint, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharabcwidthsfloat
    # BOOL GetCharABCWidthsFloat(_In_ HDC hdc, _In_ UINT iFirstChar, _In_ UINT iLastChar, _Out_ LPABCFLOAT lpABCF )
    def self.GetCharABCWidthsFloat(hdc, iFirstChar, iLastChar, lpABCF) end
    encoded_function 'GetCharABCWidthsFloat', [:hdc, :uint, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharabcwidthsi
    # BOOL GetCharABCWidthsI(_In_ HDC hdc, _In_ UINT giFirst, _In_ UINT cgi, _In_ LPWORD pgi, _Out_ LPABC lpabc )
    def self.GetCharABCWidthsI(hdc, giFirst, cgi, pgi, lpabc) end
    attach_function 'GetCharABCWidthsI', [:hdc, :uint, :uint, :pointer, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharacterplacement
    # DWORD GetCharacterPlacement(
    #   _In_     HDC hdc,
    #   _In_     LPCTSTR lpString,
    #   _In_     int nCount,
    #   _In_     int nMaxExtent,
    #   _Inout_  LPGCP_RESULTS lpResults,
    #   _In_     DWORD dwFlags )
    def self.GetCharacterPlacement(hdc, lpString, nCount, nMaxExtent, lpResults, dwFlags) end
    encoded_function 'GetCharacterPlacement',
                     [:hdc, :string, :int, :int, GCP_RESULTS.ptr, GetCharacterPlacementFlag], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharwidth
    # BOOL GetCharWidth( _In_   HDC hdc, _In_   UINT iFirstChar, _In_   UINT iLastChar, _Out_  LPINT lpBuffer )
    def self.GetCharWidth(hdc, iFirstChar, iLastChar, lpBuffer) end
    encoded_function 'GetCharWidth', [:hdc, :uint, :uint, :pointer], :bool


    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharwidth32
    # BOOL GetCharWidth32( _In_   HDC hdc, _In_   UINT iFirstChar, _In_   UINT iLastChar, _Out_  LPINT lpBuffer )
    def self.GetCharWidth32(hdc, iFirstChar, iLastChar, lpBuffer) end
    encoded_function 'GetCharWidth32', [:hdc, :uint, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharwidthfloat
    # BOOL GetCharWidthFloat( _In_   HDC hdc, _In_   UINT iFirstChar, _In_   UINT iLastChar, _Out_  PFLOAT pxBuffer )
    def self.GetCharWidthFloat(hdc, iFirstChar, iLastChar, pxBuffer) end
    encoded_function 'GetCharWidthFloat', [:hdc, :uint, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcharwidthi
    # BOOL GetCharWidthI(_In_ HDC hdc, _In_ UINT giFirst, _In_ UINT cgi, _In_ LPWORD pgi, _Out_ LPINT lpBuffer )
    def self.GetCharWidthI(hdc, giFirst, cgi, pgi, lpBuffer) end
    attach_function 'GetCharWidthI', [:hdc, :uint, :uint, :pointer, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getfontdata
    # DWORD GetFontData(
    #   _In_   HDC hdc,
    #   _In_   DWORD dwTable,
    #   _In_   DWORD dwOffset,
    #   _Out_  LPVOID lpvBuffer,
    #   _In_   DWORD cbData )
    def self.GetFontData(hdc, dwTable, dwOffset, lpvBuffer, cbData) end
    attach_function 'GetFontData', [:hdc, :dword, :dword, :pointer, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getfontlanguageinfo
    # DWORD GetFontLanguageInfo( _In_  HDC hdc )
    def self.GetFontLanguageInfo(hdc) end
    attach_function 'GetFontLanguageInfo', [:hdc], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getfontunicoderanges
    # DWORD GetFontUnicodeRanges( _In_   HDC hdc, _Out_  LPGLYPHSET lpgs )
    def self.GetFontUnicodeRanges(hdc, lpgs) end
    attach_function 'GetFontUnicodeRanges', [:hdc, GLYPHSET.ptr(:out)], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getglyphindices
    # DWORD GetGlyphIndices( _In_   HDC hdc, _In_   LPCTSTR lpstr, _In_   int c, _Out_  LPWORD pgi, _In_   DWORD fl )
    def self.GetGlyphIndices(hdc, lpstr, c, pgi, fl) end
    encoded_function 'GetGlyphIndices', [:hdc, :string, :int, :pointer, GetGlyphIndicesFlag], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getglyphoutline
    # DWORD GetGlyphOutline(
    #   _In_   HDC hdc,
    #   _In_   UINT uChar,
    #   _In_   UINT uFormat,
    #   _Out_  LPGLYPHMETRICS lpgm,
    #   _In_   DWORD cbBuffer,
    #   _Out_  LPVOID lpvBuffer,
    #   _In_   const MAT2 *lpmat2 )
    def self.GetGlyphOutline(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2) end
    encoded_function 'GetGlyphOutline',
                     [:hdc, :uint, GetGlyphOutlineFormat, GLYPHMETRICS.ptr(:out), :dword, :pointer, MAT2.ptr(:in)], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getkerningpairs
    # DWORD GetKerningPairs( _In_   HDC hdc, _In_   DWORD nNumPairs, _Out_  LPKERNINGPAIR lpkrnpair )
    def self.GetKerningPairs(hdc, nNumPairs, lpkrnpair) end
    encoded_function 'GetKerningPairs', [:hdc, :dword, :pointer], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getoutlinetextmetrics
    # UINT GetOutlineTextMetrics( _In_       HDC hdc, _In_       UINT cbData, _Out_opt_  LPOUTLINETEXTMETRIC lpOTM )
    def self.GetOutlineTextMetrics(hdc, cbData, lpOTM) end
    encoded_function 'GetOutlineTextMetrics', [:hdc, :uint, OUTLINETEXTMETRIC], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getrasterizercaps
    # BOOL GetRasterizerCaps( _Out_  LPRASTERIZER_STATUS lprs, _In_   UINT cb )
    def self.GetRasterizerCaps(lprs, cb) end
    attach_function 'GetRasterizerCaps',  [RASTERIZER_STATUS.ptr(:out), :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextalign
    # UINT GetTextAlign( _In_  HDC hdc )
    def self.GetTextAlign(hdc) end
    attach_function 'GetTextAlign', [:hdc], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcharacterextra
    # int GetTextCharacterExtra( _In_  HDC hdc )
    def self.GetTextCharacterExtra(hdc) end
    attach_function 'GetTextCharacterExtra', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextcolor
    # COLORREF GetTextColor( _In_  HDC hdc )
    def self.GetTextColor(hdc) end
    attach_function 'GetTextColor', [:hdc], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentexpoint
    # BOOL GetTextExtentExPoint(
    #   _In_   HDC hdc,
    #   _In_   LPCTSTR lpszStr,
    #   _In_   int cchString,
    #   _In_   int nMaxExtent,
    #   _Out_  LPINT lpnFit,
    #   _Out_  LPINT alpDx,
    #   _Out_  LPSIZE lpSize )
    def self.GetTextExtentExPoint(hdc, lpszStr, cchString, nMaxExtent, lpnFit, alpDx, lpSize) end
    encoded_function 'GetTextExtentExPoint',
                     [:hdc, :string, :int, :int, :pointer, :pointer, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentexpointi
    # BOOL GetTextExtentExPointI(
    #   _In_   HDC hdc,
    #   _In_   LPWORD pgiIn,
    #   _In_   int cgi,
    #   _In_   int nMaxExtent,
    #   _Out_  LPINT lpnFit,
    #   _Out_  LPINT alpDx,
    #   _Out_  LPSIZE lpSize )
    def self.GetTextExtentExPointI(hdc, pgiIn, cchString, cgi, nMaxExtent, lpnFit, alpDx, lpSize) end
    attach_function 'GetTextExtentExPointI',
                    [:hdc, :pointer, :int, :int, :pointer, :pointer, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentpoint
    # BOOL GetTextExtentPoint( _In_   HDC hdc, _In_   LPCTSTR lpString, _In_   int cbString, _Out_  LPSIZE lpSize )
    def self.GetTextExtentPoint(hdc, lpString, cbString, lpSize) end
    encoded_function 'GetTextExtentPoint', [:hdc, :string, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentpoint
    # BOOL GetTextExtentPoint32( _In_   HDC hdc, _In_   LPCTSTR lpString, _In_   int c, _Out_  LPSIZE lpSize )
    def self.GetTextExtentPoint32(hdc, lpString, c, lpSize) end
    encoded_function 'GetTextExtentPoint32', [:hdc, :string, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextextentpointi
    # BOOL GetTextExtentPointI( _In_   HDC hdc, _In_   LPWORD pgiIn, _In_   int cgi, _Out_  LPSIZE lpSize )
    def self.GetTextExtentPointI(hdc, pgiIn, cgi, lpSize) end
    attach_function 'GetTextExtentPointI', [:hdc, :pointer, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextface
    # int GetTextFace( _In_   HDC hdc, _In_   int nCount, _Out_  LPTSTR lpFaceName )
    def self.GetTextFace(hdc, nCount, lpFaceName) end
    encoded_function 'GetTextFace', [:hdc, :int, :pointer], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gettextmetrics
    # BOOL GetTextMetrics( _In_   HDC hdc, _Out_  LPTEXTMETRIC lptm )
    def self.GetTextMetrics(hdc, lptm) end
    encoded_function 'GetTextMetrics', [:hdc, TEXTMETRIC.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polytextout
    # BOOL PolyTextOut( _In_  HDC hdc, _In_  const POLYTEXT *pptxt, _In_  int cStrings )
    def self.PolyTextOut(hdc, pptxt, cStrings) end
    encoded_function 'PolyTextOut', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-removefontmemresourceex
    # BOOL RemoveFontMemResourceEx( _In_  HANDLE fh )
    def self.RemoveFontMemResourceEx(fh) end
    attach_function 'RemoveFontMemResourceEx', [:handle], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-removefontresource
    # BOOL RemoveFontResource( _In_  LPCTSTR lpFileName )
    def self.RemoveFontResource(lpFileName) end
    encoded_function 'RemoveFontResource', [:string], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-removefontresourceex
    # BOOL RemoveFontResourceEx( _In_  LPCTSTR lpFileName, _In_  DWORD fl, _In_  PVOID pdv )
    def self.RemoveFontResourceEx(lpFileName, fl, pdv) end
    encoded_function 'RemoveFontResourceEx', [:string, :dword, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmapperflags
    # DWORD SetMapperFlags( _In_  HDC hdc, _In_  DWORD dwFlag )
    def self.SetMapperFlags(lpFileName, dwFlag) end
    attach_function 'SetMapperFlags', [:hdc, :dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-settextalign
    # UINT SetTextAlign( _In_  HDC hdc, _In_  UINT fMode )
    def self.SetTextAlign(hdc, fMode) end
    attach_function 'SetTextAlign', [:hdc, TextAlignFlag], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-settextcharacterextra
    # int SetTextCharacterExtra( _In_  HDC hdc, _In_  int nCharExtra )
    def self.SetTextCharacterExtra(hdc, nCharExtra) end
    attach_function 'SetTextCharacterExtra', [:hdc, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-settextcolor
    # COLORREF SetTextColor( _In_  HDC hdc, _In_  COLORREF crColor )
    def self.SetTextColor(hdc, crColor) end
    attach_function 'SetTextColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-settextjustification x
    # BOOL SetTextJustification( _In_  HDC hdc, _In_  int nBreakExtra, _In_  int nBreakCount )
    def self.SetTextJustification(hdc, nBreakExtra, nBreakCount) end
    attach_function 'SetTextJustification', [:hdc, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-textout
    # BOOL TextOut( _In_  HDC hdc, _In_  int nXStart, _In_  int nYStart, _In_  LPCTSTR lpString, _In_  int cchString )
    def self.TextOut(hdc, nXStart, nYStart, lpString, cchString) end
    encoded_function 'TextOut', [:hdc, :int, :int, :string, :int], :bool
  end
end