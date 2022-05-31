lbl_803A7490:
/* 803A7490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A7494  7C 08 02 A6 */	mflr r0
/* 803A7498  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A749C  38 81 00 08 */	addi r4, r1, 8
/* 803A74A0  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A74A4  80 E3 00 00 */	lwz r7, 0(r3)
/* 803A74A8  80 C3 00 04 */	lwz r6, 4(r3)
/* 803A74AC  80 03 00 08 */	lwz r0, 8(r3)
/* 803A74B0  38 61 00 0C */	addi r3, r1, 0xc
/* 803A74B4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803A74B8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A74BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A74C0  4B FF DE A9 */	bl mFI_Wpos2UtNum
/* 803A74C4  2C 03 00 00 */	cmpwi r3, 0
/* 803A74C8  40 82 00 0C */	bne lbl_803A74D4
/* 803A74CC  38 60 00 00 */	li r3, 0
/* 803A74D0  48 00 00 10 */	b lbl_803A74E0
lbl_803A74D4:
/* 803A74D4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A74D8  80 81 00 08 */	lwz r4, 8(r1)
/* 803A74DC  4B FF FE 91 */	bl mFI_UtNum2UtFG2
lbl_803A74E0:
/* 803A74E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A74E4  7C 08 03 A6 */	mtlr r0
/* 803A74E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A74EC  4E 80 00 20 */	blr 
