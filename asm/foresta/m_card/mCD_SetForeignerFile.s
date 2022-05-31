lbl_803FA86C:
/* 803FA86C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA870  7C 08 02 A6 */	mflr r0
/* 803FA874  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FA87C  7C BF 2B 78 */	mr r31, r5
/* 803FA880  93 C1 00 08 */	stw r30, 8(r1)
/* 803FA884  7C 7E 1B 78 */	mr r30, r3
/* 803FA888  38 7E 00 20 */	addi r3, r30, 0x20
/* 803FA88C  4B FE 5D 95 */	bl mPr_CopyPrivateInfo
/* 803FA890  7F E3 FB 78 */	mr r3, r31
/* 803FA894  38 9E 24 60 */	addi r4, r30, 0x2460
/* 803FA898  38 A0 09 88 */	li r5, 0x988
/* 803FA89C  4B C6 27 81 */	bl func_8005D01C
/* 803FA8A0  A0 BE 00 00 */	lhz r5, 0(r30)
/* 803FA8A4  7F C3 F3 78 */	mr r3, r30
/* 803FA8A8  38 80 2E 20 */	li r4, 0x2e20
/* 803FA8AC  4B FB 1C 81 */	bl mFRm_GetFlatCheckSum
/* 803FA8B0  B0 7E 00 00 */	sth r3, 0(r30)
/* 803FA8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA8B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FA8BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FA8C0  7C 08 03 A6 */	mtlr r0
/* 803FA8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA8C8  4E 80 00 20 */	blr 
