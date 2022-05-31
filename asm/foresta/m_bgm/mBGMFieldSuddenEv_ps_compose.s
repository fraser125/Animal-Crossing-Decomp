lbl_8037957C:
/* 8037957C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80379580  7C 08 02 A6 */	mflr r0
/* 80379584  90 01 00 24 */	stw r0, 0x24(r1)
/* 80379588  39 61 00 20 */	addi r11, r1, 0x20
/* 8037958C  4B D2 19 41 */	bl func_8009AECC
/* 80379590  7C 7B 1B 78 */	mr r27, r3
/* 80379594  3B A0 00 00 */	li r29, 0
/* 80379598  3B 80 00 01 */	li r28, 1
lbl_8037959C:
/* 8037959C  80 7B 00 00 */	lwz r3, 0(r27)
/* 803795A0  80 1B 00 04 */	lwz r0, 4(r27)
/* 803795A4  7C 65 E0 38 */	and r5, r3, r28
/* 803795A8  30 85 FF FF */	addic r4, r5, -1
/* 803795AC  7C 03 E0 38 */	and r3, r0, r28
/* 803795B0  7F E4 29 11 */	subfe. r31, r4, r5
/* 803795B4  30 03 FF FF */	addic r0, r3, -1
/* 803795B8  7F C0 19 10 */	subfe r30, r0, r3
/* 803795BC  40 82 00 20 */	bne lbl_803795DC
/* 803795C0  2C 1E 00 00 */	cmpwi r30, 0
/* 803795C4  41 82 00 18 */	beq lbl_803795DC
/* 803795C8  3C 60 80 65 */	lis r3, bgm_num_data@ha /* 0x8064F5B4@ha */
/* 803795CC  38 80 01 68 */	li r4, 0x168
/* 803795D0  38 63 F5 B4 */	addi r3, r3, bgm_num_data@l /* 0x8064F5B4@l */
/* 803795D4  7C 63 E8 AE */	lbzx r3, r3, r29
/* 803795D8  48 00 2F 35 */	bl mBGMPsComp_delete_ps_fieldSuddenEv
lbl_803795DC:
/* 803795DC  2C 1F 00 00 */	cmpwi r31, 0
/* 803795E0  41 82 00 24 */	beq lbl_80379604
/* 803795E4  2C 1E 00 00 */	cmpwi r30, 0
/* 803795E8  40 82 00 1C */	bne lbl_80379604
/* 803795EC  3C 60 80 65 */	lis r3, bgm_num_data@ha /* 0x8064F5B4@ha */
/* 803795F0  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 803795F4  38 63 F5 B4 */	addi r3, r3, bgm_num_data@l /* 0x8064F5B4@l */
/* 803795F8  38 80 01 68 */	li r4, 0x168
/* 803795FC  7C 63 E8 AE */	lbzx r3, r3, r29
/* 80379600  48 00 2A 3D */	bl mBGMPsComp_make_ps_fieldSuddenEv
lbl_80379604:
/* 80379604  3B BD 00 01 */	addi r29, r29, 1
/* 80379608  57 9C 08 3C */	slwi r28, r28, 1
/* 8037960C  2C 1D 00 03 */	cmpwi r29, 3
/* 80379610  41 80 FF 8C */	blt lbl_8037959C
/* 80379614  39 61 00 20 */	addi r11, r1, 0x20
/* 80379618  4B D2 19 01 */	bl func_8009AF18
/* 8037961C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80379620  7C 08 03 A6 */	mtlr r0
/* 80379624  38 21 00 20 */	addi r1, r1, 0x20
/* 80379628  4E 80 00 20 */	blr 
