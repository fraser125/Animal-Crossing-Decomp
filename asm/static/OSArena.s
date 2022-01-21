.include "macros.inc"

.section .text

.org 0x8007988C

.global OSGetArenaHi
OSGetArenaHi:
/* 8007988C 000767EC  80 6D 8D 78 */	lwz r3, __OSArenaHi-_SDA_BASE_(r13)
/* 80079890 000767F0  4E 80 00 20 */	blr 

.global OSGetArenaLo
OSGetArenaLo:
/* 80079894 000767F4  80 6D 85 F8 */	lwz r3, __OSArenaLo-_SDA_BASE_(r13)
/* 80079898 000767F8  4E 80 00 20 */	blr 

.global OSSetArenaHi
OSSetArenaHi:
/* 8007989C 000767FC  90 6D 8D 78 */	stw r3, __OSArenaHi-_SDA_BASE_(r13)
/* 800798A0 00076800  4E 80 00 20 */	blr 

.global OSSetArenaLo
OSSetArenaLo:
/* 800798A4 00076804  90 6D 85 F8 */	stw r3, __OSArenaLo-_SDA_BASE_(r13)
/* 800798A8 00076808  4E 80 00 20 */	blr 
