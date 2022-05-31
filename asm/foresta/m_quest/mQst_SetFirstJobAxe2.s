lbl_803E431C:
/* 803E431C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E4320  7C 08 02 A6 */	mflr r0
/* 803E4324  38 E0 00 0B */	li r7, 0xb
/* 803E4328  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E432C  4B FF FF 1D */	bl mQst_SetFirstJobAxe_common
/* 803E4330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E4334  7C 08 03 A6 */	mtlr r0
/* 803E4338  38 21 00 10 */	addi r1, r1, 0x10
/* 803E433C  4E 80 00 20 */	blr 
