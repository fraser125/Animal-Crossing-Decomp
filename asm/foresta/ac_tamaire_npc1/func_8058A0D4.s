lbl_8058A0D4:
/* 8058A0D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058A0D8  7C 08 02 A6 */	mflr r0
/* 8058A0DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058A0E0  39 61 00 30 */	addi r11, r1, 0x30
/* 8058A0E4  4B B1 0D F1 */	bl func_8009AED4
/* 8058A0E8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058A0EC  7C 7F 1B 78 */	mr r31, r3
/* 8058A0F0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058A0F4  7C 9D 23 78 */	mr r29, r4
/* 8058A0F8  3F C5 00 02 */	addis r30, r5, 2
/* 8058A0FC  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8058A100  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8058A104  7D 89 03 A6 */	mtctr r12
/* 8058A108  4E 80 04 21 */	bctrl 
/* 8058A10C  2C 03 00 01 */	cmpwi r3, 1
/* 8058A110  40 82 00 D0 */	bne lbl_8058A1E0
/* 8058A114  3C 60 80 59 */	lis r3, aTMN1_schedule_proc@ha /* 0x8058B3FC@ha */
/* 8058A118  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C20DC@ha */
/* 8058A11C  38 03 B3 FC */	addi r0, r3, aTMN1_schedule_proc@l /* 0x8058B3FC@l */
/* 8058A120  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8058A124  38 A4 20 DC */	addi r5, r4, ct_data@l /* 0x806C20DC@l */
/* 8058A128  7F E3 FB 78 */	mr r3, r31
/* 8058A12C  7F A4 EB 78 */	mr r4, r29
/* 8058A130  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8058A134  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8058A138  7D 89 03 A6 */	mtctr r12
/* 8058A13C  4E 80 04 21 */	bctrl 
/* 8058A140  38 60 FF FF */	li r3, -1
/* 8058A144  38 00 00 00 */	li r0, 0
/* 8058A148  90 7F 08 F4 */	stw r3, 0x8f4(r31)
/* 8058A14C  7F E3 FB 78 */	mr r3, r31
/* 8058A150  98 1F 09 AE */	stb r0, 0x9ae(r31)
/* 8058A154  98 1F 09 B0 */	stb r0, 0x9b0(r31)
/* 8058A158  98 1F 09 AF */	stb r0, 0x9af(r31)
/* 8058A15C  4B E4 7D A5 */	bl mNpc_GetNpcLooks
/* 8058A160  3C 80 80 6C */	lis r4, base_msg_table@ha /* 0x806C20F8@ha */
/* 8058A164  54 60 10 3A */	slwi r0, r3, 2
/* 8058A168  38 84 20 F8 */	addi r4, r4, base_msg_table@l /* 0x806C20F8@l */
/* 8058A16C  3C 60 80 65 */	lis r3, data_80649B54@ha /* 0x80649B54@ha */
/* 8058A170  7C 84 00 2E */	lwzx r4, r4, r0
/* 8058A174  38 00 00 00 */	li r0, 0
/* 8058A178  C0 23 9B 54 */	lfs f1, data_80649B54@l(r3)  /* 0x80649B54@l */
/* 8058A17C  38 61 00 08 */	addi r3, r1, 8
/* 8058A180  90 9F 09 9C */	stw r4, 0x99c(r31)
/* 8058A184  98 1F 09 59 */	stb r0, 0x959(r31)
/* 8058A188  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8058A18C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8058A190  90 81 00 08 */	stw r4, 8(r1)
/* 8058A194  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058A198  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8058A19C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058A1A0  4B E0 57 F9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8058A1A4  3C 60 80 65 */	lis r3, data_80649B54@ha /* 0x80649B54@ha */
/* 8058A1A8  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8058A1AC  38 A3 9B 54 */	addi r5, r3, data_80649B54@l /* 0x80649B54@l */
/* 8058A1B0  3C 80 81 1F */	lis r4, aTMN1_flag@ha /* 0x811ED3E0@ha */
/* 8058A1B4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8058A1B8  3C 60 80 65 */	lis r3, lit_482@ha /* 0x80649B58@ha */
/* 8058A1BC  38 A0 00 00 */	li r5, 0
/* 8058A1C0  38 00 00 23 */	li r0, 0x23
/* 8058A1C4  D0 3F 00 6C */	stfs f1, 0x6c(r31)
/* 8058A1C8  C0 03 9B 58 */	lfs f0, lit_482@l(r3)  /* 0x80649B58@l */
/* 8058A1CC  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 8058A1D0  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 8058A1D4  B0 A4 D3 E0 */	sth r5, aTMN1_flag@l(r4)  /* 0x811ED3E0@l */
/* 8058A1D8  B0 1F 09 46 */	sth r0, 0x946(r31)
/* 8058A1DC  D0 1F 01 44 */	stfs f0, 0x144(r31)
lbl_8058A1E0:
/* 8058A1E0  39 61 00 30 */	addi r11, r1, 0x30
/* 8058A1E4  4B B1 0D 3D */	bl func_8009AF20
/* 8058A1E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058A1EC  7C 08 03 A6 */	mtlr r0
/* 8058A1F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8058A1F4  4E 80 00 20 */	blr 
