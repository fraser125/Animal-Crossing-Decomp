lbl_8051A374:
/* 8051A374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A378  7C 08 02 A6 */	mflr r0
/* 8051A37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051A384  7C 7F 1B 78 */	mr r31, r3
/* 8051A388  93 C1 00 08 */	stw r30, 8(r1)
/* 8051A38C  7C 9E 23 78 */	mr r30, r4
/* 8051A390  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8051A394  28 00 00 FF */	cmplwi r0, 0xff
/* 8051A398  40 82 00 40 */	bne lbl_8051A3D8
/* 8051A39C  4B FF FB 21 */	bl func_80519EBC
/* 8051A3A0  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 8051A3A4  28 00 00 08 */	cmplwi r0, 8
/* 8051A3A8  40 82 00 94 */	bne lbl_8051A43C
/* 8051A3AC  38 00 80 00 */	li r0, -32768
/* 8051A3B0  38 A0 08 00 */	li r5, 0x800
/* 8051A3B4  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 8051A3B8  38 00 00 01 */	li r0, 1
/* 8051A3BC  7F C3 F3 78 */	mr r3, r30
/* 8051A3C0  38 80 00 00 */	li r4, 0
/* 8051A3C4  B0 BF 09 26 */	sth r5, 0x926(r31)
/* 8051A3C8  38 A0 00 00 */	li r5, 0
/* 8051A3CC  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8051A3D0  4B EC 09 B5 */	bl mPlib_request_main_demo_wait_type1
/* 8051A3D4  48 00 00 68 */	b lbl_8051A43C
lbl_8051A3D8:
/* 8051A3D8  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 8051A3DC  2C 00 00 FF */	cmpwi r0, 0xff
/* 8051A3E0  40 82 00 5C */	bne lbl_8051A43C
/* 8051A3E4  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8051A3E8  2C 00 00 02 */	cmpwi r0, 2
/* 8051A3EC  41 82 00 28 */	beq lbl_8051A414
/* 8051A3F0  40 80 00 4C */	bge lbl_8051A43C
/* 8051A3F4  2C 00 00 01 */	cmpwi r0, 1
/* 8051A3F8  40 80 00 08 */	bge lbl_8051A400
/* 8051A3FC  48 00 00 40 */	b lbl_8051A43C
lbl_8051A400:
/* 8051A400  38 00 03 FF */	li r0, 0x3ff
/* 8051A404  38 80 00 02 */	li r4, 2
/* 8051A408  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8051A40C  4B FF FE 71 */	bl aEBRK_setupAction
/* 8051A410  48 00 00 2C */	b lbl_8051A43C
lbl_8051A414:
/* 8051A414  38 00 00 01 */	li r0, 1
/* 8051A418  7F C3 F3 78 */	mr r3, r30
/* 8051A41C  98 1F 08 31 */	stb r0, 0x831(r31)
/* 8051A420  4B EB FD B1 */	bl mPlib_request_main_wait_type3
/* 8051A424  7F E3 FB 78 */	mr r3, r31
/* 8051A428  38 80 00 00 */	li r4, 0
/* 8051A42C  4B FF FA AD */	bl aEBRK_set_pl_talk_lock
/* 8051A430  7F E3 FB 78 */	mr r3, r31
/* 8051A434  38 80 00 03 */	li r4, 3
/* 8051A438  4B FF FE 45 */	bl aEBRK_setupAction
lbl_8051A43C:
/* 8051A43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051A444  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051A448  7C 08 03 A6 */	mtlr r0
/* 8051A44C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A450  4E 80 00 20 */	blr 
