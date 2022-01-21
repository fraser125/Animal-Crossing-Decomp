.include "macros.inc"

.section .text

.org 0x800083F8

.global Probe_Start
Probe_Start:
/* 800083F8 00005358  4E 80 00 20 */	blr 

.global Probe_Finish
Probe_Finish:
/* 800083FC 0000535C  4E 80 00 20 */	blr 
