lbl_805FB4B4:
/* 805FB4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FB4B8  7C 08 02 A6 */	mflr r0
/* 805FB4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FB4C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB4C4  7C BF 2B 78 */	mr r31, r5
/* 805FB4C8  93 C1 00 08 */	stw r30, 8(r1)
/* 805FB4CC  7C 7E 1B 78 */	mr r30, r3
/* 805FB4D0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FB4D4  80 A5 00 40 */	lwz r5, 0x40(r5)
/* 805FB4D8  80 C4 09 CC */	lwz r6, 0x9cc(r4)
/* 805FB4DC  3C 86 00 01 */	addis r4, r6, 1
/* 805FB4E0  88 04 D9 F4 */	lbz r0, -0x260c(r4)
/* 805FB4E4  7C 00 28 00 */	cmpw r0, r5
/* 805FB4E8  41 82 00 60 */	beq lbl_805FB548
/* 805FB4EC  98 A6 00 01 */	stb r5, 1(r6)
/* 805FB4F0  38 80 00 28 */	li r4, 0x28
/* 805FB4F4  38 00 00 00 */	li r0, 0
/* 805FB4F8  B0 86 00 02 */	sth r4, 2(r6)
/* 805FB4FC  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 805FB500  1C 84 06 44 */	mulli r4, r4, 0x644
/* 805FB504  3C 84 00 01 */	addis r4, r4, 1
/* 805FB508  38 84 A1 48 */	addi r4, r4, -24248
/* 805FB50C  7C 86 22 14 */	add r4, r6, r4
/* 805FB510  B0 04 00 02 */	sth r0, 2(r4)
/* 805FB514  B0 04 00 04 */	sth r0, 4(r4)
/* 805FB518  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805FB51C  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805FB520  81 84 03 70 */	lwz r12, 0x370(r4)
/* 805FB524  7D 89 03 A6 */	mtctr r12
/* 805FB528  4E 80 04 21 */	bctrl 
/* 805FB52C  38 60 04 1C */	li r3, 0x41c
/* 805FB530  48 03 27 D5 */	bl sAdo_SysTrgStart
/* 805FB534  7F E3 FB 78 */	mr r3, r31
/* 805FB538  4B FF 43 35 */	bl mTG_get_item_name_wait_time
/* 805FB53C  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805FB540  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805FB544  B0 64 02 F0 */	sth r3, 0x2f0(r4)
lbl_805FB548:
/* 805FB548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FB54C  38 60 00 00 */	li r3, 0
/* 805FB550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB554  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FB558  7C 08 03 A6 */	mtlr r0
/* 805FB55C  38 21 00 10 */	addi r1, r1, 0x10
/* 805FB560  4E 80 00 20 */	blr 
