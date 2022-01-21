.include "macros.inc"

.section .text

.org 0x800A67A0

.global TRK_flush_cache
TRK_flush_cache:
/* 800A67A0 000A3700  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 800A67A4 000A3704  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 800A67A8 000A3708  7C A5 18 38 */	and r5, r5, r3
/* 800A67AC 000A370C  7C 65 18 50 */	subf r3, r5, r3
/* 800A67B0 000A3710  7C 84 1A 14 */	add r4, r4, r3
lbl_800A67B4:
/* 800A67B4 000A3714  7C 00 28 6C */	dcbst 0, r5
/* 800A67B8 000A3718  7C 00 28 AC */	dcbf 0, r5
/* 800A67BC 000A371C  7C 00 04 AC */	sync 0
/* 800A67C0 000A3720  7C 00 2F AC */	icbi 0, r5
/* 800A67C4 000A3724  30 A5 00 08 */	addic r5, r5, 8
/* 800A67C8 000A3728  34 84 FF F8 */	addic. r4, r4, -8
/* 800A67CC 000A372C  40 80 FF E8 */	bge lbl_800A67B4
/* 800A67D0 000A3730  4C 00 01 2C */	isync 
/* 800A67D4 000A3734  4E 80 00 20 */	blr 
