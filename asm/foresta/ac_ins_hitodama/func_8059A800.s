lbl_8059A800:
/* 8059A800  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8059A804  7C 08 02 A6 */	mflr r0
/* 8059A808  90 01 00 54 */	stw r0, 0x54(r1)
/* 8059A80C  38 00 00 02 */	li r0, 2
/* 8059A810  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8059A814  7C 7F 1B 78 */	mr r31, r3
/* 8059A818  3C 60 80 65 */	lis r3, data_80649FA4@ha /* 0x80649FA4@ha */
/* 8059A81C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8059A820  7C 9E 23 78 */	mr r30, r4
/* 8059A824  C0 03 9F A4 */	lfs f0, data_80649FA4@l(r3)  /* 0x80649FA4@l */
/* 8059A828  3C 60 80 5A */	lis r3, aIHD_actor_move@ha /* 0x8059B198@ha */
/* 8059A82C  90 1F 02 18 */	stw r0, 0x218(r31)
/* 8059A830  38 63 B1 98 */	addi r3, r3, aIHD_actor_move@l /* 0x8059B198@l */
/* 8059A834  38 00 2D 28 */	li r0, 0x2d28
/* 8059A838  D0 1F 02 10 */	stfs f0, 0x210(r31)
/* 8059A83C  90 7F 01 64 */	stw r3, 0x164(r31)
/* 8059A840  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059A844  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 8059A848  2C 00 00 00 */	cmpwi r0, 0
/* 8059A84C  41 82 00 0C */	beq lbl_8059A858
/* 8059A850  38 80 00 00 */	li r4, 0
/* 8059A854  48 00 01 68 */	b lbl_8059A9BC
lbl_8059A858:
/* 8059A858  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059A85C  38 61 00 20 */	addi r3, r1, 0x20
/* 8059A860  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059A864  90 81 00 20 */	stw r4, 0x20(r1)
/* 8059A868  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A86C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059A870  90 01 00 28 */	stw r0, 0x28(r1)
/* 8059A874  4B DF 59 D1 */	bl mCoBG_Wpos2BgAttribute_Original
/* 8059A878  4B DF 9A 55 */	bl mCoBG_CheckWaterAttribute
/* 8059A87C  2C 03 00 00 */	cmpwi r3, 0
/* 8059A880  41 82 00 44 */	beq lbl_8059A8C4
/* 8059A884  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8059A888  3C 60 80 6C */	lis r3, data_806C3360@ha /* 0x806C3360@ha */
/* 8059A88C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059A890  38 83 33 60 */	addi r4, r3, data_806C3360@l /* 0x806C3360@l */
/* 8059A894  38 61 00 14 */	addi r3, r1, 0x14
/* 8059A898  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8059A89C  38 A0 00 9E */	li r5, 0x9e
/* 8059A8A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8059A8A4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059A8A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059A8AC  4B DF 97 0D */	bl mCoBG_GetWaterHeight_File
/* 8059A8B0  3C 60 80 65 */	lis r3, lit_448@ha /* 0x80649FA8@ha */
/* 8059A8B4  C0 03 9F A8 */	lfs f0, lit_448@l(r3)  /* 0x80649FA8@l */
/* 8059A8B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8059A8BC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8059A8C0  48 00 00 30 */	b lbl_8059A8F0
lbl_8059A8C4:
/* 8059A8C4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059A8C8  3C 60 80 65 */	lis r3, lit_450@ha /* 0x80649FAC@ha */
/* 8059A8CC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059A8D0  C0 23 9F AC */	lfs f1, lit_450@l(r3)  /* 0x80649FAC@l */
/* 8059A8D4  38 61 00 08 */	addi r3, r1, 8
/* 8059A8D8  90 81 00 08 */	stw r4, 8(r1)
/* 8059A8DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059A8E0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059A8E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059A8E8  4B DF 4F 39 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 8059A8EC  D0 3F 00 2C */	stfs f1, 0x2c(r31)
lbl_8059A8F0:
/* 8059A8F0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8059A8F4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8059A8F8  4B AC 23 FD */	bl fqrand
/* 8059A8FC  3C 80 80 65 */	lis r4, lit_451@ha /* 0x80649FB0@ha */
/* 8059A900  7F E3 FB 78 */	mr r3, r31
/* 8059A904  38 A4 9F B0 */	addi r5, r4, lit_451@l /* 0x80649FB0@l */
/* 8059A908  7F C4 F3 78 */	mr r4, r30
/* 8059A90C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059A910  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059A914  FC 00 00 1E */	fctiwz f0, f0
/* 8059A918  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8059A91C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059A920  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8059A924  48 00 02 4D */	bl aIHD_set_move_info
/* 8059A928  90 7F 02 3C */	stw r3, 0x23c(r31)
/* 8059A92C  4B AC 23 C9 */	bl fqrand
/* 8059A930  3C 60 80 65 */	lis r3, lit_451@ha /* 0x80649FB0@ha */
/* 8059A934  C0 03 9F B0 */	lfs f0, lit_451@l(r3)  /* 0x80649FB0@l */
/* 8059A938  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059A93C  FC 00 00 1E */	fctiwz f0, f0
/* 8059A940  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8059A944  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8059A948  90 1F 02 40 */	stw r0, 0x240(r31)
/* 8059A94C  4B AC 23 A9 */	bl fqrand
/* 8059A950  3C 80 80 65 */	lis r4, lit_452@ha /* 0x80649FB4@ha */
/* 8059A954  38 7F 02 44 */	addi r3, r31, 0x244
/* 8059A958  38 A4 9F B4 */	addi r5, r4, lit_452@l /* 0x80649FB4@l */
/* 8059A95C  38 9F 02 48 */	addi r4, r31, 0x248
/* 8059A960  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059A964  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059A968  FC 00 00 1E */	fctiwz f0, f0
/* 8059A96C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8059A970  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059A974  90 1F 02 2C */	stw r0, 0x22c(r31)
/* 8059A978  88 BF 00 08 */	lbz r5, 8(r31)
/* 8059A97C  88 DF 00 09 */	lbz r6, 9(r31)
/* 8059A980  7C A5 07 74 */	extsb r5, r5
/* 8059A984  7C C6 07 74 */	extsb r6, r6
/* 8059A988  4B E0 B1 F1 */	bl mFI_BkNum2WposXZ
/* 8059A98C  3C 60 80 65 */	lis r3, lit_453@ha /* 0x80649FB8@ha */
/* 8059A990  C0 1F 02 44 */	lfs f0, 0x244(r31)
/* 8059A994  38 83 9F B8 */	addi r4, r3, lit_453@l /* 0x80649FB8@l */
/* 8059A998  7F E3 FB 78 */	mr r3, r31
/* 8059A99C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8059A9A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8059A9A4  D0 1F 02 44 */	stfs f0, 0x244(r31)
/* 8059A9A8  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 8059A9AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8059A9B0  D0 1F 02 48 */	stfs f0, 0x248(r31)
/* 8059A9B4  48 00 00 65 */	bl aIHD_unregist_set_block_table
/* 8059A9B8  38 80 00 02 */	li r4, 2
lbl_8059A9BC:
/* 8059A9BC  7F E3 FB 78 */	mr r3, r31
/* 8059A9C0  7F C5 F3 78 */	mr r5, r30
/* 8059A9C4  48 00 07 89 */	bl aIHD_setupAction
/* 8059A9C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8059A9CC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8059A9D0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8059A9D4  7C 08 03 A6 */	mtlr r0
/* 8059A9D8  38 21 00 50 */	addi r1, r1, 0x50
/* 8059A9DC  4E 80 00 20 */	blr 
