lbl_8049CC04:
/* 8049CC04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CC08  7C 08 02 A6 */	mflr r0
/* 8049CC0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049CC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CC14  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049CC18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049CC1C  7C 7F 1B 78 */	mr r31, r3
/* 8049CC20  3C 64 00 03 */	addis r3, r4, 3
/* 8049CC24  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 8049CC28  2C 00 00 01 */	cmpwi r0, 1
/* 8049CC2C  40 82 00 4C */	bne lbl_8049CC78
/* 8049CC30  3C 64 00 02 */	addis r3, r4, 2
/* 8049CC34  38 80 00 05 */	li r4, 5
/* 8049CC38  38 63 04 B4 */	addi r3, r3, 0x4b4
/* 8049CC3C  38 00 00 05 */	li r0, 5
/* 8049CC40  90 7F 01 74 */	stw r3, 0x174(r31)
/* 8049CC44  38 A0 00 00 */	li r5, 0
/* 8049CC48  38 60 00 00 */	li r3, 0
/* 8049CC4C  90 9F 01 7C */	stw r4, 0x17c(r31)
/* 8049CC50  7C 09 03 A6 */	mtctr r0
lbl_8049CC54:
/* 8049CC54  80 9F 01 74 */	lwz r4, 0x174(r31)
/* 8049CC58  7C 04 1A 2E */	lhzx r0, r4, r3
/* 8049CC5C  28 00 00 00 */	cmplwi r0, 0
/* 8049CC60  41 82 00 08 */	beq lbl_8049CC68
/* 8049CC64  38 A5 00 01 */	addi r5, r5, 1
lbl_8049CC68:
/* 8049CC68  38 63 00 02 */	addi r3, r3, 2
/* 8049CC6C  42 00 FF E8 */	bdnz lbl_8049CC54
/* 8049CC70  90 BF 01 78 */	stw r5, 0x178(r31)
/* 8049CC74  48 00 00 20 */	b lbl_8049CC94
lbl_8049CC78:
/* 8049CC78  3C 64 00 02 */	addis r3, r4, 2
/* 8049CC7C  38 03 04 0E */	addi r0, r3, 0x40e
/* 8049CC80  90 1F 01 74 */	stw r0, 0x174(r31)
/* 8049CC84  4B F4 BF F1 */	bl mSP_CountElementInGoodsList
/* 8049CC88  90 7F 01 78 */	stw r3, 0x178(r31)
/* 8049CC8C  38 00 00 27 */	li r0, 0x27
/* 8049CC90  90 1F 01 7C */	stw r0, 0x17c(r31)
lbl_8049CC94:
/* 8049CC94  4B F4 CC 75 */	bl mSP_SetNewVisitor
/* 8049CC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CC9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049CCA0  7C 08 03 A6 */	mtlr r0
/* 8049CCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CCA8  4E 80 00 20 */	blr 
