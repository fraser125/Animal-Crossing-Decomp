lbl_8053B534:
/* 8053B534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053B538  7C 08 02 A6 */	mflr r0
/* 8053B53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053B540  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 8053B544  28 04 00 00 */	cmplwi r4, 0
/* 8053B548  41 82 00 BC */	beq lbl_8053B604
/* 8053B54C  80 A4 00 00 */	lwz r5, 0(r4)
/* 8053B550  28 05 00 00 */	cmplwi r5, 0
/* 8053B554  41 82 00 18 */	beq lbl_8053B56C
/* 8053B558  80 05 00 00 */	lwz r0, 0(r5)
/* 8053B55C  90 03 06 DC */	stw r0, 0x6dc(r3)
/* 8053B560  80 05 00 04 */	lwz r0, 4(r5)
/* 8053B564  90 03 06 E0 */	stw r0, 0x6e0(r3)
/* 8053B568  48 00 00 0C */	b lbl_8053B574
lbl_8053B56C:
/* 8053B56C  38 00 00 00 */	li r0, 0
/* 8053B570  90 03 06 DC */	stw r0, 0x6dc(r3)
lbl_8053B574:
/* 8053B574  80 A4 00 04 */	lwz r5, 4(r4)
/* 8053B578  28 05 00 00 */	cmplwi r5, 0
/* 8053B57C  41 82 00 18 */	beq lbl_8053B594
/* 8053B580  80 05 00 00 */	lwz r0, 0(r5)
/* 8053B584  90 03 06 E4 */	stw r0, 0x6e4(r3)
/* 8053B588  80 05 00 04 */	lwz r0, 4(r5)
/* 8053B58C  90 03 06 E8 */	stw r0, 0x6e8(r3)
/* 8053B590  48 00 00 0C */	b lbl_8053B59C
lbl_8053B594:
/* 8053B594  38 00 00 00 */	li r0, 0
/* 8053B598  90 03 06 E4 */	stw r0, 0x6e4(r3)
lbl_8053B59C:
/* 8053B59C  80 04 00 08 */	lwz r0, 8(r4)
/* 8053B5A0  2C 00 00 00 */	cmpwi r0, 0
/* 8053B5A4  41 82 00 40 */	beq lbl_8053B5E4
/* 8053B5A8  90 03 06 EC */	stw r0, 0x6ec(r3)
/* 8053B5AC  38 A3 06 F0 */	addi r5, r3, 0x6f0
/* 8053B5B0  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8053B5B4  7C 09 03 A6 */	mtctr r0
/* 8053B5B8  41 82 00 58 */	beq lbl_8053B610
lbl_8053B5BC:
/* 8053B5BC  80 03 00 00 */	lwz r0, 0(r3)
/* 8053B5C0  90 05 00 00 */	stw r0, 0(r5)
/* 8053B5C4  80 03 00 04 */	lwz r0, 4(r3)
/* 8053B5C8  90 05 00 04 */	stw r0, 4(r5)
/* 8053B5CC  A0 03 00 08 */	lhz r0, 8(r3)
/* 8053B5D0  38 63 00 0C */	addi r3, r3, 0xc
/* 8053B5D4  B0 05 00 08 */	sth r0, 8(r5)
/* 8053B5D8  38 A5 00 0C */	addi r5, r5, 0xc
/* 8053B5DC  42 00 FF E0 */	bdnz lbl_8053B5BC
/* 8053B5E0  48 00 00 30 */	b lbl_8053B610
lbl_8053B5E4:
/* 8053B5E4  38 00 00 03 */	li r0, 3
/* 8053B5E8  38 83 06 F0 */	addi r4, r3, 0x6f0
/* 8053B5EC  38 60 00 00 */	li r3, 0
/* 8053B5F0  7C 09 03 A6 */	mtctr r0
lbl_8053B5F4:
/* 8053B5F4  90 64 00 00 */	stw r3, 0(r4)
/* 8053B5F8  38 84 00 0C */	addi r4, r4, 0xc
/* 8053B5FC  42 00 FF F8 */	bdnz lbl_8053B5F4
/* 8053B600  48 00 00 10 */	b lbl_8053B610
lbl_8053B604:
/* 8053B604  38 63 06 DC */	addi r3, r3, 0x6dc
/* 8053B608  38 80 00 38 */	li r4, 0x38
/* 8053B60C  4B B2 1A 5D */	bl bzero
lbl_8053B610:
/* 8053B610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053B614  7C 08 03 A6 */	mtlr r0
/* 8053B618  38 21 00 10 */	addi r1, r1, 0x10
/* 8053B61C  4E 80 00 20 */	blr 
