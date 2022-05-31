lbl_805F4558:
/* 805F4558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F455C  7C 08 02 A6 */	mflr r0
/* 805F4560  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F4564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F4568  7C 7F 1B 78 */	mr r31, r3
/* 805F456C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F4570  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F4574  38 63 00 08 */	addi r3, r3, 8
/* 805F4578  4B FF B5 E9 */	bl mTG_get_table_idx
/* 805F457C  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 805F4580  38 C0 00 0C */	li r6, 0xc
/* 805F4584  38 00 00 01 */	li r0, 1
/* 805F4588  38 80 00 00 */	li r4, 0
/* 805F458C  80 E5 09 88 */	lwz r7, 0x988(r5)
/* 805F4590  38 A0 00 00 */	li r5, 0
/* 805F4594  B0 C7 03 F8 */	sth r6, 0x3f8(r7)
/* 805F4598  7C C7 1A 14 */	add r6, r7, r3
/* 805F459C  7F E3 FB 78 */	mr r3, r31
/* 805F45A0  98 06 03 E3 */	stb r0, 0x3e3(r6)
/* 805F45A4  4B FF B2 11 */	bl mTG_return_tag_init
/* 805F45A8  38 60 04 35 */	li r3, 0x435
/* 805F45AC  48 03 97 59 */	bl sAdo_SysTrgStart
/* 805F45B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F45B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F45B8  7C 08 03 A6 */	mtlr r0
/* 805F45BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F45C0  4E 80 00 20 */	blr 
