lbl_80588D3C:
/* 80588D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80588D40  7C 08 02 A6 */	mflr r0
/* 80588D44  3C 80 80 6C */	lis r4, aTS0_endRatio@ha /* 0x806C1E70@ha */
/* 80588D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80588D4C  38 84 1E 70 */	addi r4, r4, aTS0_endRatio@l /* 0x806C1E70@l */
/* 80588D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80588D54  7C 7F 1B 78 */	mr r31, r3
/* 80588D58  88 A3 09 98 */	lbz r5, 0x998(r3)
/* 80588D5C  C0 23 09 9C */	lfs f1, 0x99c(r3)
/* 80588D60  7C A5 07 74 */	extsb r5, r5
/* 80588D64  54 A0 10 3A */	slwi r0, r5, 2
/* 80588D68  7C 04 04 2E */	lfsx f0, r4, r0
/* 80588D6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588D70  4C 41 13 82 */	cror 2, 1, 2
/* 80588D74  40 82 00 28 */	bne lbl_80588D9C
/* 80588D78  38 A5 00 01 */	addi r5, r5, 1
/* 80588D7C  38 80 00 0A */	li r4, 0xa
/* 80588D80  7C 05 23 D6 */	divw r0, r5, r4
/* 80588D84  7C 00 21 D6 */	mullw r0, r0, r4
/* 80588D88  7C 00 28 50 */	subf r0, r0, r5
/* 80588D8C  98 1F 09 94 */	stb r0, 0x994(r31)
/* 80588D90  4B FF FC D5 */	bl aTS0_setup_morph
/* 80588D94  38 00 00 00 */	li r0, 0
/* 80588D98  98 1F 09 96 */	stb r0, 0x996(r31)
lbl_80588D9C:
/* 80588D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80588DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80588DA4  7C 08 03 A6 */	mtlr r0
/* 80588DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80588DAC  4E 80 00 20 */	blr 
