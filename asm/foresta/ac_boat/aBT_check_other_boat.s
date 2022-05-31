lbl_805A7184:
/* 805A7184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7188  7C 08 02 A6 */	mflr r0
/* 805A718C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7194  3B E0 00 01 */	li r31, 1
/* 805A7198  93 C1 00 08 */	stw r30, 8(r1)
/* 805A719C  7C 7E 1B 78 */	mr r30, r3
/* 805A71A0  80 04 1D B8 */	lwz r0, 0x1db8(r4)
lbl_805A71A4:
/* 805A71A4  7C 03 03 78 */	mr r3, r0
/* 805A71A8  38 80 58 4F */	li r4, 0x584f
/* 805A71AC  4B DC EB 71 */	bl Actor_info_fgName_search_sub
/* 805A71B0  28 03 00 00 */	cmplwi r3, 0
/* 805A71B4  41 82 00 1C */	beq lbl_805A71D0
/* 805A71B8  7C 03 F0 40 */	cmplw r3, r30
/* 805A71BC  41 82 00 0C */	beq lbl_805A71C8
/* 805A71C0  3B E0 00 00 */	li r31, 0
/* 805A71C4  48 00 00 0C */	b lbl_805A71D0
lbl_805A71C8:
/* 805A71C8  80 03 01 58 */	lwz r0, 0x158(r3)
/* 805A71CC  4B FF FF D8 */	b lbl_805A71A4
lbl_805A71D0:
/* 805A71D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A71D4  7F E3 FB 78 */	mr r3, r31
/* 805A71D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A71DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A71E0  7C 08 03 A6 */	mtlr r0
/* 805A71E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A71E8  4E 80 00 20 */	blr 
