lbl_805F312C:
/* 805F312C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3130  7C 08 02 A6 */	mflr r0
/* 805F3134  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3138  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F313C  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F3140  80 03 00 00 */	lwz r0, 0(r3)
/* 805F3144  2C 00 00 00 */	cmpwi r0, 0
/* 805F3148  40 82 00 10 */	bne lbl_805F3158
/* 805F314C  38 60 00 33 */	li r3, 0x33
/* 805F3150  48 03 AB B5 */	bl sAdo_SysTrgStart
/* 805F3154  48 00 00 0C */	b lbl_805F3160
lbl_805F3158:
/* 805F3158  38 60 00 33 */	li r3, 0x33
/* 805F315C  48 03 AB A9 */	bl sAdo_SysTrgStart
lbl_805F3160:
/* 805F3160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3164  7C 08 03 A6 */	mtlr r0
/* 805F3168  38 21 00 10 */	addi r1, r1, 0x10
/* 805F316C  4E 80 00 20 */	blr 
