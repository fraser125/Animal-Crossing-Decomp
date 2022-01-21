.include "macros.inc"

.section .text

.org 0x8009C69C

.global tolower
tolower:
/* 8009C69C 000995FC  2C 03 FF FF */	cmpwi r3, -1
/* 8009C6A0 00099600  40 82 00 0C */	bne lbl_8009C6AC
/* 8009C6A4 00099604  38 60 FF FF */	li r3, -1
/* 8009C6A8 00099608  4E 80 00 20 */	blr 
lbl_8009C6AC:
/* 8009C6AC 0009960C  3C 80 80 0E */	lis r4, __lower_map@ha
/* 8009C6B0 00099610  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009C6B4 00099614  38 64 1C B0 */	addi r3, r4, __lower_map@l
/* 8009C6B8 00099618  7C 63 00 AE */	lbzx r3, r3, r0
/* 8009C6BC 0009961C  4E 80 00 20 */	blr 
