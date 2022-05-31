lbl_803DEBB4:
/* 803DEBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DEBB8  7C 08 02 A6 */	mflr r0
/* 803DEBBC  38 80 00 01 */	li r4, 1
/* 803DEBC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DEBC4  38 61 00 08 */	addi r3, r1, 8
/* 803DEBC8  48 00 BE F9 */	bl mSP_RandomUmbSelect
/* 803DEBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DEBD0  A0 61 00 08 */	lhz r3, 8(r1)
/* 803DEBD4  7C 08 03 A6 */	mtlr r0
/* 803DEBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 803DEBDC  4E 80 00 20 */	blr 
