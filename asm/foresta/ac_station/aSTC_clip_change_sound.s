lbl_805BBCB0:
/* 805BBCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BBCB4  7C 08 02 A6 */	mflr r0
/* 805BBCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BBCBC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 805BBCC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BBCC4  7C 9F 23 78 */	mr r31, r4
/* 805BBCC8  93 C1 00 08 */	stw r30, 8(r1)
/* 805BBCCC  7C 7E 1B 78 */	mr r30, r3
/* 805BBCD0  88 63 09 A5 */	lbz r3, 0x9a5(r3)
/* 805BBCD4  7C 03 00 40 */	cmplw r3, r0
/* 805BBCD8  41 82 00 44 */	beq lbl_805BBD1C
/* 805BBCDC  2C 03 00 47 */	cmpwi r3, 0x47
/* 805BBCE0  41 82 00 14 */	beq lbl_805BBCF4
/* 805BBCE4  40 80 00 18 */	bge lbl_805BBCFC
/* 805BBCE8  2C 03 00 3F */	cmpwi r3, 0x3f
/* 805BBCEC  41 82 00 08 */	beq lbl_805BBCF4
/* 805BBCF0  48 00 00 0C */	b lbl_805BBCFC
lbl_805BBCF4:
/* 805BBCF4  38 80 01 68 */	li r4, 0x168
/* 805BBCF8  4B DC 06 2D */	bl mBGMPsComp_delete_ps_demo
lbl_805BBCFC:
/* 805BBCFC  7F E3 FB 78 */	mr r3, r31
/* 805BBD00  38 80 01 68 */	li r4, 0x168
/* 805BBD04  4B DC 00 05 */	bl mBGMPsComp_make_ps_demo
/* 805BBD08  88 1E 09 A5 */	lbz r0, 0x9a5(r30)
/* 805BBD0C  28 00 00 01 */	cmplwi r0, 1
/* 805BBD10  40 82 00 08 */	bne lbl_805BBD18
/* 805BBD14  4B DC 05 B5 */	bl mBGMPsComp_delete_ps_quiet
lbl_805BBD18:
/* 805BBD18  9B FE 09 A5 */	stb r31, 0x9a5(r30)
lbl_805BBD1C:
/* 805BBD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BBD20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BBD24  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BBD28  7C 08 03 A6 */	mtlr r0
/* 805BBD2C  38 21 00 10 */	addi r1, r1, 0x10
/* 805BBD30  4E 80 00 20 */	blr 
