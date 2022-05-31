lbl_803BF128:
/* 803BF128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF12C  7C 08 02 A6 */	mflr r0
/* 803BF130  3C 60 80 65 */	lis r3, melody_377@ha /* 0x806570D8@ha */
/* 803BF134  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF138  38 63 70 D8 */	addi r3, r3, melody_377@l /* 0x806570D8@l */
/* 803BF13C  48 00 01 3D */	bl mMld_SetSaveMelody
/* 803BF140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF144  7C 08 03 A6 */	mtlr r0
/* 803BF148  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF14C  4E 80 00 20 */	blr 
