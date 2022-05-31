lbl_803EA050:
/* 803EA050  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EA054  7C 08 02 A6 */	mflr r0
/* 803EA058  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EA05C  39 61 00 20 */	addi r11, r1, 0x20
/* 803EA060  4B CB 0E 71 */	bl func_8009AED0
/* 803EA064  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EA068  3B 80 00 00 */	li r28, 0
/* 803EA06C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EA070  3F E3 00 02 */	addis r31, r3, 2
/* 803EA074  3B DF 03 46 */	addi r30, r31, 0x346
/* 803EA078  3B BF 04 5E */	addi r29, r31, 0x45e
lbl_803EA07C:
/* 803EA07C  7F C3 F3 78 */	mr r3, r30
/* 803EA080  4B FF 60 0D */	bl mPr_ClearPersonalID
/* 803EA084  3B 9C 00 01 */	addi r28, r28, 1
/* 803EA088  3B DE 00 14 */	addi r30, r30, 0x14
/* 803EA08C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 803EA090  41 80 FF EC */	blt lbl_803EA07C
/* 803EA094  4B FF FE E9 */	bl mSP_InitGoods
/* 803EA098  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EA09C  38 80 00 00 */	li r4, 0
/* 803EA0A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EA0A4  38 00 00 03 */	li r0, 3
/* 803EA0A8  3C 63 00 02 */	addis r3, r3, 2
/* 803EA0AC  B0 83 04 5C */	sth r4, 0x45c(r3)
/* 803EA0B0  7C 09 03 A6 */	mtctr r0
lbl_803EA0B4:
/* 803EA0B4  B0 9D 00 00 */	sth r4, 0(r29)
/* 803EA0B8  3B BD 00 02 */	addi r29, r29, 2
/* 803EA0BC  42 00 FF F8 */	bdnz lbl_803EA0B4
/* 803EA0C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EA0C4  38 E0 00 00 */	li r7, 0
/* 803EA0C8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803EA0CC  88 7F 04 66 */	lbz r3, 0x466(r31)
/* 803EA0D0  3C C4 00 02 */	addis r6, r4, 2
/* 803EA0D4  50 E3 36 32 */	rlwimi r3, r7, 6, 0x18, 0x19
/* 803EA0D8  80 86 61 24 */	lwz r4, 0x6124(r6)
/* 803EA0DC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EA0E0  80 A6 61 20 */	lwz r5, 0x6120(r6)
/* 803EA0E4  50 E0 2E B4 */	rlwimi r0, r7, 5, 0x1a, 0x1a
/* 803EA0E8  90 9F 04 70 */	stw r4, 0x470(r31)
/* 803EA0EC  88 9F 04 71 */	lbz r4, 0x471(r31)
/* 803EA0F0  98 7F 04 66 */	stb r3, 0x466(r31)
/* 803EA0F4  38 64 FF FF */	addi r3, r4, -1
/* 803EA0F8  98 7F 04 71 */	stb r3, 0x471(r31)
/* 803EA0FC  80 7F 04 70 */	lwz r3, 0x470(r31)
/* 803EA100  98 E6 04 64 */	stb r7, 0x464(r6)
/* 803EA104  90 FF 04 68 */	stw r7, 0x468(r31)
/* 803EA108  90 BF 04 6C */	stw r5, 0x46c(r31)
/* 803EA10C  90 BF 04 74 */	stw r5, 0x474(r31)
/* 803EA110  90 7F 04 78 */	stw r3, 0x478(r31)
/* 803EA114  98 1F 04 66 */	stb r0, 0x466(r31)
/* 803EA118  90 E6 04 7C */	stw r7, 0x47c(r6)
/* 803EA11C  39 61 00 20 */	addi r11, r1, 0x20
/* 803EA120  4B CB 0D FD */	bl func_8009AF1C
/* 803EA124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EA128  7C 08 03 A6 */	mtlr r0
/* 803EA12C  38 21 00 20 */	addi r1, r1, 0x20
/* 803EA130  4E 80 00 20 */	blr 
