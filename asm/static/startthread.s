.include "macros.inc"

.section .text

.org 0x800604DC

.global osStartThread
osStartThread:
/* 800604DC 0005D43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800604E0 0005D440  7C 08 02 A6 */	mflr r0
/* 800604E4 0005D444  28 03 00 00 */	cmplwi r3, 0
/* 800604E8 0005D448  90 01 00 14 */	stw r0, 0x14(r1)
/* 800604EC 0005D44C  40 82 00 08 */	bne lbl_800604F4
/* 800604F0 0005D450  48 01 D7 ED */	bl OSGetCurrentThread
lbl_800604F4:
/* 800604F4 0005D454  48 01 E3 69 */	bl OSResumeThread
/* 800604F8 0005D458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800604FC 0005D45C  7C 08 03 A6 */	mtlr r0
/* 80060500 0005D460  38 21 00 10 */	addi r1, r1, 0x10
/* 80060504 0005D464  4E 80 00 20 */	blr 
