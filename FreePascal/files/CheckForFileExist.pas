(*
  Category: SWAG Title: FILE HANDLING ROUTINES
  Original name: 0028.PAS
  Description: Check for file EXIST
  Author: MARTIN RICHARDSON
  Date: 09-26-93  09:04
*)

{*****************************************************************************
 * Function ...... Exist()
 * Purpose ....... Checks for the existance of a file/directory
 * Parameters .... sExp       File/directory name to check for
 * Returns ....... TRUE if sExp exists
 * Notes ......... Not picky, will even accept wild cards
 * Author ........ Martin Richardson
 * Date .......... May 13, 1992
 *****************************************************************************}
uses Dos;

FUNCTION Exist( sExp: STRING ): BOOLEAN;
VAR s : SearchRec;
BEGIN
     FINDFIRST( sExp, AnyFile, s );
     Exist := (DOSError = 0);
END;

BEGIN
    if (Exist('1.pas')) then
        writeln('1.pas found')
    else
        writeln('1.pas not found');
END.
