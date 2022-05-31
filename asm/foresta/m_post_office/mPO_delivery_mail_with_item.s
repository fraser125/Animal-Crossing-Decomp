lbl_803DF194:
/* 803DF194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DF198  7C 08 02 A6 */	mflr r0
/* 803DF19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DF1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF1A4  4B CB BD 31 */	bl func_8009AED4
/* 803DF1A8  7C 7D 1B 78 */	mr r29, r3
/* 803DF1AC  7C BE 2B 78 */	mr r30, r5
/* 803DF1B0  7C DF 33 78 */	mr r31, r6
/* 803DF1B4  7C 87 23 78 */	mr r7, r4
/* 803DF1B8  38 7D 00 32 */	addi r3, r29, 0x32
/* 803DF1BC  38 81 00 08 */	addi r4, r1, 8
/* 803DF1C0  38 BD 01 0A */	addi r5, r29, 0x10a
/* 803DF1C4  38 DD 00 4A */	addi r6, r29, 0x4a
/* 803DF1C8  4B FD 35 6D */	bl mHandbill_Load_HandbillFromRom
/* 803DF1CC  38 00 00 00 */	li r0, 0
/* 803DF1D0  38 A0 00 07 */	li r5, 7
/* 803DF1D4  98 1D 00 2E */	stb r0, 0x2e(r29)
/* 803DF1D8  38 00 00 37 */	li r0, 0x37
/* 803DF1DC  7F A3 EB 78 */	mr r3, r29
/* 803DF1E0  7F E4 FB 78 */	mr r4, r31
/* 803DF1E4  80 C1 00 08 */	lwz r6, 8(r1)
/* 803DF1E8  98 DD 00 2F */	stb r6, 0x2f(r29)
/* 803DF1EC  98 BD 00 30 */	stb r5, 0x30(r29)
/* 803DF1F0  98 1D 00 31 */	stb r0, 0x31(r29)
/* 803DF1F4  B3 DD 00 2C */	sth r30, 0x2c(r29)
/* 803DF1F8  4B FD D5 E9 */	bl mMl_set_to_plname
/* 803DF1FC  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF200  4B CB BD 21 */	bl func_8009AF20
/* 803DF204  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF208  7C 08 03 A6 */	mtlr r0
/* 803DF20C  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF210  4E 80 00 20 */	blr 
