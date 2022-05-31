lbl_805E35D8:
/* 805E35D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E35DC  7C 08 02 A6 */	mflr r0
/* 805E35E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E35E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E35E8  4B AB 78 ED */	bl func_8009AED4
/* 805E35EC  7C 7F 1B 78 */	mr r31, r3
/* 805E35F0  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 805E35F4  3B BE 00 9C */	addi r29, r30, 0x9c
/* 805E35F8  81 9E 00 A8 */	lwz r12, 0xa8(r30)
/* 805E35FC  7D 89 03 A6 */	mtctr r12
/* 805E3600  4E 80 04 21 */	bctrl 
/* 805E3604  80 1D 00 04 */	lwz r0, 4(r29)
/* 805E3608  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CD5A4@ha */
/* 805E360C  38 A3 D5 A4 */	addi r5, r3, ovl_move_proc@l /* 0x806CD5A4@l */
/* 805E3610  7F E3 FB 78 */	mr r3, r31
/* 805E3614  54 00 10 3A */	slwi r0, r0, 2
/* 805E3618  7F A4 EB 78 */	mr r4, r29
/* 805E361C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E3620  7D 89 03 A6 */	mtctr r12
/* 805E3624  4E 80 04 21 */	bctrl 
/* 805E3628  80 1D 00 04 */	lwz r0, 4(r29)
/* 805E362C  2C 00 00 01 */	cmpwi r0, 1
/* 805E3630  41 82 00 14 */	beq lbl_805E3644
/* 805E3634  40 80 01 74 */	bge lbl_805E37A8
/* 805E3638  2C 00 00 00 */	cmpwi r0, 0
/* 805E363C  40 80 01 64 */	bge lbl_805E37A0
/* 805E3640  48 00 01 68 */	b lbl_805E37A8
lbl_805E3644:
/* 805E3644  7F E3 FB 78 */	mr r3, r31
/* 805E3648  4B FF E8 D5 */	bl mIV_pl_shape_move
/* 805E364C  38 00 00 01 */	li r0, 1
/* 805E3650  90 1E 09 3C */	stw r0, 0x93c(r30)
/* 805E3654  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805E3658  2C 00 00 00 */	cmpwi r0, 0
/* 805E365C  40 82 01 4C */	bne lbl_805E37A8
/* 805E3660  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 805E3664  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 805E3668  2C 00 00 02 */	cmpwi r0, 2
/* 805E366C  41 80 01 3C */	blt lbl_805E37A8
/* 805E3670  2C 00 00 00 */	cmpwi r0, 0
/* 805E3674  41 82 01 34 */	beq lbl_805E37A8
/* 805E3678  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805E367C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805E3680  80 63 00 00 */	lwz r3, 0(r3)
/* 805E3684  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 805E3688  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 805E368C  2C 00 00 02 */	cmpwi r0, 2
/* 805E3690  40 82 00 40 */	bne lbl_805E36D0
/* 805E3694  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E3698  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 805E369C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805E36A0  3C 84 00 02 */	addis r4, r4, 2
/* 805E36A4  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 805E36A8  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 805E36AC  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 805E36B0  38 A3 03 E8 */	addi r5, r3, 0x3e8
/* 805E36B4  7C 05 00 40 */	cmplw r5, r0
/* 805E36B8  40 81 00 08 */	ble lbl_805E36C0
/* 805E36BC  7C 05 03 78 */	mr r5, r0
lbl_805E36C0:
/* 805E36C0  90 A4 00 8C */	stw r5, 0x8c(r4)
/* 805E36C4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805E36C8  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805E36CC  90 A3 03 C0 */	stw r5, 0x3c0(r3)
lbl_805E36D0:
/* 805E36D0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805E36D4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805E36D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805E36DC  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 805E36E0  54 00 07 7A */	rlwinm r0, r0, 0, 0x1d, 0x1d
/* 805E36E4  2C 00 00 04 */	cmpwi r0, 4
/* 805E36E8  40 82 00 50 */	bne lbl_805E3738
/* 805E36EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E36F0  3B A0 00 00 */	li r29, 0
/* 805E36F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E36F8  3F E3 00 02 */	addis r31, r3, 2
lbl_805E36FC:
/* 805E36FC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805E3700  38 80 00 00 */	li r4, 0
/* 805E3704  38 A0 00 00 */	li r5, 0
/* 805E3708  4B DF D0 69 */	bl mPr_GetPossessionItemIdxWithCond
/* 805E370C  7C 64 1B 78 */	mr r4, r3
/* 805E3710  2C 04 FF FF */	cmpwi r4, -1
/* 805E3714  41 82 00 24 */	beq lbl_805E3738
/* 805E3718  38 1D 22 00 */	addi r0, r29, 0x2200
/* 805E371C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805E3720  38 C0 00 00 */	li r6, 0
/* 805E3724  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805E3728  4B DF D7 01 */	bl mPr_SetPossessionItem
/* 805E372C  3B BD 00 01 */	addi r29, r29, 1
/* 805E3730  2C 1D 00 04 */	cmpwi r29, 4
/* 805E3734  41 80 FF C8 */	blt lbl_805E36FC
lbl_805E3738:
/* 805E3738  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805E373C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805E3740  80 63 00 00 */	lwz r3, 0(r3)
/* 805E3744  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 805E3748  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805E374C  2C 00 00 01 */	cmpwi r0, 1
/* 805E3750  40 82 00 58 */	bne lbl_805E37A8
/* 805E3754  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E3758  3B A0 00 00 */	li r29, 0
/* 805E375C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E3760  3F E3 00 02 */	addis r31, r3, 2
lbl_805E3764:
/* 805E3764  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805E3768  38 80 00 00 */	li r4, 0
/* 805E376C  38 A0 00 00 */	li r5, 0
/* 805E3770  4B DF D0 01 */	bl mPr_GetPossessionItemIdxWithCond
/* 805E3774  7C 64 1B 78 */	mr r4, r3
/* 805E3778  2C 04 FF FF */	cmpwi r4, -1
/* 805E377C  41 82 00 2C */	beq lbl_805E37A8
/* 805E3780  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805E3784  38 A0 21 02 */	li r5, 0x2102
/* 805E3788  38 C0 00 00 */	li r6, 0
/* 805E378C  4B DF D6 9D */	bl mPr_SetPossessionItem
/* 805E3790  3B BD 00 01 */	addi r29, r29, 1
/* 805E3794  2C 1D 00 0F */	cmpwi r29, 0xf
/* 805E3798  41 80 FF CC */	blt lbl_805E3764
/* 805E379C  48 00 00 0C */	b lbl_805E37A8
lbl_805E37A0:
/* 805E37A0  38 00 00 00 */	li r0, 0
/* 805E37A4  90 1E 09 3C */	stw r0, 0x93c(r30)
lbl_805E37A8:
/* 805E37A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805E37AC  4B AB 77 75 */	bl func_8009AF20
/* 805E37B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E37B4  7C 08 03 A6 */	mtlr r0
/* 805E37B8  38 21 00 20 */	addi r1, r1, 0x20
/* 805E37BC  4E 80 00 20 */	blr 
