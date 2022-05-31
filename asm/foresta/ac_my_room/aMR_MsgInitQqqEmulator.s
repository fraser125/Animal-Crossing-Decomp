lbl_80475CDC:
/* 80475CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475CE0  7C 08 02 A6 */	mflr r0
/* 80475CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475CEC  80 03 03 F0 */	lwz r0, 0x3f0(r3)
/* 80475CF0  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80475CF4  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80475CF8  1C 00 08 58 */	mulli r0, r0, 0x858
/* 80475CFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80475D00  7C 63 02 15 */	add. r3, r3, r0
/* 80475D04  41 82 00 50 */	beq lbl_80475D54
/* 80475D08  A0 63 00 00 */	lhz r3, 0(r3)
/* 80475D0C  38 80 00 00 */	li r4, 0
/* 80475D10  4B F7 1A C5 */	bl mRmTp_FtrIdx2FtrItemNo
/* 80475D14  3C 80 81 1D */	lis r4, ftr_name@ha /* 0x811CE678@ha */
/* 80475D18  7C 7F 1B 78 */	mr r31, r3
/* 80475D1C  38 64 E6 78 */	addi r3, r4, ftr_name@l /* 0x811CE678@l */
/* 80475D20  7F E4 FB 78 */	mr r4, r31
/* 80475D24  4B F3 FC 81 */	bl mIN_copy_name_str
/* 80475D28  7F E3 FB 78 */	mr r3, r31
/* 80475D2C  4B F3 FD ED */	bl mIN_get_item_article
/* 80475D30  7C 7F 1B 78 */	mr r31, r3
/* 80475D34  4B F4 99 75 */	bl func_803BF6A8
/* 80475D38  3C 80 81 1D */	lis r4, ftr_name@ha /* 0x811CE678@ha */
/* 80475D3C  7F E8 FB 78 */	mr r8, r31
/* 80475D40  38 A4 E6 78 */	addi r5, r4, ftr_name@l /* 0x811CE678@l */
/* 80475D44  38 C0 00 10 */	li r6, 0x10
/* 80475D48  38 80 00 01 */	li r4, 1
/* 80475D4C  38 E0 00 05 */	li r7, 5
/* 80475D50  4B F4 A0 05 */	bl mMsg_Set_free_str_cl_art
lbl_80475D54:
/* 80475D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475D5C  7C 08 03 A6 */	mtlr r0
/* 80475D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80475D64  4E 80 00 20 */	blr 
