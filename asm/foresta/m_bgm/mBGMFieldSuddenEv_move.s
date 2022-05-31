lbl_8037962C:
/* 8037962C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80379630  7C 08 02 A6 */	mflr r0
/* 80379634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037963C  7C 9F 23 78 */	mr r31, r4
/* 80379640  93 C1 00 08 */	stw r30, 8(r1)
/* 80379644  7C 7E 1B 78 */	mr r30, r3
/* 80379648  4B FF FE 81 */	bl mBGMFieldSuddenEv_flag_set
/* 8037964C  7F C3 F3 78 */	mr r3, r30
/* 80379650  7F E4 FB 78 */	mr r4, r31
/* 80379654  4B FF FF 29 */	bl mBGMFieldSuddenEv_ps_compose
/* 80379658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037965C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80379660  83 C1 00 08 */	lwz r30, 8(r1)
/* 80379664  7C 08 03 A6 */	mtlr r0
/* 80379668  38 21 00 10 */	addi r1, r1, 0x10
/* 8037966C  4E 80 00 20 */	blr 
