module WinFFI
  module Gdi32
    # Constants for PSINJECTDATA.InjectionPoint field
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162877(v=vs.85).aspx
    PsInjectFlag = enum :ps_inject_flag, [
        :BEGINSTREAM,                1,
        :PSADOBE,                    2,
        :PAGESATEND,                 3,
        :PAGES,                      4,
        :DOCNEEDEDRES,               5,
        :DOCSUPPLIEDRES,             6,
        :PAGEORDER,                  7,
        :ORIENTATION,                8,
        :BOUNDINGBOX,                9,
        :DOCUMENTPROCESSCOLORS,      10,
        :COMMENTS,                   11,
        :BEGINDEFAULTS,              12,
        :ENDDEFAULTS,                13,
        :BEGINPROLOG,                14,
        :ENDPROLOG,                  15,
        :BEGINSETUP,                 16,
        :ENDSETUP,                   17,
        :TRAILER,                    18,
        :EOF,                        19,
        :ENDSTREAM,                  20,
        :DOCUMENTPROCESSCOLORSATEND, 21,
        :PAGENUMBER,                 100,
        :BEGINPAGESETUP,             101,
        :ENDPAGESETUP,               102,
        :PAGETRAILER,                103,
        :PLATECOLOR,                 104,
        :SHOWPAGE,                   105,
        :PAGEBBOX,                   106,
        :ENDPAGECOMMENTS,            107,
        :VMSAVE,                     200,
        :VMRESTORE,                  201,
        :DLFONT,              0XDDDDDDDD
    ]

    define_prefix(:PSINJECT, PsInjectFlag)
  end
end
