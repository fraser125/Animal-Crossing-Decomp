lbl_8049B538:
/* 8049B538  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049B53C  7C 08 02 A6 */	mflr r0
/* 8049B540  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049B544  39 61 00 30 */	addi r11, r1, 0x30
/* 8049B548  4B BF F9 7D */	bl func_8009AEC4
/* 8049B54C  7C 79 1B 79 */	or. r25, r3, r3
/* 8049B550  7C 9A 23 78 */	mr r26, r4
/* 8049B554  3B A0 00 00 */	li r29, 0
/* 8049B558  41 82 00 94 */	beq lbl_8049B5EC
/* 8049B55C  28 1A 00 00 */	cmplwi r26, 0
/* 8049B560  41 82 00 8C */	beq lbl_8049B5EC
/* 8049B564  54 BE 04 3E */	clrlwi r30, r5, 0x10
/* 8049B568  54 DF 04 3E */	clrlwi r31, r6, 0x10
/* 8049B56C  3B 80 00 00 */	li r28, 0
lbl_8049B570:
/* 8049B570  3B 60 00 00 */	li r27, 0
lbl_8049B574:
/* 8049B574  2C 1C 00 02 */	cmpwi r28, 2
/* 8049B578  41 80 00 4C */	blt lbl_8049B5C4
/* 8049B57C  2C 1C 00 0E */	cmpwi r28, 0xe
/* 8049B580  40 80 00 44 */	bge lbl_8049B5C4
/* 8049B584  2C 1B 00 02 */	cmpwi r27, 2
/* 8049B588  41 80 00 3C */	blt lbl_8049B5C4
/* 8049B58C  2C 1B 00 0E */	cmpwi r27, 0xe
/* 8049B590  40 80 00 34 */	bge lbl_8049B5C4
/* 8049B594  A0 19 00 00 */	lhz r0, 0(r25)
/* 8049B598  7C 1E 00 40 */	cmplw r30, r0
/* 8049B59C  41 81 00 28 */	bgt lbl_8049B5C4
/* 8049B5A0  7C 00 F8 40 */	cmplw r0, r31
/* 8049B5A4  41 81 00 20 */	bgt lbl_8049B5C4
/* 8049B5A8  7F 43 D3 78 */	mr r3, r26
/* 8049B5AC  7F 64 DB 78 */	mr r4, r27
/* 8049B5B0  4B F0 D7 DD */	bl mFI_GetLineDeposit
/* 8049B5B4  2C 03 00 00 */	cmpwi r3, 0
/* 8049B5B8  40 82 00 0C */	bne lbl_8049B5C4
/* 8049B5BC  3B A0 00 01 */	li r29, 1
/* 8049B5C0  48 00 00 14 */	b lbl_8049B5D4
lbl_8049B5C4:
/* 8049B5C4  3B 7B 00 01 */	addi r27, r27, 1
/* 8049B5C8  3B 39 00 02 */	addi r25, r25, 2
/* 8049B5CC  2C 1B 00 10 */	cmpwi r27, 0x10
/* 8049B5D0  41 80 FF A4 */	blt lbl_8049B574
lbl_8049B5D4:
/* 8049B5D4  2C 1D 00 01 */	cmpwi r29, 1
/* 8049B5D8  3B 5A 00 02 */	addi r26, r26, 2
/* 8049B5DC  41 82 00 10 */	beq lbl_8049B5EC
/* 8049B5E0  3B 9C 00 01 */	addi r28, r28, 1
/* 8049B5E4  2C 1C 00 10 */	cmpwi r28, 0x10
/* 8049B5E8  41 80 FF 88 */	blt lbl_8049B570
lbl_8049B5EC:
/* 8049B5EC  7F A3 EB 78 */	mr r3, r29
/* 8049B5F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8049B5F4  4B BF F9 1D */	bl func_8009AF10
/* 8049B5F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049B5FC  7C 08 03 A6 */	mtlr r0
/* 8049B600  38 21 00 30 */	addi r1, r1, 0x30
/* 8049B604  4E 80 00 20 */	blr 
