lbl_803B48FC:
/* 803B48FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4900  7C 08 02 A6 */	mflr r0
/* 803B4904  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B490C  7C 9F 23 78 */	mr r31, r4
/* 803B4910  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4914  7C 7E 1B 78 */	mr r30, r3
/* 803B4918  4B FF FF 81 */	bl mISL_gc_to_agb_time
/* 803B491C  88 1F 00 08 */	lbz r0, 8(r31)
/* 803B4920  98 1E 00 08 */	stb r0, 8(r30)
/* 803B4924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B492C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4930  7C 08 03 A6 */	mtlr r0
/* 803B4934  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4938  4E 80 00 20 */	blr 