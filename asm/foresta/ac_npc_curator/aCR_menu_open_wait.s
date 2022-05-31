lbl_8054C1D0:
/* 8054C1D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054C1D4  7C 08 02 A6 */	mflr r0
/* 8054C1D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054C1DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054C1E0  7C 9F 23 78 */	mr r31, r4
/* 8054C1E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8054C1E8  7C 7E 1B 78 */	mr r30, r3
/* 8054C1EC  4B E7 34 BD */	bl func_803BF6A8
/* 8054C1F0  4B E7 4A A9 */	bl mMsg_Check_MainNormalContinue
/* 8054C1F4  2C 03 00 01 */	cmpwi r3, 1
/* 8054C1F8  40 82 00 1C */	bne lbl_8054C214
/* 8054C1FC  81 9E 09 A8 */	lwz r12, 0x9a8(r30)
/* 8054C200  7F C3 F3 78 */	mr r3, r30
/* 8054C204  7F E4 FB 78 */	mr r4, r31
/* 8054C208  38 A0 00 06 */	li r5, 6
/* 8054C20C  7D 89 03 A6 */	mtctr r12
/* 8054C210  4E 80 04 21 */	bctrl 
lbl_8054C214:
/* 8054C214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054C218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054C21C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054C220  7C 08 03 A6 */	mtlr r0
/* 8054C224  38 21 00 10 */	addi r1, r1, 0x10
/* 8054C228  4E 80 00 20 */	blr 
