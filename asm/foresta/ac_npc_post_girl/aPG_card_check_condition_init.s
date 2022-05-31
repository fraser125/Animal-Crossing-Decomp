lbl_8056D6E0:
/* 8056D6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D6E4  7C 08 02 A6 */	mflr r0
/* 8056D6E8  38 80 1B E7 */	li r4, 0x1be7
/* 8056D6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D6F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D6F4  7C 7F 1B 78 */	mr r31, r3
/* 8056D6F8  4B FF ED 6D */	bl func_8056C464
/* 8056D6FC  38 00 1B E7 */	li r0, 0x1be7
/* 8056D700  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 8056D704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D70C  7C 08 03 A6 */	mtlr r0
/* 8056D710  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D714  4E 80 00 20 */	blr 
