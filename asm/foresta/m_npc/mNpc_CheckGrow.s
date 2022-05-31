lbl_803D2214:
/* 803D2214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D2218  7C 08 02 A6 */	mflr r0
/* 803D221C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D2220  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2224  4B CC 8C B1 */	bl func_8009AED4
/* 803D2228  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D222C  3B A0 00 00 */	li r29, 0
/* 803D2230  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2234  88 03 00 18 */	lbz r0, 0x18(r3)
/* 803D2238  3F E3 00 02 */	addis r31, r3, 2
/* 803D223C  7F FE FB 78 */	mr r30, r31
/* 803D2240  28 00 00 0F */	cmplwi r0, 0xf
/* 803D2244  3B FF 61 20 */	addi r31, r31, 0x6120
/* 803D2248  3B DE 12 DC */	addi r30, r30, 0x12dc
/* 803D224C  40 80 00 A0 */	bge lbl_803D22EC
/* 803D2250  3C 60 80 64 */	lis r3, data_806432C4@ha /* 0x806432C4@ha */
/* 803D2254  7F C4 F3 78 */	mr r4, r30
/* 803D2258  38 63 32 C4 */	addi r3, r3, data_806432C4@l /* 0x806432C4@l */
/* 803D225C  38 A0 00 7F */	li r5, 0x7f
/* 803D2260  48 03 45 D9 */	bl lbRTC_IsEqualTime
/* 803D2264  2C 03 00 01 */	cmpwi r3, 1
/* 803D2268  40 82 00 14 */	bne lbl_803D227C
/* 803D226C  7F C3 F3 78 */	mr r3, r30
/* 803D2270  7F E4 FB 78 */	mr r4, r31
/* 803D2274  48 03 4F C1 */	bl lbRTC_TimeCopy
/* 803D2278  48 00 00 74 */	b lbl_803D22EC
lbl_803D227C:
/* 803D227C  4B FF FF 19 */	bl mNpc_CheckGrowFieldRank
/* 803D2280  2C 03 00 01 */	cmpwi r3, 1
/* 803D2284  40 82 00 68 */	bne lbl_803D22EC
/* 803D2288  7F C3 F3 78 */	mr r3, r30
/* 803D228C  7F E4 FB 78 */	mr r4, r31
/* 803D2290  48 03 46 85 */	bl lbRTC_IsOverTime
/* 803D2294  2C 03 00 01 */	cmpwi r3, 1
/* 803D2298  40 82 00 14 */	bne lbl_803D22AC
/* 803D229C  7F E3 FB 78 */	mr r3, r31
/* 803D22A0  7F C4 F3 78 */	mr r4, r30
/* 803D22A4  48 03 47 D9 */	bl lbRTC_IntervalTime
/* 803D22A8  48 00 00 10 */	b lbl_803D22B8
lbl_803D22AC:
/* 803D22AC  7F C3 F3 78 */	mr r3, r30
/* 803D22B0  7F E4 FB 78 */	mr r4, r31
/* 803D22B4  48 03 47 C9 */	bl lbRTC_IntervalTime
lbl_803D22B8:
/* 803D22B8  28 03 05 A0 */	cmplwi r3, 0x5a0
/* 803D22BC  41 80 00 30 */	blt lbl_803D22EC
/* 803D22C0  4B FE 18 49 */	bl mLd_PlayerManKindCheck
/* 803D22C4  2C 03 00 00 */	cmpwi r3, 0
/* 803D22C8  40 82 00 24 */	bne lbl_803D22EC
/* 803D22CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D22D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D22D4  3C 63 00 02 */	addis r3, r3, 2
/* 803D22D8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803D22DC  4B FF E0 85 */	bl mNpc_CheckFriendAllAnimal
/* 803D22E0  2C 03 00 01 */	cmpwi r3, 1
/* 803D22E4  40 82 00 08 */	bne lbl_803D22EC
/* 803D22E8  3B A0 00 01 */	li r29, 1
lbl_803D22EC:
/* 803D22EC  7F A3 EB 78 */	mr r3, r29
/* 803D22F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D22F4  4B CC 8C 2D */	bl func_8009AF20
/* 803D22F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D22FC  7C 08 03 A6 */	mtlr r0
/* 803D2300  38 21 00 20 */	addi r1, r1, 0x20
/* 803D2304  4E 80 00 20 */	blr 
