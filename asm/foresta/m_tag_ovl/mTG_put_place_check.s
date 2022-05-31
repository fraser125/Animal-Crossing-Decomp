lbl_805F23C0:
/* 805F23C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F23C4  7C 08 02 A6 */	mflr r0
/* 805F23C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F23CC  39 61 00 30 */	addi r11, r1, 0x30
/* 805F23D0  4B AA 8B 05 */	bl func_8009AED4
/* 805F23D4  2C 05 00 00 */	cmpwi r5, 0
/* 805F23D8  7C 7D 1B 78 */	mr r29, r3
/* 805F23DC  7C 9E 23 78 */	mr r30, r4
/* 805F23E0  3B E0 00 01 */	li r31, 1
/* 805F23E4  41 82 00 0C */	beq lbl_805F23F0
/* 805F23E8  4B FF FF 1D */	bl mTG_check_put_unit
/* 805F23EC  7C 7F 1B 78 */	mr r31, r3
lbl_805F23F0:
/* 805F23F0  2C 1F 00 01 */	cmpwi r31, 1
/* 805F23F4  40 82 00 60 */	bne lbl_805F2454
/* 805F23F8  2C 1E 00 00 */	cmpwi r30, 0
/* 805F23FC  41 82 00 34 */	beq lbl_805F2430
/* 805F2400  80 9D 00 00 */	lwz r4, 0(r29)
/* 805F2404  38 61 00 14 */	addi r3, r1, 0x14
/* 805F2408  80 1D 00 04 */	lwz r0, 4(r29)
/* 805F240C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F2410  90 01 00 18 */	stw r0, 0x18(r1)
/* 805F2414  80 1D 00 08 */	lwz r0, 8(r29)
/* 805F2418  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805F241C  4B D9 DB D1 */	bl mCoBG_CheckPlant
/* 805F2420  2C 03 FF FF */	cmpwi r3, -1
/* 805F2424  40 82 00 30 */	bne lbl_805F2454
/* 805F2428  3B E0 00 00 */	li r31, 0
/* 805F242C  48 00 00 28 */	b lbl_805F2454
lbl_805F2430:
/* 805F2430  80 9D 00 00 */	lwz r4, 0(r29)
/* 805F2434  38 61 00 08 */	addi r3, r1, 8
/* 805F2438  80 1D 00 04 */	lwz r0, 4(r29)
/* 805F243C  90 81 00 08 */	stw r4, 8(r1)
/* 805F2440  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F2444  80 1D 00 08 */	lwz r0, 8(r29)
/* 805F2448  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F244C  4B D9 DA 8D */	bl mCoBG_CheckPlace
/* 805F2450  7C 7F 1B 78 */	mr r31, r3
lbl_805F2454:
/* 805F2454  7F E3 FB 78 */	mr r3, r31
/* 805F2458  39 61 00 30 */	addi r11, r1, 0x30
/* 805F245C  4B AA 8A C5 */	bl func_8009AF20
/* 805F2460  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F2464  7C 08 03 A6 */	mtlr r0
/* 805F2468  38 21 00 30 */	addi r1, r1, 0x30
/* 805F246C  4E 80 00 20 */	blr 
