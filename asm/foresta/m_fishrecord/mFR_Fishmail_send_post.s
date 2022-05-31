lbl_803AC144:
/* 803AC144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC148  7C 08 02 A6 */	mflr r0
/* 803AC14C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AC154  93 C1 00 08 */	stw r30, 8(r1)
/* 803AC158  7C 9E 23 78 */	mr r30, r4
/* 803AC15C  48 03 45 4D */	bl mPr_GetPrivateIdx
/* 803AC160  48 00 74 59 */	bl mHS_get_arrange_idx
/* 803AC164  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 803AC168  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AC16C  1C A0 26 B0 */	mulli r5, r0, 0x26b0
/* 803AC170  38 80 00 0A */	li r4, 0xa
/* 803AC174  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803AC178  7F E0 2A 14 */	add r31, r0, r5
/* 803AC17C  3C 7F 00 01 */	addis r3, r31, 1
/* 803AC180  38 63 B7 18 */	addi r3, r3, -18664
/* 803AC184  48 01 07 21 */	bl mMl_chk_mail_free_space
/* 803AC188  2C 03 00 00 */	cmpwi r3, 0
/* 803AC18C  41 80 00 24 */	blt lbl_803AC1B0
/* 803AC190  1C 63 01 2A */	mulli r3, r3, 0x12a
/* 803AC194  7F C4 F3 78 */	mr r4, r30
/* 803AC198  3C 63 00 01 */	addis r3, r3, 1
/* 803AC19C  38 63 B7 18 */	addi r3, r3, -18664
/* 803AC1A0  7C 7F 1A 14 */	add r3, r31, r3
/* 803AC1A4  48 01 07 D1 */	bl mMl_copy_mail
/* 803AC1A8  38 60 00 01 */	li r3, 1
/* 803AC1AC  48 00 00 08 */	b lbl_803AC1B4
lbl_803AC1B0:
/* 803AC1B0  38 60 00 00 */	li r3, 0
lbl_803AC1B4:
/* 803AC1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AC1BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AC1C0  7C 08 03 A6 */	mtlr r0
/* 803AC1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC1C8  4E 80 00 20 */	blr 
