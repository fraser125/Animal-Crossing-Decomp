lbl_8050FAD8:
/* 8050FAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050FADC  7C 08 02 A6 */	mflr r0
/* 8050FAE0  2C 04 00 00 */	cmpwi r4, 0
/* 8050FAE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050FAE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050FAEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8050FAF0  41 80 01 34 */	blt lbl_8050FC24
/* 8050FAF4  2C 04 00 05 */	cmpwi r4, 5
/* 8050FAF8  40 80 01 2C */	bge lbl_8050FC24
/* 8050FAFC  54 84 10 3A */	slwi r4, r4, 2
/* 8050FB00  3B E4 00 14 */	addi r31, r4, 0x14
/* 8050FB04  7F E3 FA 14 */	add r31, r3, r31
/* 8050FB08  7F E3 FB 78 */	mr r3, r31
/* 8050FB0C  4B FF FC F1 */	bl mAGrw_CheckFreeSSPosInfo_com
/* 8050FB10  2C 03 00 00 */	cmpwi r3, 0
/* 8050FB14  40 82 01 08 */	bne lbl_8050FC1C
/* 8050FB18  88 BF 00 00 */	lbz r5, 0(r31)
/* 8050FB1C  28 05 00 00 */	cmplwi r5, 0
/* 8050FB20  41 82 00 F0 */	beq lbl_8050FC10
/* 8050FB24  28 05 00 06 */	cmplwi r5, 6
/* 8050FB28  40 80 00 E8 */	bge lbl_8050FC10
/* 8050FB2C  88 7F 00 01 */	lbz r3, 1(r31)
/* 8050FB30  28 03 00 00 */	cmplwi r3, 0
/* 8050FB34  41 82 00 DC */	beq lbl_8050FC10
/* 8050FB38  28 03 00 07 */	cmplwi r3, 7
/* 8050FB3C  40 80 00 D4 */	bge lbl_8050FC10
/* 8050FB40  88 DF 00 02 */	lbz r6, 2(r31)
/* 8050FB44  28 06 00 10 */	cmplwi r6, 0x10
/* 8050FB48  40 80 00 C8 */	bge lbl_8050FC10
/* 8050FB4C  88 FF 00 03 */	lbz r7, 3(r31)
/* 8050FB50  28 07 00 10 */	cmplwi r7, 0x10
/* 8050FB54  40 80 00 BC */	bge lbl_8050FC10
/* 8050FB58  38 03 FF FF */	addi r0, r3, -1
/* 8050FB5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FB60  1C 80 0A 00 */	mulli r4, r0, 0xa00
/* 8050FB64  38 05 FF FF */	addi r0, r5, -1
/* 8050FB68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FB6C  7C 83 22 14 */	add r4, r3, r4
/* 8050FB70  54 00 48 2C */	slwi r0, r0, 9
/* 8050FB74  7C 84 02 14 */	add r4, r4, r0
/* 8050FB78  54 E3 2C F4 */	rlwinm r3, r7, 5, 0x13, 0x1a
/* 8050FB7C  3C 84 00 01 */	addis r4, r4, 1
/* 8050FB80  54 C0 0D FC */	rlwinm r0, r6, 1, 0x17, 0x1e
/* 8050FB84  7C 64 1A 14 */	add r3, r4, r3
/* 8050FB88  7F C3 02 14 */	add r30, r3, r0
/* 8050FB8C  A4 7E 37 A8 */	lhzu r3, 0x37a8(r30)
/* 8050FB90  28 03 00 6A */	cmplwi r3, 0x6a
/* 8050FB94  41 80 00 0C */	blt lbl_8050FBA0
/* 8050FB98  28 03 00 6E */	cmplwi r3, 0x6e
/* 8050FB9C  40 81 00 40 */	ble lbl_8050FBDC
lbl_8050FBA0:
/* 8050FBA0  28 03 00 6F */	cmplwi r3, 0x6f
/* 8050FBA4  41 82 00 38 */	beq lbl_8050FBDC
/* 8050FBA8  28 03 00 63 */	cmplwi r3, 0x63
/* 8050FBAC  41 80 00 0C */	blt lbl_8050FBB8
/* 8050FBB0  28 03 00 67 */	cmplwi r3, 0x67
/* 8050FBB4  40 81 00 1C */	ble lbl_8050FBD0
lbl_8050FBB8:
/* 8050FBB8  28 03 00 6A */	cmplwi r3, 0x6a
/* 8050FBBC  41 80 00 0C */	blt lbl_8050FBC8
/* 8050FBC0  28 03 00 6E */	cmplwi r3, 0x6e
/* 8050FBC4  40 81 00 0C */	ble lbl_8050FBD0
lbl_8050FBC8:
/* 8050FBC8  28 03 00 6F */	cmplwi r3, 0x6f
/* 8050FBCC  40 82 00 10 */	bne lbl_8050FBDC
lbl_8050FBD0:
/* 8050FBD0  4B FF FC 55 */	bl mAGrw_ToMoneyStone
/* 8050FBD4  B0 7E 00 00 */	sth r3, 0(r30)
/* 8050FBD8  48 00 00 4C */	b lbl_8050FC24
lbl_8050FBDC:
/* 8050FBDC  28 03 00 63 */	cmplwi r3, 0x63
/* 8050FBE0  41 80 00 0C */	blt lbl_8050FBEC
/* 8050FBE4  28 03 00 67 */	cmplwi r3, 0x67
/* 8050FBE8  40 81 00 3C */	ble lbl_8050FC24
lbl_8050FBEC:
/* 8050FBEC  28 03 00 6A */	cmplwi r3, 0x6a
/* 8050FBF0  41 80 00 0C */	blt lbl_8050FBFC
/* 8050FBF4  28 03 00 6E */	cmplwi r3, 0x6e
/* 8050FBF8  40 81 00 2C */	ble lbl_8050FC24
lbl_8050FBFC:
/* 8050FBFC  28 03 00 6F */	cmplwi r3, 0x6f
/* 8050FC00  41 82 00 24 */	beq lbl_8050FC24
/* 8050FC04  7F E3 FB 78 */	mr r3, r31
/* 8050FC08  4B FF FB 59 */	bl func_8050F760
/* 8050FC0C  48 00 00 18 */	b lbl_8050FC24
lbl_8050FC10:
/* 8050FC10  7F E3 FB 78 */	mr r3, r31
/* 8050FC14  4B FF FB 4D */	bl func_8050F760
/* 8050FC18  48 00 00 0C */	b lbl_8050FC24
lbl_8050FC1C:
/* 8050FC1C  7F E3 FB 78 */	mr r3, r31
/* 8050FC20  4B FF FB 41 */	bl func_8050F760
lbl_8050FC24:
/* 8050FC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050FC28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050FC2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050FC30  7C 08 03 A6 */	mtlr r0
/* 8050FC34  38 21 00 10 */	addi r1, r1, 0x10
/* 8050FC38  4E 80 00 20 */	blr 
