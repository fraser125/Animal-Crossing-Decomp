lbl_8059FC48:
/* 8059FC48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059FC4C  7C 08 02 A6 */	mflr r0
/* 8059FC50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059FC54  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8059FC58  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8059FC5C  90 81 00 08 */	stw r4, 8(r1)
/* 8059FC60  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059FC64  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8059FC68  38 61 00 08 */	addi r3, r1, 8
/* 8059FC6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059FC70  4B E0 77 C1 */	bl mFI_GetUnitFG
/* 8059FC74  28 03 00 00 */	cmplwi r3, 0
/* 8059FC78  38 80 00 01 */	li r4, 1
/* 8059FC7C  41 82 00 1C */	beq lbl_8059FC98
/* 8059FC80  A0 03 00 00 */	lhz r0, 0(r3)
/* 8059FC84  28 00 08 3C */	cmplwi r0, 0x83c
/* 8059FC88  41 80 00 0C */	blt lbl_8059FC94
/* 8059FC8C  28 00 08 4D */	cmplwi r0, 0x84d
/* 8059FC90  40 81 00 08 */	ble lbl_8059FC98
lbl_8059FC94:
/* 8059FC94  38 80 00 00 */	li r4, 0
lbl_8059FC98:
/* 8059FC98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059FC9C  7C 83 23 78 */	mr r3, r4
/* 8059FCA0  7C 08 03 A6 */	mtlr r0
/* 8059FCA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8059FCA8  4E 80 00 20 */	blr 
