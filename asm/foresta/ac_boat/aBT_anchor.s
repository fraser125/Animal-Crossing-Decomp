lbl_805A81F8:
/* 805A81F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A81FC  7C 08 02 A6 */	mflr r0
/* 805A8200  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8208  7C 7F 1B 78 */	mr r31, r3
/* 805A820C  4B FF F1 19 */	bl aBT_check_alive
/* 805A8210  2C 03 00 00 */	cmpwi r3, 0
/* 805A8214  40 82 00 0C */	bne lbl_805A8220
/* 805A8218  38 00 FF FF */	li r0, -1
/* 805A821C  90 1F 02 B4 */	stw r0, 0x2b4(r31)
lbl_805A8220:
/* 805A8220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8228  7C 08 03 A6 */	mtlr r0
/* 805A822C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8230  4E 80 00 20 */	blr 
