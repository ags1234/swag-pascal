(*
  Category: SWAG Title: MEMORY/DPMI MANAGEMENT ROUTINES
  Original name: 0044.PAS
  Description: Stack Use 2
  Author: PER-ERIC LARSSON
  Date: 01-27-94  12:22
*)

{
> Does anyone know if there is any way to check how much of the stack your
> program is using at any given moment?  I have Turbo Debugger if that makes
> a difference.
}

Function Stackpos : word; assembler;
asm
  mov ax,sp
end;

{
This should give You a indication on how the stack is used - otherwise look
at SP in the registers - It should start of at the size you stated for the
program and shrink down to zero as your program crashes :-)
}
