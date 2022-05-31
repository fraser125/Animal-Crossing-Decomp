lbl_8043A3CC:
/* 8043A3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043A3D0  7C 08 02 A6 */	mflr r0
/* 8043A3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043A3D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043A3DC  7C 9F 23 78 */	mr r31, r4
/* 8043A3E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8043A3E4  7C 7E 1B 78 */	mr r30, r3
/* 8043A3E8  4B FF A1 21 */	bl mfish_onefish_ct
/* 8043A3EC  7F C3 F3 78 */	mr r3, r30
/* 8043A3F0  7F E4 FB 78 */	mr r4, r31
/* 8043A3F4  4B FF 9B 8D */	bl mfish_base_ct
/* 8043A3F8  3C 60 80 44 */	lis r3, mfish_aroana_normal_process@ha /* 0x8043A92C@ha */
/* 8043A3FC  38 00 00 00 */	li r0, 0
/* 8043A400  38 63 A9 2C */	addi r3, r3, mfish_aroana_normal_process@l /* 0x8043A92C@l */
/* 8043A404  90 7E 00 34 */	stw r3, 0x34(r30)
/* 8043A408  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8043A40C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043A410  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043A414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043A418  7C 08 03 A6 */	mtlr r0
/* 8043A41C  38 21 00 10 */	addi r1, r1, 0x10
/* 8043A420  4E 80 00 20 */	blr 
