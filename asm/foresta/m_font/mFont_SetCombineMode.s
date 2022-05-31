lbl_803AFA54:
/* 803AFA54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AFA58  7C 08 02 A6 */	mflr r0
/* 803AFA5C  2C 05 00 00 */	cmpwi r5, 0
/* 803AFA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AFA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AFA68  7C 7F 1B 78 */	mr r31, r3
/* 803AFA6C  40 82 00 18 */	bne lbl_803AFA84
/* 803AFA70  80 7F 02 D0 */	lwz r3, 0x2d0(r31)
/* 803AFA74  38 A0 00 01 */	li r5, 1
/* 803AFA78  4B FF FF 0D */	bl mFont_gfxSetCombineMode
/* 803AFA7C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 803AFA80  48 00 00 14 */	b lbl_803AFA94
lbl_803AFA84:
/* 803AFA84  80 7F 02 F0 */	lwz r3, 0x2f0(r31)
/* 803AFA88  38 A0 00 01 */	li r5, 1
/* 803AFA8C  4B FF FE F9 */	bl mFont_gfxSetCombineMode
/* 803AFA90  90 7F 02 F0 */	stw r3, 0x2f0(r31)
lbl_803AFA94:
/* 803AFA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AFA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AFA9C  7C 08 03 A6 */	mtlr r0
/* 803AFAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803AFAA4  4E 80 00 20 */	blr 
