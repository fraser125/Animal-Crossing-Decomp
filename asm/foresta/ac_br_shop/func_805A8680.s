lbl_805A8680:
/* 805A8680  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805A8684  7C 08 02 A6 */	mflr r0
/* 805A8688  7C 65 1B 78 */	mr r5, r3
/* 805A868C  90 01 00 74 */	stw r0, 0x74(r1)
/* 805A8690  38 61 00 5C */	addi r3, r1, 0x5c
/* 805A8694  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805A8698  7C 9F 23 78 */	mr r31, r4
/* 805A869C  38 85 00 28 */	addi r4, r5, 0x28
/* 805A86A0  4B E1 28 1D */	bl xyz_t_move
/* 805A86A4  3C 60 80 65 */	lis r3, data_8064A544@ha /* 0x8064A544@ha */
/* 805A86A8  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 805A86AC  C0 03 A5 44 */	lfs f0, data_8064A544@l(r3)  /* 0x8064A544@l */
/* 805A86B0  2C 1F 00 00 */	cmpwi r31, 0
/* 805A86B4  EC 01 00 2A */	fadds f0, f1, f0
/* 805A86B8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805A86BC  40 82 00 30 */	bne lbl_805A86EC
/* 805A86C0  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 805A86C4  38 81 00 50 */	addi r4, r1, 0x50
/* 805A86C8  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805A86CC  38 60 00 00 */	li r3, 0
/* 805A86D0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A86D4  38 A0 00 01 */	li r5, 1
/* 805A86D8  90 E1 00 50 */	stw r7, 0x50(r1)
/* 805A86DC  90 C1 00 54 */	stw r6, 0x54(r1)
/* 805A86E0  90 01 00 58 */	stw r0, 0x58(r1)
/* 805A86E4  4B DF F1 4D */	bl mFI_SetFG_common
/* 805A86E8  48 00 01 40 */	b lbl_805A8828
lbl_805A86EC:
/* 805A86EC  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A86F0  38 61 00 44 */	addi r3, r1, 0x44
/* 805A86F4  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805A86F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A86FC  90 A1 00 44 */	stw r5, 0x44(r1)
/* 805A8700  90 81 00 48 */	stw r4, 0x48(r1)
/* 805A8704  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805A8708  4B DF ED 29 */	bl mFI_GetUnitFG
/* 805A870C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A8710  41 82 01 18 */	beq lbl_805A8828
/* 805A8714  4B E4 94 59 */	bl mSN_ClearSnowman
/* 805A8718  2C 03 00 00 */	cmpwi r3, 0
/* 805A871C  40 82 00 E0 */	bne lbl_805A87FC
/* 805A8720  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805A8724  38 00 00 00 */	li r0, 0
/* 805A8728  28 03 00 2A */	cmplwi r3, 0x2a
/* 805A872C  41 80 00 0C */	blt lbl_805A8738
/* 805A8730  28 03 00 42 */	cmplwi r3, 0x42
/* 805A8734  40 81 00 0C */	ble lbl_805A8740
lbl_805A8738:
/* 805A8738  28 03 00 5C */	cmplwi r3, 0x5c
/* 805A873C  40 82 00 08 */	bne lbl_805A8744
lbl_805A8740:
/* 805A8740  38 00 00 01 */	li r0, 1
lbl_805A8744:
/* 805A8744  2C 00 00 01 */	cmpwi r0, 1
/* 805A8748  40 82 00 5C */	bne lbl_805A87A4
/* 805A874C  4B E2 0D 29 */	bl bg_item_fg_sub_dig2take_conv
/* 805A8750  4B E3 61 01 */	bl mPB_keep_item
/* 805A8754  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A8758  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805A875C  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805A8760  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805A8764  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A8768  38 81 00 38 */	addi r4, r1, 0x38
/* 805A876C  90 A1 00 38 */	stw r5, 0x38(r1)
/* 805A8770  38 A0 00 01 */	li r5, 1
/* 805A8774  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 805A8778  90 01 00 40 */	stw r0, 0x40(r1)
/* 805A877C  4B DF F0 B5 */	bl mFI_SetFG_common
/* 805A8780  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A8784  38 61 00 2C */	addi r3, r1, 0x2c
/* 805A8788  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805A878C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A8790  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 805A8794  90 81 00 30 */	stw r4, 0x30(r1)
/* 805A8798  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A879C  4B E0 08 8D */	bl mFI_Wpos2DepositOFF
/* 805A87A0  48 00 00 88 */	b lbl_805A8828
lbl_805A87A4:
/* 805A87A4  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A87A8  38 61 00 20 */	addi r3, r1, 0x20
/* 805A87AC  80 81 00 60 */	lwz r4, 0x60(r1)
/* 805A87B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A87B4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805A87B8  90 81 00 24 */	stw r4, 0x24(r1)
/* 805A87BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 805A87C0  4B E0 08 69 */	bl mFI_Wpos2DepositOFF
/* 805A87C4  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805A87C8  4B E3 60 89 */	bl mPB_keep_item
/* 805A87CC  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A87D0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805A87D4  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805A87D8  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805A87DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A87E0  38 81 00 14 */	addi r4, r1, 0x14
/* 805A87E4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805A87E8  38 A0 00 01 */	li r5, 1
/* 805A87EC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805A87F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A87F4  4B DF F0 3D */	bl mFI_SetFG_common
/* 805A87F8  48 00 00 30 */	b lbl_805A8828
lbl_805A87FC:
/* 805A87FC  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 805A8800  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805A8804  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 805A8808  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805A880C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A8810  38 81 00 08 */	addi r4, r1, 8
/* 805A8814  90 A1 00 08 */	stw r5, 8(r1)
/* 805A8818  38 A0 00 01 */	li r5, 1
/* 805A881C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805A8820  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A8824  4B DF F0 0D */	bl mFI_SetFG_common
lbl_805A8828:
/* 805A8828  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805A882C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805A8830  7C 08 03 A6 */	mtlr r0
/* 805A8834  38 21 00 70 */	addi r1, r1, 0x70
/* 805A8838  4E 80 00 20 */	blr 
