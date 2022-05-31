lbl_805D96B0:
/* 805D96B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D96B4  7C 08 02 A6 */	mflr r0
/* 805D96B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D96BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D96C0  7C 7F 1B 78 */	mr r31, r3
/* 805D96C4  A8 83 00 24 */	lha r4, 0x24(r3)
/* 805D96C8  2C 04 00 00 */	cmpwi r4, 0
/* 805D96CC  40 81 00 18 */	ble lbl_805D96E4
/* 805D96D0  38 04 FF FF */	addi r0, r4, -1
/* 805D96D4  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 805D96D8  4B FF F6 A1 */	bl mED_set_idxcol_inLineWidth
/* 805D96DC  38 00 00 01 */	li r0, 1
/* 805D96E0  98 1F 00 15 */	stb r0, 0x15(r31)
lbl_805D96E4:
/* 805D96E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D96E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D96EC  7C 08 03 A6 */	mtlr r0
/* 805D96F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805D96F4  4E 80 00 20 */	blr 
