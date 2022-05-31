lbl_8059ABAC:
/* 8059ABAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059ABB0  7C 08 02 A6 */	mflr r0
/* 8059ABB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059ABB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059ABBC  7C 9F 23 78 */	mr r31, r4
/* 8059ABC0  38 81 00 08 */	addi r4, r1, 8
/* 8059ABC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059ABC8  7C 7E 1B 78 */	mr r30, r3
/* 8059ABCC  C0 03 02 44 */	lfs f0, 0x244(r3)
/* 8059ABD0  38 7E 00 28 */	addi r3, r30, 0x28
/* 8059ABD4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8059ABD8  C0 1E 02 48 */	lfs f0, 0x248(r30)
/* 8059ABDC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8059ABE0  4B E2 04 AD */	bl search_position_distanceXZ
/* 8059ABE4  3C 60 80 65 */	lis r3, lit_513@ha /* 0x80649FD0@ha */
/* 8059ABE8  C0 03 9F D0 */	lfs f0, lit_513@l(r3)  /* 0x80649FD0@l */
/* 8059ABEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059ABF0  40 81 00 44 */	ble lbl_8059AC34
/* 8059ABF4  38 61 00 08 */	addi r3, r1, 8
/* 8059ABF8  38 9E 00 28 */	addi r4, r30, 0x28
/* 8059ABFC  4B E2 05 35 */	bl search_position_angleY
/* 8059AC00  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 8059AC04  7C 03 00 50 */	subf r0, r3, r0
/* 8059AC08  7C 03 07 35 */	extsh. r3, r0
/* 8059AC0C  7C 03 00 D0 */	neg r0, r3
/* 8059AC10  41 80 00 08 */	blt lbl_8059AC18
/* 8059AC14  7C 60 1B 78 */	mr r0, r3
lbl_8059AC18:
/* 8059AC18  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8059AC1C  40 80 00 34 */	bge lbl_8059AC50
/* 8059AC20  7F C3 F3 78 */	mr r3, r30
/* 8059AC24  7F E4 FB 78 */	mr r4, r31
/* 8059AC28  4B FF FF 49 */	bl aIHD_set_move_info
/* 8059AC2C  90 7E 02 3C */	stw r3, 0x23c(r30)
/* 8059AC30  48 00 00 20 */	b lbl_8059AC50
lbl_8059AC34:
/* 8059AC34  80 7E 02 3C */	lwz r3, 0x23c(r30)
/* 8059AC38  34 63 FF FF */	addic. r3, r3, -1
/* 8059AC3C  40 80 00 10 */	bge lbl_8059AC4C
/* 8059AC40  7F C3 F3 78 */	mr r3, r30
/* 8059AC44  7F E4 FB 78 */	mr r4, r31
/* 8059AC48  4B FF FF 29 */	bl aIHD_set_move_info
lbl_8059AC4C:
/* 8059AC4C  90 7E 02 3C */	stw r3, 0x23c(r30)
lbl_8059AC50:
/* 8059AC50  A8 7E 00 36 */	lha r3, 0x36(r30)
/* 8059AC54  80 1E 02 38 */	lwz r0, 0x238(r30)
/* 8059AC58  7C 63 02 14 */	add r3, r3, r0
/* 8059AC5C  B0 7E 00 36 */	sth r3, 0x36(r30)
/* 8059AC60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059AC64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059AC68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059AC6C  7C 08 03 A6 */	mtlr r0
/* 8059AC70  38 21 00 20 */	addi r1, r1, 0x20
/* 8059AC74  4E 80 00 20 */	blr 
