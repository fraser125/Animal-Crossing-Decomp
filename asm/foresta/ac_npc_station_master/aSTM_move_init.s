lbl_80580280:
/* 80580280  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80580284  7C 08 02 A6 */	mflr r0
/* 80580288  38 80 00 04 */	li r4, 4
/* 8058028C  38 A0 00 01 */	li r5, 1
/* 80580290  90 01 00 24 */	stw r0, 0x24(r1)
/* 80580294  38 C0 00 03 */	li r6, 3
/* 80580298  38 E0 00 00 */	li r7, 0
/* 8058029C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805802A0  7C 7F 1B 78 */	mr r31, r3
/* 805802A4  C0 23 09 0C */	lfs f1, 0x90c(r3)
/* 805802A8  C0 03 09 10 */	lfs f0, 0x910(r3)
/* 805802AC  FC 20 08 1E */	fctiwz f1, f1
/* 805802B0  FC 00 00 1E */	fctiwz f0, f0
/* 805802B4  D8 21 00 08 */	stfd f1, 8(r1)
/* 805802B8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805802BC  81 01 00 0C */	lwz r8, 0xc(r1)
/* 805802C0  81 21 00 14 */	lwz r9, 0x14(r1)
/* 805802C4  4B FF EF 3D */	bl func_8057F200
/* 805802C8  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 805802CC  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 805802D0  90 1F 08 40 */	stw r0, 0x840(r31)
/* 805802D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805802D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805802DC  7C 08 03 A6 */	mtlr r0
/* 805802E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805802E4  4E 80 00 20 */	blr 