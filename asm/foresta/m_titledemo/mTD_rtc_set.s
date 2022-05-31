lbl_803F2270:
/* 803F2270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F2274  7C 08 02 A6 */	mflr r0
/* 803F2278  3C 60 81 17 */	lis r3, S_titledemo_to_play@ha /* 0x81171544@ha */
/* 803F227C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F2280  38 A3 15 44 */	addi r5, r3, S_titledemo_to_play@l /* 0x81171544@l */
/* 803F2284  A0 05 00 00 */	lhz r0, 0(r5)
/* 803F2288  28 00 00 01 */	cmplwi r0, 1
/* 803F228C  40 82 00 58 */	bne lbl_803F22E4
/* 803F2290  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2294  38 00 00 00 */	li r0, 0
/* 803F2298  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803F229C  B0 05 00 00 */	sth r0, 0(r5)
/* 803F22A0  3C 64 00 02 */	addis r3, r4, 2
/* 803F22A4  88 03 61 2F */	lbz r0, 0x612f(r3)
/* 803F22A8  28 00 00 01 */	cmplwi r0, 1
/* 803F22AC  40 82 00 18 */	bne lbl_803F22C4
/* 803F22B0  3C 84 00 03 */	addis r4, r4, 3
/* 803F22B4  38 63 61 20 */	addi r3, r3, 0x6120
/* 803F22B8  38 84 88 84 */	addi r4, r4, -30588
/* 803F22BC  48 01 4F 79 */	bl lbRTC_TimeCopy
/* 803F22C0  48 00 00 0C */	b lbl_803F22CC
lbl_803F22C4:
/* 803F22C4  38 63 61 20 */	addi r3, r3, 0x6120
/* 803F22C8  48 01 44 55 */	bl lbRTC_GetTime
lbl_803F22CC:
/* 803F22CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F22D0  38 00 00 01 */	li r0, 1
/* 803F22D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F22D8  3C 63 00 02 */	addis r3, r3, 2
/* 803F22DC  90 03 61 30 */	stw r0, 0x6130(r3)
/* 803F22E0  48 00 10 ED */	bl mTM_set_season
lbl_803F22E4:
/* 803F22E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F22E8  7C 08 03 A6 */	mtlr r0
/* 803F22EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F22F0  4E 80 00 20 */	blr 
