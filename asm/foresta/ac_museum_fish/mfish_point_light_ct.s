lbl_80431348:
/* 80431348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043134C  7C 08 02 A6 */	mflr r0
/* 80431350  38 A0 00 00 */	li r5, 0
/* 80431354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80431358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043135C  7C 7F 1B 78 */	mr r31, r3
/* 80431360  93 C1 00 08 */	stw r30, 8(r1)
/* 80431364  7C 9E 23 78 */	mr r30, r4
/* 80431368  4B FF FC 9D */	bl mfish_point_ligh_pos_get
/* 8043136C  7F E3 FB 78 */	mr r3, r31
/* 80431370  7F C4 F3 78 */	mr r4, r30
/* 80431374  38 A0 00 01 */	li r5, 1
/* 80431378  4B FF FC 8D */	bl mfish_point_ligh_pos_get
/* 8043137C  3C 9F 00 01 */	addis r4, r31, 1
/* 80431380  7F C3 F3 78 */	mr r3, r30
/* 80431384  A8 04 4D BC */	lha r0, 0x4dbc(r4)
/* 80431388  38 A0 00 00 */	li r5, 0
/* 8043138C  38 C0 00 96 */	li r6, 0x96
/* 80431390  38 E0 00 FF */	li r7, 0xff
/* 80431394  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 80431398  38 84 4D 08 */	addi r4, r4, 0x4d08
/* 8043139C  4B F8 85 31 */	bl mEnv_ReservePointLight
/* 804313A0  3C 9F 00 01 */	addis r4, r31, 1
/* 804313A4  38 A0 00 00 */	li r5, 0
/* 804313A8  B0 64 4D B8 */	sth r3, 0x4db8(r4)
/* 804313AC  7F C3 F3 78 */	mr r3, r30
/* 804313B0  38 C0 00 96 */	li r6, 0x96
/* 804313B4  38 E0 00 FF */	li r7, 0xff
/* 804313B8  A8 04 4D BE */	lha r0, 0x4dbe(r4)
/* 804313BC  38 84 4D 14 */	addi r4, r4, 0x4d14
/* 804313C0  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 804313C4  4B F8 85 09 */	bl mEnv_ReservePointLight
/* 804313C8  3C 9F 00 01 */	addis r4, r31, 1
/* 804313CC  38 00 00 00 */	li r0, 0
/* 804313D0  B0 64 4D BA */	sth r3, 0x4dba(r4)
/* 804313D4  B0 04 4D C0 */	sth r0, 0x4dc0(r4)
/* 804313D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804313DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804313E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804313E4  7C 08 03 A6 */	mtlr r0
/* 804313E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804313EC  4E 80 00 20 */	blr 
