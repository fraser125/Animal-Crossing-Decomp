lbl_8047AAB8:
/* 8047AAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047AABC  7C 08 02 A6 */	mflr r0
/* 8047AAC0  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047AAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047AAC8  38 00 00 02 */	li r0, 2
/* 8047AACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047AAD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8047AAD4  7C 9E 23 78 */	mr r30, r4
/* 8047AAD8  1C 83 08 58 */	mulli r4, r3, 0x858
/* 8047AADC  80 A5 DF E8 */	lwz r5, data_811CDFE8@l(r5)  /* 0x811CDFE8@l */
/* 8047AAE0  90 7E 03 70 */	stw r3, 0x370(r30)
/* 8047AAE4  7F E5 22 14 */	add r31, r5, r4
/* 8047AAE8  38 7E 03 74 */	addi r3, r30, 0x374
/* 8047AAEC  A8 BF 08 3C */	lha r5, 0x83c(r31)
/* 8047AAF0  7F E4 FB 78 */	mr r4, r31
/* 8047AAF4  B0 BE 03 84 */	sth r5, 0x384(r30)
/* 8047AAF8  B0 1E 03 86 */	sth r0, 0x386(r30)
/* 8047AAFC  4B FF D5 29 */	bl aMR_GetFtrShapeCenter
/* 8047AB00  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8047AB04  38 80 00 00 */	li r4, 0
/* 8047AB08  4B F6 CC CD */	bl mRmTp_FtrIdx2FtrItemNo
/* 8047AB0C  4B FF 57 A9 */	bl aMR_ItemNo2IconNo
/* 8047AB10  B0 7E 03 88 */	sth r3, 0x388(r30)
/* 8047AB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047AB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047AB1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047AB20  7C 08 03 A6 */	mtlr r0
/* 8047AB24  38 21 00 10 */	addi r1, r1, 0x10
/* 8047AB28  4E 80 00 20 */	blr 
