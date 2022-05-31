lbl_8058E610:
/* 8058E610  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058E614  7C 08 02 A6 */	mflr r0
/* 8058E618  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058E61C  39 61 00 30 */	addi r11, r1, 0x30
/* 8058E620  4B B0 C8 B5 */	bl func_8009AED4
/* 8058E624  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058E628  7C 7F 1B 78 */	mr r31, r3
/* 8058E62C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058E630  7C 9D 23 78 */	mr r29, r4
/* 8058E634  3F C5 00 02 */	addis r30, r5, 2
/* 8058E638  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8058E63C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8058E640  7D 89 03 A6 */	mtctr r12
/* 8058E644  4E 80 04 21 */	bctrl 
/* 8058E648  2C 03 00 01 */	cmpwi r3, 1
/* 8058E64C  40 82 00 CC */	bne lbl_8058E718
/* 8058E650  3C 60 80 59 */	lis r3, aTNN0_schedule_proc@ha /* 0x8058EF38@ha */
/* 8058E654  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C25D4@ha */
/* 8058E658  38 03 EF 38 */	addi r0, r3, aTNN0_schedule_proc@l /* 0x8058EF38@l */
/* 8058E65C  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8058E660  38 A4 25 D4 */	addi r5, r4, ct_data@l /* 0x806C25D4@l */
/* 8058E664  7F E3 FB 78 */	mr r3, r31
/* 8058E668  7F A4 EB 78 */	mr r4, r29
/* 8058E66C  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8058E670  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8058E674  7D 89 03 A6 */	mtctr r12
/* 8058E678  4E 80 04 21 */	bctrl 
/* 8058E67C  38 00 FF FF */	li r0, -1
/* 8058E680  38 80 00 00 */	li r4, 0
/* 8058E684  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 8058E688  38 00 00 01 */	li r0, 1
/* 8058E68C  7F E3 FB 78 */	mr r3, r31
/* 8058E690  98 9F 09 A9 */	stb r4, 0x9a9(r31)
/* 8058E694  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8058E698  4B E4 38 69 */	bl mNpc_GetNpcLooks
/* 8058E69C  3C 80 80 6C */	lis r4, base_msg_table@ha /* 0x806C25F0@ha */
/* 8058E6A0  54 60 10 3A */	slwi r0, r3, 2
/* 8058E6A4  38 84 25 F0 */	addi r4, r4, base_msg_table@l /* 0x806C25F0@l */
/* 8058E6A8  3C 60 80 65 */	lis r3, data_80649BE4@ha /* 0x80649BE4@ha */
/* 8058E6AC  7C A4 00 2E */	lwzx r5, r4, r0
/* 8058E6B0  38 83 9B E4 */	addi r4, r3, data_80649BE4@l /* 0x80649BE4@l */
/* 8058E6B4  3C 60 80 65 */	lis r3, lit_484@ha /* 0x80649BE8@ha */
/* 8058E6B8  38 00 00 02 */	li r0, 2
/* 8058E6BC  90 BF 09 A0 */	stw r5, 0x9a0(r31)
/* 8058E6C0  38 A0 00 70 */	li r5, 0x70
/* 8058E6C4  C0 23 9B E8 */	lfs f1, lit_484@l(r3)  /* 0x80649BE8@l */
/* 8058E6C8  38 61 00 08 */	addi r3, r1, 8
/* 8058E6CC  98 1F 09 73 */	stb r0, 0x973(r31)
/* 8058E6D0  38 00 00 00 */	li r0, 0
/* 8058E6D4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8058E6D8  B0 BF 09 74 */	sth r5, 0x974(r31)
/* 8058E6DC  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 8058E6E0  98 1F 09 59 */	stb r0, 0x959(r31)
/* 8058E6E4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8058E6E8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8058E6EC  90 81 00 08 */	stw r4, 8(r1)
/* 8058E6F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058E6F4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8058E6F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058E6FC  4B E0 12 9D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8058E700  3C 60 80 65 */	lis r3, lit_484@ha /* 0x80649BE8@ha */
/* 8058E704  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8058E708  C0 03 9B E8 */	lfs f0, lit_484@l(r3)  /* 0x80649BE8@l */
/* 8058E70C  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8058E710  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8058E714  D0 1F 00 7C */	stfs f0, 0x7c(r31)
lbl_8058E718:
/* 8058E718  39 61 00 30 */	addi r11, r1, 0x30
/* 8058E71C  4B B0 C8 05 */	bl func_8009AF20
/* 8058E720  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058E724  7C 08 03 A6 */	mtlr r0
/* 8058E728  38 21 00 30 */	addi r1, r1, 0x30
/* 8058E72C  4E 80 00 20 */	blr 
