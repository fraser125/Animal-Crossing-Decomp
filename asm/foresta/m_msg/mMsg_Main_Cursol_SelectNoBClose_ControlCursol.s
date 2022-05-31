lbl_803C4CEC:
/* 803C4CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4CF0  7C 08 02 A6 */	mflr r0
/* 803C4CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4CF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4CFC  7C 9F 23 78 */	mr r31, r4
/* 803C4D00  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4D04  4B FF B3 45 */	bl func_803C0048
/* 803C4D08  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4D0C  7C 00 1A 14 */	add r0, r0, r3
/* 803C4D10  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4D14  4B FB E8 2D */	bl func_80383540
/* 803C4D18  4B FB F7 D1 */	bl mChoice_no_b_close_set
/* 803C4D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4D20  38 60 00 00 */	li r3, 0
/* 803C4D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4D28  7C 08 03 A6 */	mtlr r0
/* 803C4D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4D30  4E 80 00 20 */	blr 
