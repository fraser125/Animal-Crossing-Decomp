lbl_8058EF78:
/* 8058EF78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058EF7C  7C 08 02 A6 */	mflr r0
/* 8058EF80  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058EF84  39 61 00 30 */	addi r11, r1, 0x30
/* 8058EF88  4B B0 BF 4D */	bl func_8009AED4
/* 8058EF8C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058EF90  7C 7F 1B 78 */	mr r31, r3
/* 8058EF94  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058EF98  7C 9D 23 78 */	mr r29, r4
/* 8058EF9C  3F C5 00 02 */	addis r30, r5, 2
/* 8058EFA0  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8058EFA4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8058EFA8  7D 89 03 A6 */	mtctr r12
/* 8058EFAC  4E 80 04 21 */	bctrl 
/* 8058EFB0  2C 03 00 01 */	cmpwi r3, 1
/* 8058EFB4  40 82 00 B4 */	bne lbl_8058F068
/* 8058EFB8  3C 60 80 59 */	lis r3, aTNN1_schedule_proc@ha /* 0x8058FF88@ha */
/* 8058EFBC  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C265C@ha */
/* 8058EFC0  38 03 FF 88 */	addi r0, r3, aTNN1_schedule_proc@l /* 0x8058FF88@l */
/* 8058EFC4  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8058EFC8  38 A4 26 5C */	addi r5, r4, ct_data@l /* 0x806C265C@l */
/* 8058EFCC  7F E3 FB 78 */	mr r3, r31
/* 8058EFD0  7F A4 EB 78 */	mr r4, r29
/* 8058EFD4  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8058EFD8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8058EFDC  7D 89 03 A6 */	mtctr r12
/* 8058EFE0  4E 80 04 21 */	bctrl 
/* 8058EFE4  38 00 FF FF */	li r0, -1
/* 8058EFE8  38 A0 00 00 */	li r5, 0
/* 8058EFEC  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 8058EFF0  38 80 00 01 */	li r4, 1
/* 8058EFF4  38 00 00 02 */	li r0, 2
/* 8058EFF8  7F E3 FB 78 */	mr r3, r31
/* 8058EFFC  98 BF 09 A7 */	stb r5, 0x9a7(r31)
/* 8058F000  98 9F 08 BE */	stb r4, 0x8be(r31)
/* 8058F004  98 1F 09 73 */	stb r0, 0x973(r31)
/* 8058F008  4B E4 2E F9 */	bl mNpc_GetNpcLooks
/* 8058F00C  3C 80 80 6C */	lis r4, base_msg_table@ha /* 0x806C2678@ha */
/* 8058F010  54 60 10 3A */	slwi r0, r3, 2
/* 8058F014  38 84 26 78 */	addi r4, r4, base_msg_table@l /* 0x806C2678@l */
/* 8058F018  3C 60 80 65 */	lis r3, data_80649BFC@ha /* 0x80649BFC@ha */
/* 8058F01C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8058F020  38 00 00 00 */	li r0, 0
/* 8058F024  C0 23 9B FC */	lfs f1, data_80649BFC@l(r3)  /* 0x80649BFC@l */
/* 8058F028  38 61 00 08 */	addi r3, r1, 8
/* 8058F02C  90 9F 09 9C */	stw r4, 0x99c(r31)
/* 8058F030  98 1F 09 59 */	stb r0, 0x959(r31)
/* 8058F034  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8058F038  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8058F03C  90 81 00 08 */	stw r4, 8(r1)
/* 8058F040  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058F044  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8058F048  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058F04C  4B E0 09 4D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8058F050  3C 60 80 65 */	lis r3, data_80649BFC@ha /* 0x80649BFC@ha */
/* 8058F054  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8058F058  C0 03 9B FC */	lfs f0, data_80649BFC@l(r3)  /* 0x80649BFC@l */
/* 8058F05C  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8058F060  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8058F064  D0 1F 00 7C */	stfs f0, 0x7c(r31)
lbl_8058F068:
/* 8058F068  39 61 00 30 */	addi r11, r1, 0x30
/* 8058F06C  4B B0 BE B5 */	bl func_8009AF20
/* 8058F070  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058F074  7C 08 03 A6 */	mtlr r0
/* 8058F078  38 21 00 30 */	addi r1, r1, 0x30
/* 8058F07C  4E 80 00 20 */	blr 
