lbl_803EF530:
/* 803EF530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF534  7C 08 02 A6 */	mflr r0
/* 803EF538  3C C0 81 17 */	lis r6, data_81171538@ha /* 0x81171538@ha */
/* 803EF53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EF544  7C 7F 1B 78 */	mr r31, r3
/* 803EF548  80 06 15 38 */	lwz r0, data_81171538@l(r6)  /* 0x81171538@l */
/* 803EF54C  7C A6 2B 78 */	mr r6, r5
/* 803EF550  28 00 00 00 */	cmplwi r0, 0
/* 803EF554  40 82 00 28 */	bne lbl_803EF57C
/* 803EF558  3C E0 80 66 */	lis r7, SubmenuArea_dlftbl@ha /* 0x8065DCEC@ha */
/* 803EF55C  7C 85 23 78 */	mr r5, r4
/* 803EF560  38 87 DC EC */	addi r4, r7, SubmenuArea_dlftbl@l /* 0x8065DCEC@l */
/* 803EF564  4B FF FF 85 */	bl mSM_ovlptr_dllcnv_sub
/* 803EF568  2C 03 00 00 */	cmpwi r3, 0
/* 803EF56C  40 82 00 0C */	bne lbl_803EF578
/* 803EF570  38 60 00 00 */	li r3, 0
/* 803EF574  48 00 00 08 */	b lbl_803EF57C
lbl_803EF578:
/* 803EF578  7F E3 FB 78 */	mr r3, r31
lbl_803EF57C:
/* 803EF57C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF584  7C 08 03 A6 */	mtlr r0
/* 803EF588  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF58C  4E 80 00 20 */	blr 
