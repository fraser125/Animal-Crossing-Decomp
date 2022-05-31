lbl_803819BC:
/* 803819BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803819C0  7C 08 02 A6 */	mflr r0
/* 803819C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803819C8  38 81 00 14 */	addi r4, r1, 0x14
/* 803819CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803819D0  7C BF 2B 78 */	mr r31, r5
/* 803819D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803819D8  7C 7E 1B 78 */	mr r30, r3
/* 803819DC  4B FF E7 4D */	bl Camera2_main_Normal_SetEndCenterPos_fromPlayer
/* 803819E0  7F C3 F3 78 */	mr r3, r30
/* 803819E4  38 81 00 0C */	addi r4, r1, 0xc
/* 803819E8  38 A1 00 08 */	addi r5, r1, 8
/* 803819EC  48 00 01 55 */	bl Camera2_main_Simple_AngleDistStd
/* 803819F0  C0 21 00 08 */	lfs f1, 8(r1)
/* 803819F4  7F C3 F3 78 */	mr r3, r30
/* 803819F8  7F E7 FB 78 */	mr r7, r31
/* 803819FC  38 81 00 14 */	addi r4, r1, 0x14
/* 80381A00  38 A1 00 0C */	addi r5, r1, 0xc
/* 80381A04  38 C0 00 1E */	li r6, 0x1e
/* 80381A08  48 00 00 1D */	bl Camera2_request_main_simple
/* 80381A0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80381A10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80381A14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80381A18  7C 08 03 A6 */	mtlr r0
/* 80381A1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80381A20  4E 80 00 20 */	blr 
