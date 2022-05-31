lbl_8058B43C:
/* 8058B43C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058B440  7C 08 02 A6 */	mflr r0
/* 8058B444  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058B448  39 61 00 30 */	addi r11, r1, 0x30
/* 8058B44C  4B B0 FA 89 */	bl func_8009AED4
/* 8058B450  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058B454  7C 7F 1B 78 */	mr r31, r3
/* 8058B458  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058B45C  7C 9D 23 78 */	mr r29, r4
/* 8058B460  3F C5 00 02 */	addis r30, r5, 2
/* 8058B464  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8058B468  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8058B46C  7D 89 03 A6 */	mtctr r12
/* 8058B470  4E 80 04 21 */	bctrl 
/* 8058B474  2C 03 00 01 */	cmpwi r3, 1
/* 8058B478  40 82 00 E8 */	bne lbl_8058B560
/* 8058B47C  3C 60 80 59 */	lis r3, aTKN0_schedule_proc@ha /* 0x8058C148@ha */
/* 8058B480  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C21EC@ha */
/* 8058B484  38 03 C1 48 */	addi r0, r3, aTKN0_schedule_proc@l /* 0x8058C148@l */
/* 8058B488  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8058B48C  38 A4 21 EC */	addi r5, r4, ct_data@l /* 0x806C21EC@l */
/* 8058B490  7F E3 FB 78 */	mr r3, r31
/* 8058B494  7F A4 EB 78 */	mr r4, r29
/* 8058B498  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8058B49C  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8058B4A0  7D 89 03 A6 */	mtctr r12
/* 8058B4A4  4E 80 04 21 */	bctrl 
/* 8058B4A8  38 00 FF FF */	li r0, -1
/* 8058B4AC  7F E3 FB 78 */	mr r3, r31
/* 8058B4B0  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 8058B4B4  4B E4 6A 4D */	bl mNpc_GetNpcLooks
/* 8058B4B8  3C 80 80 6C */	lis r4, base_msg_table@ha /* 0x806C2208@ha */
/* 8058B4BC  54 60 10 3A */	slwi r0, r3, 2
/* 8058B4C0  38 84 22 08 */	addi r4, r4, base_msg_table@l /* 0x806C2208@l */
/* 8058B4C4  3C 60 80 65 */	lis r3, data_80649B9C@ha /* 0x80649B9C@ha */
/* 8058B4C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8058B4CC  38 00 00 00 */	li r0, 0
/* 8058B4D0  C0 03 9B 9C */	lfs f0, data_80649B9C@l(r3)  /* 0x80649B9C@l */
/* 8058B4D4  38 60 00 0F */	li r3, 0xf
/* 8058B4D8  90 9F 09 9C */	stw r4, 0x99c(r31)
/* 8058B4DC  38 80 00 08 */	li r4, 8
/* 8058B4E0  98 1F 09 AA */	stb r0, 0x9aa(r31)
/* 8058B4E4  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 8058B4E8  4B E1 28 E5 */	bl mEv_get_save_area
/* 8058B4EC  28 03 00 00 */	cmplwi r3, 0
/* 8058B4F0  41 82 00 1C */	beq lbl_8058B50C
/* 8058B4F4  88 03 00 00 */	lbz r0, 0(r3)
/* 8058B4F8  28 00 00 03 */	cmplwi r0, 3
/* 8058B4FC  40 82 00 10 */	bne lbl_8058B50C
/* 8058B500  38 00 00 00 */	li r0, 0
/* 8058B504  98 03 00 00 */	stb r0, 0(r3)
/* 8058B508  B0 03 00 02 */	sth r0, 2(r3)
lbl_8058B50C:
/* 8058B50C  38 00 00 01 */	li r0, 1
/* 8058B510  3C 60 80 65 */	lis r3, lit_487@ha /* 0x80649BA0@ha */
/* 8058B514  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8058B518  38 00 00 00 */	li r0, 0
/* 8058B51C  38 83 9B A0 */	addi r4, r3, lit_487@l /* 0x80649BA0@l */
/* 8058B520  38 61 00 08 */	addi r3, r1, 8
/* 8058B524  98 1F 09 59 */	stb r0, 0x959(r31)
/* 8058B528  C0 24 00 00 */	lfs f1, 0(r4)
/* 8058B52C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8058B530  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8058B534  90 81 00 08 */	stw r4, 8(r1)
/* 8058B538  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058B53C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8058B540  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058B544  4B E0 44 55 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8058B548  3C 60 80 65 */	lis r3, lit_487@ha /* 0x80649BA0@ha */
/* 8058B54C  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8058B550  C0 03 9B A0 */	lfs f0, lit_487@l(r3)  /* 0x80649BA0@l */
/* 8058B554  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8058B558  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8058B55C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
lbl_8058B560:
/* 8058B560  39 61 00 30 */	addi r11, r1, 0x30
/* 8058B564  4B B0 F9 BD */	bl func_8009AF20
/* 8058B568  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058B56C  7C 08 03 A6 */	mtlr r0
/* 8058B570  38 21 00 30 */	addi r1, r1, 0x30
/* 8058B574  4E 80 00 20 */	blr 
