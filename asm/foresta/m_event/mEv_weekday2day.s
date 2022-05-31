lbl_8039B4D4:
/* 8039B4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039B4D8  7C 08 02 A6 */	mflr r0
/* 8039B4DC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8039B4E0  2C 04 00 07 */	cmpwi r4, 7
/* 8039B4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039B4EC  7C BF 2B 78 */	mr r31, r5
/* 8039B4F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8039B4F4  7C 7E 1B 78 */	mr r30, r3
/* 8039B4F8  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 8039B4FC  38 C0 00 00 */	li r6, 0
/* 8039B500  3C A3 00 02 */	addis r5, r3, 2
/* 8039B504  40 82 00 40 */	bne lbl_8039B544
/* 8039B508  88 65 61 25 */	lbz r3, 0x6125(r5)
/* 8039B50C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8039B510  7C 00 18 40 */	cmplw r0, r3
/* 8039B514  40 81 00 0C */	ble lbl_8039B520
/* 8039B518  38 80 00 01 */	li r4, 1
/* 8039B51C  48 00 00 28 */	b lbl_8039B544
lbl_8039B520:
/* 8039B520  40 80 00 0C */	bge lbl_8039B52C
/* 8039B524  38 80 00 06 */	li r4, 6
/* 8039B528  48 00 00 1C */	b lbl_8039B544
lbl_8039B52C:
/* 8039B52C  88 65 61 24 */	lbz r3, 0x6124(r5)
/* 8039B530  38 80 00 00 */	li r4, 0
/* 8039B534  88 05 61 23 */	lbz r0, 0x6123(r5)
/* 8039B538  7C 7F 18 50 */	subf r3, r31, r3
/* 8039B53C  7C 03 00 50 */	subf r0, r3, r0
/* 8039B540  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_8039B544:
/* 8039B544  2C 04 00 06 */	cmpwi r4, 6
/* 8039B548  40 82 00 64 */	bne lbl_8039B5AC
/* 8039B54C  7F C3 F3 78 */	mr r3, r30
/* 8039B550  4B FF FA 89 */	bl last_day_of_month
/* 8039B554  3C 80 81 16 */	lis r4, weekday1st@ha /* 0x8116769C@ha */
/* 8039B558  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8039B55C  38 84 76 9C */	addi r4, r4, weekday1st@l /* 0x8116769C@l */
/* 8039B560  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8039B564  7C 04 00 AE */	lbzx r0, r4, r0
/* 8039B568  38 60 00 07 */	li r3, 7
/* 8039B56C  7C 85 02 14 */	add r4, r5, r0
/* 8039B570  38 84 FF FF */	addi r4, r4, -1
/* 8039B574  7C 04 1B D6 */	divw r0, r4, r3
/* 8039B578  7C 00 19 D6 */	mullw r0, r0, r3
/* 8039B57C  7C 00 20 50 */	subf r0, r0, r4
/* 8039B580  7C 1F 00 00 */	cmpw r31, r0
/* 8039B584  41 81 00 14 */	bgt lbl_8039B598
/* 8039B588  7C 1F 00 50 */	subf r0, r31, r0
/* 8039B58C  7C 00 28 50 */	subf r0, r0, r5
/* 8039B590  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 8039B594  48 00 00 68 */	b lbl_8039B5FC
lbl_8039B598:
/* 8039B598  7C 1F 00 50 */	subf r0, r31, r0
/* 8039B59C  7C 60 28 50 */	subf r3, r0, r5
/* 8039B5A0  38 03 FF F9 */	addi r0, r3, -7
/* 8039B5A4  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 8039B5A8  48 00 00 54 */	b lbl_8039B5FC
lbl_8039B5AC:
/* 8039B5AC  2C 04 00 00 */	cmpwi r4, 0
/* 8039B5B0  41 82 00 4C */	beq lbl_8039B5FC
/* 8039B5B4  3C 60 81 16 */	lis r3, weekday1st@ha /* 0x8116769C@ha */
/* 8039B5B8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8039B5BC  38 63 76 9C */	addi r3, r3, weekday1st@l /* 0x8116769C@l */
/* 8039B5C0  7C 03 00 AE */	lbzx r0, r3, r0
/* 8039B5C4  7C 1F 00 00 */	cmpw r31, r0
/* 8039B5C8  41 80 00 20 */	blt lbl_8039B5E8
/* 8039B5CC  38 64 FF FF */	addi r3, r4, -1
/* 8039B5D0  7C 00 F8 50 */	subf r0, r0, r31
/* 8039B5D4  1C 63 00 07 */	mulli r3, r3, 7
/* 8039B5D8  7C 63 02 14 */	add r3, r3, r0
/* 8039B5DC  38 03 00 01 */	addi r0, r3, 1
/* 8039B5E0  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 8039B5E4  48 00 00 18 */	b lbl_8039B5FC
lbl_8039B5E8:
/* 8039B5E8  1C 64 00 07 */	mulli r3, r4, 7
/* 8039B5EC  7C 00 F8 50 */	subf r0, r0, r31
/* 8039B5F0  7C 63 02 14 */	add r3, r3, r0
/* 8039B5F4  38 03 00 01 */	addi r0, r3, 1
/* 8039B5F8  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_8039B5FC:
/* 8039B5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039B600  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 8039B604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039B608  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039B60C  7C 08 03 A6 */	mtlr r0
/* 8039B610  38 21 00 10 */	addi r1, r1, 0x10
/* 8039B614  4E 80 00 20 */	blr 
