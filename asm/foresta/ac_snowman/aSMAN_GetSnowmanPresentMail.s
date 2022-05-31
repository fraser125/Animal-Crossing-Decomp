lbl_804A36A8:
/* 804A36A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A36AC  7C 08 02 A6 */	mflr r0
/* 804A36B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A36B4  39 61 00 40 */	addi r11, r1, 0x40
/* 804A36B8  4B BF 78 19 */	bl func_8009AED0
/* 804A36BC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804A36C0  7C 7F 1B 78 */	mr r31, r3
/* 804A36C4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804A36C8  3C 63 00 02 */	addis r3, r3, 2
/* 804A36CC  83 C3 61 3C */	lwz r30, 0x613c(r3)
/* 804A36D0  4B BB 96 25 */	bl fqrand
/* 804A36D4  3C 80 80 64 */	lis r4, lit_540@ha /* 0x80645CA8@ha */
/* 804A36D8  3C 60 80 69 */	lis r3, snow_item_table@ha /* 0x8068E830@ha */
/* 804A36DC  C0 04 5C A8 */	lfs f0, lit_540@l(r4)  /* 0x80645CA8@l */
/* 804A36E0  38 63 E8 30 */	addi r3, r3, snow_item_table@l /* 0x8068E830@l */
/* 804A36E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A36E8  FC 00 00 1E */	fctiwz f0, f0
/* 804A36EC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804A36F0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 804A36F4  57 A0 08 3C */	slwi r0, r29, 1
/* 804A36F8  7C 63 02 2E */	lhzx r3, r3, r0
/* 804A36FC  4B F4 45 E9 */	bl mSP_CollectCheck
/* 804A3700  2C 03 00 00 */	cmpwi r3, 0
/* 804A3704  41 82 00 20 */	beq lbl_804A3724
/* 804A3708  4B BB 95 ED */	bl fqrand
/* 804A370C  3C 60 80 64 */	lis r3, lit_540@ha /* 0x80645CA8@ha */
/* 804A3710  C0 03 5C A8 */	lfs f0, lit_540@l(r3)  /* 0x80645CA8@l */
/* 804A3714  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A3718  FC 00 00 1E */	fctiwz f0, f0
/* 804A371C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804A3720  83 A1 00 2C */	lwz r29, 0x2c(r1)
lbl_804A3724:
/* 804A3724  3C 60 80 69 */	lis r3, snow_item_table@ha /* 0x8068E830@ha */
/* 804A3728  57 A0 08 3C */	slwi r0, r29, 1
/* 804A372C  38 63 E8 30 */	addi r3, r3, snow_item_table@l /* 0x8068E830@l */
/* 804A3730  3B BD 02 02 */	addi r29, r29, 0x202
/* 804A3734  7F 83 02 2E */	lhzx r28, r3, r0
/* 804A3738  38 61 00 0C */	addi r3, r1, 0xc
/* 804A373C  7F 84 E3 78 */	mr r4, r28
/* 804A3740  4B F1 22 65 */	bl mIN_copy_name_str
/* 804A3744  38 81 00 0C */	addi r4, r1, 0xc
/* 804A3748  38 60 00 00 */	li r3, 0
/* 804A374C  38 A0 00 10 */	li r5, 0x10
/* 804A3750  4B F0 E2 09 */	bl mHandbill_Set_free_str
/* 804A3754  7F A7 EB 78 */	mr r7, r29
/* 804A3758  38 7F 00 32 */	addi r3, r31, 0x32
/* 804A375C  38 81 00 08 */	addi r4, r1, 8
/* 804A3760  38 BF 01 0A */	addi r5, r31, 0x10a
/* 804A3764  38 DF 00 4A */	addi r6, r31, 0x4a
/* 804A3768  4B F0 EF CD */	bl mHandbill_Load_HandbillFromRom
/* 804A376C  80 61 00 08 */	lwz r3, 8(r1)
/* 804A3770  38 C0 00 00 */	li r6, 0
/* 804A3774  38 A0 00 08 */	li r5, 8
/* 804A3778  38 00 00 0C */	li r0, 0xc
/* 804A377C  98 7F 00 2F */	stb r3, 0x2f(r31)
/* 804A3780  7F E3 FB 78 */	mr r3, r31
/* 804A3784  7F C4 F3 78 */	mr r4, r30
/* 804A3788  98 DF 00 2E */	stb r6, 0x2e(r31)
/* 804A378C  98 BF 00 30 */	stb r5, 0x30(r31)
/* 804A3790  B3 9F 00 2C */	sth r28, 0x2c(r31)
/* 804A3794  98 1F 00 31 */	stb r0, 0x31(r31)
/* 804A3798  4B F3 C9 89 */	bl mPr_CopyPersonalID
/* 804A379C  38 00 00 00 */	li r0, 0
/* 804A37A0  39 61 00 40 */	addi r11, r1, 0x40
/* 804A37A4  98 1F 00 14 */	stb r0, 0x14(r31)
/* 804A37A8  4B BF 77 75 */	bl func_8009AF1C
/* 804A37AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A37B0  7C 08 03 A6 */	mtlr r0
/* 804A37B4  38 21 00 40 */	addi r1, r1, 0x40
/* 804A37B8  4E 80 00 20 */	blr 
