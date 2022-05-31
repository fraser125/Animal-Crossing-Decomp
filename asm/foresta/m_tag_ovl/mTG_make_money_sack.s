lbl_805F3368:
/* 805F3368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F336C  7C 08 02 A6 */	mflr r0
/* 805F3370  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F3374  39 61 00 20 */	addi r11, r1, 0x20
/* 805F3378  4B AA 7B 55 */	bl func_8009AECC
/* 805F337C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 805F3380  7C BD 2B 78 */	mr r29, r5
/* 805F3384  38 A6 85 38 */	addi r5, r6, common_data@l /* 0x81138538@l */
/* 805F3388  7C 7B 1B 78 */	mr r27, r3
/* 805F338C  3C 65 00 02 */	addis r3, r5, 2
/* 805F3390  7C 9C 23 78 */	mr r28, r4
/* 805F3394  83 C3 61 3C */	lwz r30, 0x613c(r3)
/* 805F3398  7F A3 EB 78 */	mr r3, r29
/* 805F339C  4B FF FF 79 */	bl mTG_itemNo_to_amount
/* 805F33A0  80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 805F33A4  7C 7F 1B 78 */	mr r31, r3
/* 805F33A8  38 60 00 00 */	li r3, 0
/* 805F33AC  7C 00 F8 00 */	cmpw r0, r31
/* 805F33B0  41 80 00 7C */	blt lbl_805F342C
/* 805F33B4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805F33B8  7C FF 00 50 */	subf r7, r31, r0
/* 805F33BC  38 C0 00 02 */	li r6, 2
/* 805F33C0  38 A0 00 00 */	li r5, 0
/* 805F33C4  81 03 09 80 */	lwz r8, 0x980(r3)
/* 805F33C8  38 00 00 2A */	li r0, 0x2a
/* 805F33CC  7F 63 DB 78 */	mr r3, r27
/* 805F33D0  7F 84 E3 78 */	mr r4, r28
/* 805F33D4  90 FE 00 8C */	stw r7, 0x8c(r30)
/* 805F33D8  B0 C8 02 32 */	sth r6, 0x232(r8)
/* 805F33DC  B3 A8 02 34 */	sth r29, 0x234(r8)
/* 805F33E0  90 A8 03 60 */	stw r5, 0x360(r8)
/* 805F33E4  B0 08 00 16 */	sth r0, 0x16(r8)
/* 805F33E8  98 C8 03 64 */	stb r6, 0x364(r8)
/* 805F33EC  98 A8 03 65 */	stb r5, 0x365(r8)
/* 805F33F0  98 A8 03 67 */	stb r5, 0x367(r8)
/* 805F33F4  48 00 38 69 */	bl mTG_mark_main_CLR
/* 805F33F8  7F 63 DB 78 */	mr r3, r27
/* 805F33FC  38 80 00 00 */	li r4, 0
/* 805F3400  38 A0 00 00 */	li r5, 0
/* 805F3404  4B FF C3 B1 */	bl mTG_return_tag_init
/* 805F3408  38 00 00 2A */	li r0, 0x2a
/* 805F340C  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 805F3410  7C 1F 03 D6 */	divw r0, r31, r0
/* 805F3414  38 60 10 52 */	li r3, 0x1052
/* 805F3418  80 84 09 88 */	lwz r4, 0x988(r4)
/* 805F341C  7C 00 00 D0 */	neg r0, r0
/* 805F3420  90 04 03 C4 */	stw r0, 0x3c4(r4)
/* 805F3424  48 03 A8 E1 */	bl sAdo_SysTrgStart
/* 805F3428  38 60 00 01 */	li r3, 1
lbl_805F342C:
/* 805F342C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F3430  4B AA 7A E9 */	bl func_8009AF18
/* 805F3434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F3438  7C 08 03 A6 */	mtlr r0
/* 805F343C  38 21 00 20 */	addi r1, r1, 0x20
/* 805F3440  4E 80 00 20 */	blr 
