lbl_803BF37C:
/* 803BF37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF380  7C 08 02 A6 */	mflr r0
/* 803BF384  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF388  80 03 04 2C */	lwz r0, 0x42c(r3)
/* 803BF38C  2C 00 00 00 */	cmpwi r0, 0
/* 803BF390  41 80 00 30 */	blt lbl_803BF3C0
/* 803BF394  2C 00 00 08 */	cmpwi r0, 8
/* 803BF398  40 80 00 28 */	bge lbl_803BF3C0
/* 803BF39C  3C A0 80 66 */	lis r5, proc_2611@ha /* 0x8065A138@ha */
/* 803BF3A0  54 00 10 3A */	slwi r0, r0, 2
/* 803BF3A4  38 A5 A1 38 */	addi r5, r5, proc_2611@l /* 0x8065A138@l */
/* 803BF3A8  7D 85 00 2E */	lwzx r12, r5, r0
/* 803BF3AC  28 0C 00 00 */	cmplwi r12, 0
/* 803BF3B0  40 82 00 08 */	bne lbl_803BF3B8
/* 803BF3B4  48 00 00 0C */	b lbl_803BF3C0
lbl_803BF3B8:
/* 803BF3B8  7D 89 03 A6 */	mtctr r12
/* 803BF3BC  4E 80 04 21 */	bctrl 
lbl_803BF3C0:
/* 803BF3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF3C4  7C 08 03 A6 */	mtlr r0
/* 803BF3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF3CC  4E 80 00 20 */	blr 
