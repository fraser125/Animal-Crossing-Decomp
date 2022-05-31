lbl_8057DB78:
/* 8057DB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DB7C  7C 08 02 A6 */	mflr r0
/* 8057DB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DB84  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8057DB88  28 00 00 03 */	cmplwi r0, 3
/* 8057DB8C  40 82 00 0C */	bne lbl_8057DB98
/* 8057DB90  38 A0 00 0D */	li r5, 0xd
/* 8057DB94  48 00 06 AD */	bl aSHM_setup_think_proc
lbl_8057DB98:
/* 8057DB98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DB9C  7C 08 03 A6 */	mtlr r0
/* 8057DBA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DBA4  4E 80 00 20 */	blr 
