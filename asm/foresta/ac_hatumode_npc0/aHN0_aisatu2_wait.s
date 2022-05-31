lbl_8052B684:
/* 8052B684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B688  7C 08 02 A6 */	mflr r0
/* 8052B68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B694  7C 9F 23 78 */	mr r31, r4
/* 8052B698  38 80 00 07 */	li r4, 7
/* 8052B69C  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B6A0  7C 7E 1B 78 */	mr r30, r3
/* 8052B6A4  38 60 00 01 */	li r3, 1
/* 8052B6A8  4B E7 27 25 */	bl mEv_get_save_area
/* 8052B6AC  A0 03 00 02 */	lhz r0, 2(r3)
/* 8052B6B0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8052B6B4  41 82 00 1C */	beq lbl_8052B6D0
/* 8052B6B8  88 BE 09 A2 */	lbz r5, 0x9a2(r30)
/* 8052B6BC  7F C3 F3 78 */	mr r3, r30
/* 8052B6C0  7F E4 FB 78 */	mr r4, r31
/* 8052B6C4  38 A5 00 01 */	addi r5, r5, 1
/* 8052B6C8  98 BE 09 A2 */	stb r5, 0x9a2(r30)
/* 8052B6CC  48 00 03 7D */	bl aHN0_setup_think_proc
lbl_8052B6D0:
/* 8052B6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B6D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B6DC  7C 08 03 A6 */	mtlr r0
/* 8052B6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B6E4  4E 80 00 20 */	blr 
