lbl_803BF2F0:
/* 803BF2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF2F4  7C 08 02 A6 */	mflr r0
/* 803BF2F8  28 04 00 00 */	cmplwi r4, 0
/* 803BF2FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF300  41 82 00 28 */	beq lbl_803BF328
/* 803BF304  88 04 00 02 */	lbz r0, 2(r4)
/* 803BF308  28 00 00 04 */	cmplwi r0, 4
/* 803BF30C  40 82 00 1C */	bne lbl_803BF328
/* 803BF310  A8 04 09 78 */	lha r0, 0x978(r4)
/* 803BF314  2C 00 00 00 */	cmpwi r0, 0
/* 803BF318  41 82 00 10 */	beq lbl_803BF328
/* 803BF31C  7C 64 1B 78 */	mr r4, r3
/* 803BF320  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803BF324  48 26 EB 61 */	bl sAdo_Inst
lbl_803BF328:
/* 803BF328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF32C  7C 08 03 A6 */	mtlr r0
/* 803BF330  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF334  4E 80 00 20 */	blr 
