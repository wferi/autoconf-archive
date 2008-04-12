# ===========================================================================
#       http://autoconf-archive.cryp.to/ax_check_awk_match_3parms.html
# ===========================================================================
#
# SYNOPSIS
#
#   AX_CHECK_AWK_MATCH_3PARMS([ACTION-IF-SUCCESS],[ACTION-IF-FAILURE])
#
# DESCRIPTION
#
#   Check if AWK supports match() function with 3 parameters (GNU
#   extension). If successful execute ACTION-IF-SUCCESS otherwise
#   ACTION-IF-FAILURE.
#
#   This work is heavily based upon testawk.sh script by Heiner Steven. You
#   should find his script (and related works) at
#   <http://www.shelldorado.com/articles/awkcompat.html>. Thanks to
#   Alessandro Massignan for his suggestions and extensive nawk tests on
#   FreeBSD.
#
# LAST MODIFICATION
#
#   2008-04-12
#
# COPYLEFT
#
#   Copyright (c) 2008 Francesco Salvestrini <salvestrini@users.sourceforge.net>
#
#   Copying and distribution of this file, with or without modification, are
#   permitted in any medium without royalty provided the copyright notice
#   and this notice are preserved.

AC_DEFUN([AX_CHECK_AWK_MATCH_3PARMS], [
  AX_TRY_AWK_EXPOUT([match() with 3 parameters],
    [],[ match("abc", /(b)/, a) ; print a[1]],[b],
    [$1],[$2])
])
