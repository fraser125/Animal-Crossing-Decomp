lbl_8052A51C:
/* 8052A51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A520  7C 08 02 A6 */	mflr r0
/* 8052A524  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052A52C  7C 7F 1B 78 */	mr r31, r3
/* 8052A530  4B FF FE 31 */	bl aHM1_revise_moveRange
/* 8052A534  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 8052A538  28 00 00 00 */	cmplwi r0, 0
/* 8052A53C  41 82 00 10 */	beq lbl_8052A54C
/* 8052A540  38 00 00 FF */	li r0, 0xff
/* 8052A544  98 1F 07 F6 */	stb r0, 0x7f6(r31)
/* 8052A548  48 00 00 18 */	b lbl_8052A560
lbl_8052A54C:
/* 8052A54C  A8 1F 09 14 */	lha r0, 0x914(r31)
/* 8052A550  2C 00 00 3C */	cmpwi r0, 0x3c
/* 8052A554  40 81 00 0C */	ble lbl_8052A560
/* 8052A558  38 00 00 FF */	li r0, 0xff
/* 8052A55C  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_8052A560:
/* 8052A560  A8 9F 09 24 */	lha r4, 0x924(r31)
/* 8052A564  38 7F 00 DE */	addi r3, r31, 0xde
/* 8052A568  38 A0 04 00 */	li r5, 0x400
/* 8052A56C  4B E9 05 D9 */	bl chase_angle
/* 8052A570  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8052A574  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8052A578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A57C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052A580  7C 08 03 A6 */	mtlr r0
/* 8052A584  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A588  4E 80 00 20 */	blr 
