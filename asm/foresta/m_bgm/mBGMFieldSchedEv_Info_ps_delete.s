lbl_8037A17C:
/* 8037A17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A180  7C 08 02 A6 */	mflr r0
/* 8037A184  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A18C  7C BF 2B 78 */	mr r31, r5
/* 8037A190  93 C1 00 08 */	stw r30, 8(r1)
/* 8037A194  7C 9E 23 78 */	mr r30, r4
/* 8037A198  88 64 00 02 */	lbz r3, 2(r4)
/* 8037A19C  38 80 01 68 */	li r4, 0x168
/* 8037A1A0  48 00 23 8D */	bl mBGMPsComp_delete_ps_fieldSchedEv
/* 8037A1A4  2C 1F 00 00 */	cmpwi r31, 0
/* 8037A1A8  41 82 00 20 */	beq lbl_8037A1C8
/* 8037A1AC  48 00 26 F1 */	bl mBGMPsComp_execute_bgm_num_get
/* 8037A1B0  88 1E 00 02 */	lbz r0, 2(r30)
/* 8037A1B4  7C 00 18 00 */	cmpw r0, r3
/* 8037A1B8  40 82 00 10 */	bne lbl_8037A1C8
/* 8037A1BC  7C 03 03 78 */	mr r3, r0
/* 8037A1C0  38 80 00 0A */	li r4, 0xa
/* 8037A1C4  48 00 24 91 */	bl mBGMPsComp_search_cf_set_field
lbl_8037A1C8:
/* 8037A1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A1CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A1D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037A1D4  7C 08 03 A6 */	mtlr r0
/* 8037A1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A1DC  4E 80 00 20 */	blr 
