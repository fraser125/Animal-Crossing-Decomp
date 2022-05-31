lbl_803B36B0:
/* 803B36B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B36B4  7C 08 02 A6 */	mflr r0
/* 803B36B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B36BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803B36C0  4B CE 78 0D */	bl func_8009AECC
/* 803B36C4  7C 7E 1B 78 */	mr r30, r3
/* 803B36C8  7C 9F 23 78 */	mr r31, r4
/* 803B36CC  2C 1E 00 04 */	cmpwi r30, 4
/* 803B36D0  3B 60 00 00 */	li r27, 0
/* 803B36D4  40 80 00 A8 */	bge lbl_803B377C
/* 803B36D8  2C 1F 00 04 */	cmpwi r31, 4
/* 803B36DC  40 80 00 A0 */	bge lbl_803B377C
/* 803B36E0  7F E3 FB 78 */	mr r3, r31
/* 803B36E4  4B FF FE F5 */	bl mHS_get_pl_no
/* 803B36E8  1C BF 26 B0 */	mulli r5, r31, 0x26b0
/* 803B36EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B36F0  7C 7D 1B 78 */	mr r29, r3
/* 803B36F4  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803B36F8  7C 60 2A 14 */	add r3, r0, r5
/* 803B36FC  3F 83 00 01 */	addis r28, r3, 1
/* 803B3700  3B 9C 9C E8 */	addi r28, r28, -25368
/* 803B3704  7F 83 E3 78 */	mr r3, r28
/* 803B3708  48 02 C9 3D */	bl mPr_NullCheckPersonalID
/* 803B370C  2C 03 00 01 */	cmpwi r3, 1
/* 803B3710  40 82 00 6C */	bne lbl_803B377C
/* 803B3714  7C 1D F0 00 */	cmpw r29, r30
/* 803B3718  41 82 00 54 */	beq lbl_803B376C
/* 803B371C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3720  57 C4 08 3C */	slwi r4, r30, 1
/* 803B3724  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B3728  38 00 00 03 */	li r0, 3
/* 803B372C  3C A3 00 02 */	addis r5, r3, 2
/* 803B3730  57 A8 08 3C */	slwi r8, r29, 1
/* 803B3734  88 C5 06 8A */	lbz r6, 0x68a(r5)
/* 803B3738  7C 03 20 30 */	slw r3, r0, r4
/* 803B373C  7C 00 40 30 */	slw r0, r0, r8
/* 803B3740  38 E0 FF FF */	li r7, -1
/* 803B3744  7C 63 03 78 */	or r3, r3, r0
/* 803B3748  7C C0 24 30 */	srw r0, r6, r4
/* 803B374C  7F E4 20 30 */	slw r4, r31, r4
/* 803B3750  7C E7 1A 78 */	xor r7, r7, r3
/* 803B3754  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803B3758  7C C3 38 38 */	and r3, r6, r7
/* 803B375C  7C 00 40 30 */	slw r0, r0, r8
/* 803B3760  7C 60 03 78 */	or r0, r3, r0
/* 803B3764  7C 80 03 78 */	or r0, r4, r0
/* 803B3768  98 05 06 8A */	stb r0, 0x68a(r5)
lbl_803B376C:
/* 803B376C  7F 83 E3 78 */	mr r3, r28
/* 803B3770  7F C4 F3 78 */	mr r4, r30
/* 803B3774  4B FF F8 F1 */	bl mHm_InitHomeInfo
/* 803B3778  3B 60 00 01 */	li r27, 1
lbl_803B377C:
/* 803B377C  7F 63 DB 78 */	mr r3, r27
/* 803B3780  39 61 00 20 */	addi r11, r1, 0x20
/* 803B3784  4B CE 77 95 */	bl func_8009AF18
/* 803B3788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B378C  7C 08 03 A6 */	mtlr r0
/* 803B3790  38 21 00 20 */	addi r1, r1, 0x20
/* 803B3794  4E 80 00 20 */	blr 
