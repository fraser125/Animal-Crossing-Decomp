lbl_805BC4DC:
/* 805BC4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC4E0  7C 08 02 A6 */	mflr r0
/* 805BC4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC4EC  7C 7F 1B 78 */	mr r31, r3
/* 805BC4F0  38 60 00 08 */	li r3, 8
/* 805BC4F4  7F E4 FB 78 */	mr r4, r31
/* 805BC4F8  4B DD DD 6D */	bl mDemo_Check
/* 805BC4FC  2C 03 00 00 */	cmpwi r3, 0
/* 805BC500  40 82 00 4C */	bne lbl_805BC54C
/* 805BC504  7F E4 FB 78 */	mr r4, r31
/* 805BC508  38 60 00 07 */	li r3, 7
/* 805BC50C  4B DD DD 59 */	bl mDemo_Check
/* 805BC510  2C 03 00 00 */	cmpwi r3, 0
/* 805BC514  40 82 00 38 */	bne lbl_805BC54C
/* 805BC518  88 1F 09 A6 */	lbz r0, 0x9a6(r31)
/* 805BC51C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805BC520  41 82 00 08 */	beq lbl_805BC528
/* 805BC524  48 00 00 24 */	b lbl_805BC548
lbl_805BC528:
/* 805BC528  38 60 00 2F */	li r3, 0x2f
/* 805BC52C  38 80 01 68 */	li r4, 0x168
/* 805BC530  4B DB FE 51 */	bl mBGMPsComp_delete_ps_happening
/* 805BC534  38 60 00 48 */	li r3, 0x48
/* 805BC538  38 80 01 68 */	li r4, 0x168
/* 805BC53C  4B DB F8 55 */	bl mBGMPsComp_make_ps_happening
/* 805BC540  38 00 00 48 */	li r0, 0x48
/* 805BC544  98 1F 09 A6 */	stb r0, 0x9a6(r31)
lbl_805BC548:
/* 805BC548  4B DB FD 81 */	bl mBGMPsComp_delete_ps_quiet
lbl_805BC54C:
/* 805BC54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC554  7C 08 03 A6 */	mtlr r0
/* 805BC558  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC55C  4E 80 00 20 */	blr 
