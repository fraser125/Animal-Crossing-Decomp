.include "macros.inc"

.section .text

.org 0x8008D1B8

.global DSPCheckMailToDSP
DSPCheckMailToDSP:
/* 8008D1B8 0008A118  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8008D1BC 0008A11C  A0 03 50 00 */	lhz r0, 0xCC005000@l(r3)
/* 8008D1C0 0008A120  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 8008D1C4 0008A124  4E 80 00 20 */	blr 

.global DSPCheckMailFromDSP
DSPCheckMailFromDSP:
/* 8008D1C8 0008A128  3C 60 CC 00 */	lis r3, 0xCC005004@ha
/* 8008D1CC 0008A12C  A0 03 50 04 */	lhz r0, 0xCC005004@l(r3)
/* 8008D1D0 0008A130  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 8008D1D4 0008A134  4E 80 00 20 */	blr 

.global DSPReadMailFromDSP
DSPReadMailFromDSP:
/* 8008D1D8 0008A138  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8008D1DC 0008A13C  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8008D1E0 0008A140  A0 03 00 04 */	lhz r0, 4(r3)
/* 8008D1E4 0008A144  A0 63 00 06 */	lhz r3, 6(r3)
/* 8008D1E8 0008A148  50 03 80 1E */	rlwimi r3, r0, 0x10, 0, 0xf
/* 8008D1EC 0008A14C  4E 80 00 20 */	blr 

.global DSPSendMailToDSP
DSPSendMailToDSP:
/* 8008D1F0 0008A150  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 8008D1F4 0008A154  54 60 84 3E */	srwi r0, r3, 0x10
/* 8008D1F8 0008A158  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
/* 8008D1FC 0008A15C  B0 64 50 02 */	sth r3, 0x5002(r4)
/* 8008D200 0008A160  4E 80 00 20 */	blr 