lbl_8039F330:
/* 8039F330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039F334  7C 08 02 A6 */	mflr r0
/* 8039F338  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039F33C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039F340  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039F344  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039F348  3F E3 00 02 */	addis r31, r3, 2
/* 8039F34C  A0 1F 3F 30 */	lhz r0, 0x3f30(r31)
/* 8039F350  28 00 FF FF */	cmplwi r0, 0xffff
/* 8039F354  41 82 00 8C */	beq lbl_8039F3E0
/* 8039F358  38 61 00 10 */	addi r3, r1, 0x10
/* 8039F35C  38 9F 41 44 */	addi r4, r31, 0x4144
/* 8039F360  48 06 7E D5 */	bl lbRTC_TimeCopy
/* 8039F364  38 61 00 08 */	addi r3, r1, 8
/* 8039F368  38 9F 41 44 */	addi r4, r31, 0x4144
/* 8039F36C  48 06 7E C9 */	bl lbRTC_TimeCopy
/* 8039F370  38 61 00 10 */	addi r3, r1, 0x10
/* 8039F374  38 80 00 07 */	li r4, 7
/* 8039F378  48 06 79 AD */	bl lbRTC_Add_DD
/* 8039F37C  38 61 00 08 */	addi r3, r1, 8
/* 8039F380  38 80 00 07 */	li r4, 7
/* 8039F384  48 06 7C 39 */	bl lbRTC_Sub_DD
/* 8039F388  88 1F 41 42 */	lbz r0, 0x4142(r31)
/* 8039F38C  28 00 00 0A */	cmplwi r0, 0xa
/* 8039F390  40 80 00 4C */	bge lbl_8039F3DC
/* 8039F394  A0 61 00 16 */	lhz r3, 0x16(r1)
/* 8039F398  88 81 00 15 */	lbz r4, 0x15(r1)
/* 8039F39C  88 A1 00 13 */	lbz r5, 0x13(r1)
/* 8039F3A0  A0 DF 61 26 */	lhz r6, 0x6126(r31)
/* 8039F3A4  88 FF 61 25 */	lbz r7, 0x6125(r31)
/* 8039F3A8  89 1F 61 23 */	lbz r8, 0x6123(r31)
/* 8039F3AC  48 06 74 41 */	bl lbRTC_IsEqualDate
/* 8039F3B0  2C 03 00 01 */	cmpwi r3, 1
/* 8039F3B4  40 82 00 28 */	bne lbl_8039F3DC
/* 8039F3B8  A0 61 00 0E */	lhz r3, 0xe(r1)
/* 8039F3BC  88 81 00 0D */	lbz r4, 0xd(r1)
/* 8039F3C0  88 A1 00 0B */	lbz r5, 0xb(r1)
/* 8039F3C4  A0 DF 61 26 */	lhz r6, 0x6126(r31)
/* 8039F3C8  88 FF 61 25 */	lbz r7, 0x6125(r31)
/* 8039F3CC  89 1F 61 23 */	lbz r8, 0x6123(r31)
/* 8039F3D0  48 06 74 1D */	bl lbRTC_IsEqualDate
/* 8039F3D4  2C 03 FF FF */	cmpwi r3, -1
/* 8039F3D8  41 82 00 08 */	beq lbl_8039F3E0
lbl_8039F3DC:
/* 8039F3DC  4B FF FE 31 */	bl mMC_mask_cat_init
lbl_8039F3E0:
/* 8039F3E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039F3E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039F3E8  7C 08 03 A6 */	mtlr r0
/* 8039F3EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8039F3F0  4E 80 00 20 */	blr 
