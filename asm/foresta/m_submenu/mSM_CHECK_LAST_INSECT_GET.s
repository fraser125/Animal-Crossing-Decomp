lbl_803EF2A8:
/* 803EF2A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF2AC  7C 08 02 A6 */	mflr r0
/* 803EF2B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF2B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EF2B8  3B E0 00 00 */	li r31, 0
/* 803EF2BC  93 C1 00 08 */	stw r30, 8(r1)
/* 803EF2C0  7C 7E 1B 78 */	mr r30, r3
/* 803EF2C4  4B FF FF 61 */	bl mSM_CHECK_ALL_INSECT_GET_SUB
/* 803EF2C8  2C 03 00 27 */	cmpwi r3, 0x27
/* 803EF2CC  40 82 00 18 */	bne lbl_803EF2E4
/* 803EF2D0  7F C3 F3 78 */	mr r3, r30
/* 803EF2D4  4B FF FE D5 */	bl func_803EF1A8
/* 803EF2D8  2C 03 00 00 */	cmpwi r3, 0
/* 803EF2DC  40 82 00 08 */	bne lbl_803EF2E4
/* 803EF2E0  3B E0 00 01 */	li r31, 1
lbl_803EF2E4:
/* 803EF2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF2E8  7F E3 FB 78 */	mr r3, r31
/* 803EF2EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF2F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EF2F4  7C 08 03 A6 */	mtlr r0
/* 803EF2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF2FC  4E 80 00 20 */	blr 
