lbl_80588CC8:
/* 80588CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80588CCC  7C 08 02 A6 */	mflr r0
/* 80588CD0  38 A0 00 0A */	li r5, 0xa
/* 80588CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80588CD8  88 E3 09 98 */	lbz r7, 0x998(r3)
/* 80588CDC  88 03 09 94 */	lbz r0, 0x994(r3)
/* 80588CE0  7C E7 07 74 */	extsb r7, r7
/* 80588CE4  38 C7 00 01 */	addi r6, r7, 1
/* 80588CE8  7C 00 07 74 */	extsb r0, r0
/* 80588CEC  7C 86 2B D6 */	divw r4, r6, r5
/* 80588CF0  7C 84 29 D6 */	mullw r4, r4, r5
/* 80588CF4  7C 84 30 50 */	subf r4, r4, r6
/* 80588CF8  7C 85 07 74 */	extsb r5, r4
/* 80588CFC  7C 05 00 00 */	cmpw r5, r0
/* 80588D00  41 82 00 2C */	beq lbl_80588D2C
/* 80588D04  3C 80 80 6C */	lis r4, aTS0_endRatio@ha /* 0x806C1E70@ha */
/* 80588D08  54 E0 10 3A */	slwi r0, r7, 2
/* 80588D0C  38 84 1E 70 */	addi r4, r4, aTS0_endRatio@l /* 0x806C1E70@l */
/* 80588D10  C0 23 09 9C */	lfs f1, 0x99c(r3)
/* 80588D14  7C 04 04 2E */	lfsx f0, r4, r0
/* 80588D18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588D1C  4C 41 13 82 */	cror 2, 1, 2
/* 80588D20  40 82 00 0C */	bne lbl_80588D2C
/* 80588D24  98 A3 09 94 */	stb r5, 0x994(r3)
/* 80588D28  4B FF FD 3D */	bl aTS0_setup_morph
lbl_80588D2C:
/* 80588D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80588D30  7C 08 03 A6 */	mtlr r0
/* 80588D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80588D38  4E 80 00 20 */	blr 
