lbl_8037ABCC:
/* 8037ABCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037ABD0  7C 08 02 A6 */	mflr r0
/* 8037ABD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037ABD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037ABDC  7C 7F 1B 78 */	mr r31, r3
/* 8037ABE0  80 03 01 18 */	lwz r0, 0x118(r3)
/* 8037ABE4  2C 00 00 00 */	cmpwi r0, 0
/* 8037ABE8  40 81 00 74 */	ble lbl_8037AC5C
/* 8037ABEC  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 8037ABF0  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8037ABF4  40 82 00 5C */	bne lbl_8037AC50
/* 8037ABF8  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8037ABFC  40 82 00 3C */	bne lbl_8037AC38
/* 8037AC00  38 00 00 01 */	li r0, 1
/* 8037AC04  98 1F 01 36 */	stb r0, 0x136(r31)
/* 8037AC08  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8037AC0C  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 8037AC10  98 1F 01 38 */	stb r0, 0x138(r31)
/* 8037AC14  88 1F 00 00 */	lbz r0, 0(r31)
/* 8037AC18  98 1F 01 37 */	stb r0, 0x137(r31)
/* 8037AC1C  88 7F 00 00 */	lbz r3, 0(r31)
/* 8037AC20  4B FF DC F1 */	bl func_80378910
/* 8037AC24  2C 03 00 00 */	cmpwi r3, 0
/* 8037AC28  40 82 00 10 */	bne lbl_8037AC38
/* 8037AC2C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8037AC30  60 00 00 02 */	ori r0, r0, 2
/* 8037AC34  B0 1F 00 0E */	sth r0, 0xe(r31)
lbl_8037AC38:
/* 8037AC38  7F E3 FB 78 */	mr r3, r31
/* 8037AC3C  38 80 00 04 */	li r4, 4
/* 8037AC40  4B FF FD D5 */	bl mBGMPsComp_all_ps_bitclr
/* 8037AC44  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8037AC48  60 00 00 04 */	ori r0, r0, 4
/* 8037AC4C  B0 1F 00 0E */	sth r0, 0xe(r31)
lbl_8037AC50:
/* 8037AC50  7F E3 FB 78 */	mr r3, r31
/* 8037AC54  38 80 00 08 */	li r4, 8
/* 8037AC58  4B FF FD BD */	bl mBGMPsComp_all_ps_bitclr
lbl_8037AC5C:
/* 8037AC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037AC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037AC64  7C 08 03 A6 */	mtlr r0
/* 8037AC68  38 21 00 10 */	addi r1, r1, 0x10
/* 8037AC6C  4E 80 00 20 */	blr 
