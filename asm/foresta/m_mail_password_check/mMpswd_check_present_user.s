lbl_803BE3A8:
/* 803BE3A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BE3AC  7C 08 02 A6 */	mflr r0
/* 803BE3B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BE3B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803BE3B8  4B CD CB 1D */	bl func_8009AED4
/* 803BE3BC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803BE3C0  7C 7D 1B 78 */	mr r29, r3
/* 803BE3C4  2C 00 00 02 */	cmpwi r0, 2
/* 803BE3C8  3B E0 00 00 */	li r31, 0
/* 803BE3CC  3B C0 00 00 */	li r30, 0
/* 803BE3D0  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803BE3D4  41 82 02 6C */	beq lbl_803BE640
/* 803BE3D8  40 80 00 10 */	bge lbl_803BE3E8
/* 803BE3DC  2C 00 00 01 */	cmpwi r0, 1
/* 803BE3E0  40 80 00 10 */	bge lbl_803BE3F0
/* 803BE3E4  48 00 04 E8 */	b lbl_803BE8CC
lbl_803BE3E8:
/* 803BE3E8  2C 00 00 04 */	cmpwi r0, 4
/* 803BE3EC  40 80 04 E0 */	bge lbl_803BE8CC
lbl_803BE3F0:
/* 803BE3F0  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE3F4  28 00 17 AC */	cmplwi r0, 0x17ac
/* 803BE3F8  41 80 00 7C */	blt lbl_803BE474
/* 803BE3FC  28 00 1B A7 */	cmplwi r0, 0x1ba7
/* 803BE400  41 81 00 74 */	bgt lbl_803BE474
/* 803BE404  7F A3 EB 78 */	mr r3, r29
/* 803BE408  38 80 00 00 */	li r4, 0
/* 803BE40C  48 02 81 19 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 803BE410  38 80 00 02 */	li r4, 2
/* 803BE414  7C 7D 1B 78 */	mr r29, r3
/* 803BE418  38 A0 00 00 */	li r5, 0
/* 803BE41C  38 C0 00 00 */	li r6, 0
/* 803BE420  48 02 A4 A1 */	bl mSP_SearchItemCategoryPriority
/* 803BE424  2C 03 00 00 */	cmpwi r3, 0
/* 803BE428  40 82 00 3C */	bne lbl_803BE464
/* 803BE42C  7F A3 EB 78 */	mr r3, r29
/* 803BE430  38 80 00 02 */	li r4, 2
/* 803BE434  38 A0 00 01 */	li r5, 1
/* 803BE438  38 C0 00 00 */	li r6, 0
/* 803BE43C  48 02 A4 85 */	bl mSP_SearchItemCategoryPriority
/* 803BE440  2C 03 00 00 */	cmpwi r3, 0
/* 803BE444  40 82 00 20 */	bne lbl_803BE464
/* 803BE448  7F A3 EB 78 */	mr r3, r29
/* 803BE44C  38 80 00 02 */	li r4, 2
/* 803BE450  38 A0 00 02 */	li r5, 2
/* 803BE454  38 C0 00 00 */	li r6, 0
/* 803BE458  48 02 A4 69 */	bl mSP_SearchItemCategoryPriority
/* 803BE45C  2C 03 00 00 */	cmpwi r3, 0
/* 803BE460  41 82 04 6C */	beq lbl_803BE8CC
lbl_803BE464:
/* 803BE464  7F A3 EB 78 */	mr r3, r29
/* 803BE468  48 02 A2 39 */	bl mSP_ItemNo2ItemPrice
/* 803BE46C  7C 7F 1B 78 */	mr r31, r3
/* 803BE470  48 00 04 5C */	b lbl_803BE8CC
lbl_803BE474:
/* 803BE474  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE478  28 00 1D 08 */	cmplwi r0, 0x1d08
/* 803BE47C  41 80 00 24 */	blt lbl_803BE4A0
/* 803BE480  28 00 1D 87 */	cmplwi r0, 0x1d87
/* 803BE484  41 81 00 1C */	bgt lbl_803BE4A0
/* 803BE488  7F A3 EB 78 */	mr r3, r29
/* 803BE48C  38 80 00 00 */	li r4, 0
/* 803BE490  48 02 80 95 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 803BE494  48 02 A2 0D */	bl mSP_ItemNo2ItemPrice
/* 803BE498  7C 7F 1B 78 */	mr r31, r3
/* 803BE49C  48 00 04 30 */	b lbl_803BE8CC
lbl_803BE4A0:
/* 803BE4A0  7F A3 EB 78 */	mr r3, r29
/* 803BE4A4  48 02 92 ED */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE4A8  2C 03 03 FC */	cmpwi r3, 0x3fc
/* 803BE4AC  41 80 00 14 */	blt lbl_803BE4C0
/* 803BE4B0  7F A3 EB 78 */	mr r3, r29
/* 803BE4B4  48 02 92 DD */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE4B8  2C 03 04 03 */	cmpwi r3, 0x403
/* 803BE4BC  40 81 00 98 */	ble lbl_803BE554
lbl_803BE4C0:
/* 803BE4C0  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE4C4  28 00 30 FC */	cmplwi r0, 0x30fc
/* 803BE4C8  41 80 00 0C */	blt lbl_803BE4D4
/* 803BE4CC  28 00 31 3B */	cmplwi r0, 0x313b
/* 803BE4D0  40 81 00 84 */	ble lbl_803BE554
lbl_803BE4D4:
/* 803BE4D4  7F A3 EB 78 */	mr r3, r29
/* 803BE4D8  48 02 92 B9 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE4DC  2C 03 04 53 */	cmpwi r3, 0x453
/* 803BE4E0  41 80 00 14 */	blt lbl_803BE4F4
/* 803BE4E4  7F A3 EB 78 */	mr r3, r29
/* 803BE4E8  48 02 92 A9 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE4EC  2C 03 04 5A */	cmpwi r3, 0x45a
/* 803BE4F0  40 81 00 64 */	ble lbl_803BE554
lbl_803BE4F4:
/* 803BE4F4  7F A3 EB 78 */	mr r3, r29
/* 803BE4F8  48 02 92 99 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE4FC  2C 03 04 5B */	cmpwi r3, 0x45b
/* 803BE500  41 80 00 14 */	blt lbl_803BE514
/* 803BE504  7F A3 EB 78 */	mr r3, r29
/* 803BE508  48 02 92 89 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE50C  2C 03 04 62 */	cmpwi r3, 0x462
/* 803BE510  40 81 00 44 */	ble lbl_803BE554
lbl_803BE514:
/* 803BE514  7F A3 EB 78 */	mr r3, r29
/* 803BE518  48 02 92 79 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE51C  2C 03 04 4F */	cmpwi r3, 0x44f
/* 803BE520  41 80 00 14 */	blt lbl_803BE534
/* 803BE524  7F A3 EB 78 */	mr r3, r29
/* 803BE528  48 02 92 69 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE52C  2C 03 04 52 */	cmpwi r3, 0x452
/* 803BE530  40 81 00 24 */	ble lbl_803BE554
lbl_803BE534:
/* 803BE534  7F A3 EB 78 */	mr r3, r29
/* 803BE538  48 02 92 59 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE53C  2C 03 04 63 */	cmpwi r3, 0x463
/* 803BE540  41 80 00 2C */	blt lbl_803BE56C
/* 803BE544  7F A3 EB 78 */	mr r3, r29
/* 803BE548  48 02 92 49 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803BE54C  2C 03 04 66 */	cmpwi r3, 0x466
/* 803BE550  41 81 00 1C */	bgt lbl_803BE56C
lbl_803BE554:
/* 803BE554  7F A3 EB 78 */	mr r3, r29
/* 803BE558  38 80 00 00 */	li r4, 0
/* 803BE55C  48 02 7F C9 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 803BE560  48 02 A1 41 */	bl mSP_ItemNo2ItemPrice
/* 803BE564  7C 7F 1B 78 */	mr r31, r3
/* 803BE568  48 00 03 64 */	b lbl_803BE8CC
lbl_803BE56C:
/* 803BE56C  7F A3 EB 78 */	mr r3, r29
/* 803BE570  38 80 00 00 */	li r4, 0
/* 803BE574  38 A0 00 00 */	li r5, 0
/* 803BE578  38 C0 00 00 */	li r6, 0
/* 803BE57C  48 02 A3 45 */	bl mSP_SearchItemCategoryPriority
/* 803BE580  2C 03 00 00 */	cmpwi r3, 0
/* 803BE584  40 82 00 AC */	bne lbl_803BE630
/* 803BE588  7F A3 EB 78 */	mr r3, r29
/* 803BE58C  38 80 00 00 */	li r4, 0
/* 803BE590  38 A0 00 01 */	li r5, 1
/* 803BE594  38 C0 00 00 */	li r6, 0
/* 803BE598  48 02 A3 29 */	bl mSP_SearchItemCategoryPriority
/* 803BE59C  2C 03 00 00 */	cmpwi r3, 0
/* 803BE5A0  40 82 00 90 */	bne lbl_803BE630
/* 803BE5A4  7F A3 EB 78 */	mr r3, r29
/* 803BE5A8  38 80 00 00 */	li r4, 0
/* 803BE5AC  38 A0 00 02 */	li r5, 2
/* 803BE5B0  38 C0 00 00 */	li r6, 0
/* 803BE5B4  48 02 A3 0D */	bl mSP_SearchItemCategoryPriority
/* 803BE5B8  2C 03 00 00 */	cmpwi r3, 0
/* 803BE5BC  40 82 00 74 */	bne lbl_803BE630
/* 803BE5C0  7F A3 EB 78 */	mr r3, r29
/* 803BE5C4  38 80 00 00 */	li r4, 0
/* 803BE5C8  38 A0 00 04 */	li r5, 4
/* 803BE5CC  38 C0 00 00 */	li r6, 0
/* 803BE5D0  48 02 A2 F1 */	bl mSP_SearchItemCategoryPriority
/* 803BE5D4  2C 03 00 00 */	cmpwi r3, 0
/* 803BE5D8  40 82 00 58 */	bne lbl_803BE630
/* 803BE5DC  7F A3 EB 78 */	mr r3, r29
/* 803BE5E0  38 80 00 00 */	li r4, 0
/* 803BE5E4  38 A0 00 03 */	li r5, 3
/* 803BE5E8  38 C0 00 00 */	li r6, 0
/* 803BE5EC  48 02 A2 D5 */	bl mSP_SearchItemCategoryPriority
/* 803BE5F0  2C 03 00 00 */	cmpwi r3, 0
/* 803BE5F4  40 82 00 3C */	bne lbl_803BE630
/* 803BE5F8  7F A3 EB 78 */	mr r3, r29
/* 803BE5FC  38 80 00 00 */	li r4, 0
/* 803BE600  38 A0 00 05 */	li r5, 5
/* 803BE604  38 C0 00 00 */	li r6, 0
/* 803BE608  48 02 A2 B9 */	bl mSP_SearchItemCategoryPriority
/* 803BE60C  2C 03 00 00 */	cmpwi r3, 0
/* 803BE610  40 82 00 20 */	bne lbl_803BE630
/* 803BE614  7F A3 EB 78 */	mr r3, r29
/* 803BE618  38 80 00 00 */	li r4, 0
/* 803BE61C  38 A0 00 12 */	li r5, 0x12
/* 803BE620  38 C0 00 00 */	li r6, 0
/* 803BE624  48 02 A2 9D */	bl mSP_SearchItemCategoryPriority
/* 803BE628  2C 03 00 00 */	cmpwi r3, 0
/* 803BE62C  41 82 02 A0 */	beq lbl_803BE8CC
lbl_803BE630:
/* 803BE630  7F A3 EB 78 */	mr r3, r29
/* 803BE634  48 02 A0 6D */	bl mSP_ItemNo2ItemPrice
/* 803BE638  7C 7F 1B 78 */	mr r31, r3
/* 803BE63C  48 00 02 90 */	b lbl_803BE8CC
lbl_803BE640:
/* 803BE640  28 04 24 00 */	cmplwi r4, 0x2400
/* 803BE644  41 80 00 6C */	blt lbl_803BE6B0
/* 803BE648  28 04 24 FF */	cmplwi r4, 0x24ff
/* 803BE64C  40 80 00 64 */	bge lbl_803BE6B0
/* 803BE650  38 80 00 02 */	li r4, 2
/* 803BE654  38 A0 00 00 */	li r5, 0
/* 803BE658  38 C0 00 00 */	li r6, 0
/* 803BE65C  48 02 A2 65 */	bl mSP_SearchItemCategoryPriority
/* 803BE660  2C 03 00 00 */	cmpwi r3, 0
/* 803BE664  40 82 00 3C */	bne lbl_803BE6A0
/* 803BE668  7F A3 EB 78 */	mr r3, r29
/* 803BE66C  38 80 00 02 */	li r4, 2
/* 803BE670  38 A0 00 01 */	li r5, 1
/* 803BE674  38 C0 00 00 */	li r6, 0
/* 803BE678  48 02 A2 49 */	bl mSP_SearchItemCategoryPriority
/* 803BE67C  2C 03 00 00 */	cmpwi r3, 0
/* 803BE680  40 82 00 20 */	bne lbl_803BE6A0
/* 803BE684  7F A3 EB 78 */	mr r3, r29
/* 803BE688  38 80 00 02 */	li r4, 2
/* 803BE68C  38 A0 00 02 */	li r5, 2
/* 803BE690  38 C0 00 00 */	li r6, 0
/* 803BE694  48 02 A2 2D */	bl mSP_SearchItemCategoryPriority
/* 803BE698  2C 03 00 00 */	cmpwi r3, 0
/* 803BE69C  41 82 02 30 */	beq lbl_803BE8CC
lbl_803BE6A0:
/* 803BE6A0  7F A3 EB 78 */	mr r3, r29
/* 803BE6A4  48 02 9F FD */	bl mSP_ItemNo2ItemPrice
/* 803BE6A8  7C 7F 1B 78 */	mr r31, r3
/* 803BE6AC  48 00 02 20 */	b lbl_803BE8CC
lbl_803BE6B0:
/* 803BE6B0  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE6B4  28 00 22 04 */	cmplwi r0, 0x2204
/* 803BE6B8  41 80 00 1C */	blt lbl_803BE6D4
/* 803BE6BC  28 00 22 2B */	cmplwi r0, 0x222b
/* 803BE6C0  41 81 00 14 */	bgt lbl_803BE6D4
/* 803BE6C4  7F A3 EB 78 */	mr r3, r29
/* 803BE6C8  48 02 9F D9 */	bl mSP_ItemNo2ItemPrice
/* 803BE6CC  7C 7F 1B 78 */	mr r31, r3
/* 803BE6D0  48 00 01 FC */	b lbl_803BE8CC
lbl_803BE6D4:
/* 803BE6D4  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE6D8  28 00 22 44 */	cmplwi r0, 0x2244
/* 803BE6DC  41 80 00 0C */	blt lbl_803BE6E8
/* 803BE6E0  28 00 22 4B */	cmplwi r0, 0x224b
/* 803BE6E4  40 81 00 68 */	ble lbl_803BE74C
lbl_803BE6E8:
/* 803BE6E8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE6EC  28 00 2B 00 */	cmplwi r0, 0x2b00
/* 803BE6F0  41 80 00 0C */	blt lbl_803BE6FC
/* 803BE6F4  28 00 2B 0F */	cmplwi r0, 0x2b0f
/* 803BE6F8  40 81 00 54 */	ble lbl_803BE74C
lbl_803BE6FC:
/* 803BE6FC  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE700  28 00 22 54 */	cmplwi r0, 0x2254
/* 803BE704  41 80 00 0C */	blt lbl_803BE710
/* 803BE708  28 00 22 5B */	cmplwi r0, 0x225b
/* 803BE70C  40 81 00 40 */	ble lbl_803BE74C
lbl_803BE710:
/* 803BE710  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE714  28 00 22 4C */	cmplwi r0, 0x224c
/* 803BE718  41 80 00 0C */	blt lbl_803BE724
/* 803BE71C  28 00 22 53 */	cmplwi r0, 0x2253
/* 803BE720  40 81 00 2C */	ble lbl_803BE74C
lbl_803BE724:
/* 803BE724  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE728  28 00 22 39 */	cmplwi r0, 0x2239
/* 803BE72C  41 80 00 0C */	blt lbl_803BE738
/* 803BE730  28 00 22 3C */	cmplwi r0, 0x223c
/* 803BE734  40 81 00 18 */	ble lbl_803BE74C
lbl_803BE738:
/* 803BE738  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803BE73C  28 00 22 00 */	cmplwi r0, 0x2200
/* 803BE740  41 80 00 1C */	blt lbl_803BE75C
/* 803BE744  28 00 22 03 */	cmplwi r0, 0x2203
/* 803BE748  41 81 00 14 */	bgt lbl_803BE75C
lbl_803BE74C:
/* 803BE74C  7F A3 EB 78 */	mr r3, r29
/* 803BE750  48 02 9F 51 */	bl mSP_ItemNo2ItemPrice
/* 803BE754  7C 7F 1B 78 */	mr r31, r3
/* 803BE758  48 00 01 74 */	b lbl_803BE8CC
lbl_803BE75C:
/* 803BE75C  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 803BE760  2C 00 00 06 */	cmpwi r0, 6
/* 803BE764  41 82 01 08 */	beq lbl_803BE86C
/* 803BE768  40 80 00 10 */	bge lbl_803BE778
/* 803BE76C  2C 00 00 00 */	cmpwi r0, 0
/* 803BE770  41 82 00 28 */	beq lbl_803BE798
/* 803BE774  48 00 01 58 */	b lbl_803BE8CC
lbl_803BE778:
/* 803BE778  2C 00 00 08 */	cmpwi r0, 8
/* 803BE77C  41 82 00 0C */	beq lbl_803BE788
/* 803BE780  40 80 01 4C */	bge lbl_803BE8CC
/* 803BE784  48 00 00 84 */	b lbl_803BE808
lbl_803BE788:
/* 803BE788  7F A3 EB 78 */	mr r3, r29
/* 803BE78C  48 02 9F 15 */	bl mSP_ItemNo2ItemPrice
/* 803BE790  7C 7F 1B 78 */	mr r31, r3
/* 803BE794  48 00 01 38 */	b lbl_803BE8CC
lbl_803BE798:
/* 803BE798  54 83 06 BE */	clrlwi r3, r4, 0x1a
/* 803BE79C  38 80 00 01 */	li r4, 1
/* 803BE7A0  38 03 20 C0 */	addi r0, r3, 0x20c0
/* 803BE7A4  38 A0 00 00 */	li r5, 0
/* 803BE7A8  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 803BE7AC  38 C0 00 00 */	li r6, 0
/* 803BE7B0  7F A3 EB 78 */	mr r3, r29
/* 803BE7B4  48 02 A1 0D */	bl mSP_SearchItemCategoryPriority
/* 803BE7B8  2C 03 00 00 */	cmpwi r3, 0
/* 803BE7BC  40 82 00 3C */	bne lbl_803BE7F8
/* 803BE7C0  7F A3 EB 78 */	mr r3, r29
/* 803BE7C4  38 80 00 01 */	li r4, 1
/* 803BE7C8  38 A0 00 01 */	li r5, 1
/* 803BE7CC  38 C0 00 00 */	li r6, 0
/* 803BE7D0  48 02 A0 F1 */	bl mSP_SearchItemCategoryPriority
/* 803BE7D4  2C 03 00 00 */	cmpwi r3, 0
/* 803BE7D8  40 82 00 20 */	bne lbl_803BE7F8
/* 803BE7DC  7F A3 EB 78 */	mr r3, r29
/* 803BE7E0  38 80 00 01 */	li r4, 1
/* 803BE7E4  38 A0 00 02 */	li r5, 2
/* 803BE7E8  38 C0 00 00 */	li r6, 0
/* 803BE7EC  48 02 A0 D5 */	bl mSP_SearchItemCategoryPriority
/* 803BE7F0  2C 03 00 00 */	cmpwi r3, 0
/* 803BE7F4  41 82 00 D8 */	beq lbl_803BE8CC
lbl_803BE7F8:
/* 803BE7F8  7F A3 EB 78 */	mr r3, r29
/* 803BE7FC  48 02 9E A5 */	bl mSP_ItemNo2ItemPrice
/* 803BE800  7C 7F 1B 78 */	mr r31, r3
/* 803BE804  48 00 00 C8 */	b lbl_803BE8CC
lbl_803BE808:
/* 803BE808  7F A3 EB 78 */	mr r3, r29
/* 803BE80C  38 80 00 04 */	li r4, 4
/* 803BE810  38 A0 00 00 */	li r5, 0
/* 803BE814  38 C0 00 00 */	li r6, 0
/* 803BE818  48 02 A0 A9 */	bl mSP_SearchItemCategoryPriority
/* 803BE81C  2C 03 00 00 */	cmpwi r3, 0
/* 803BE820  40 82 00 3C */	bne lbl_803BE85C
/* 803BE824  7F A3 EB 78 */	mr r3, r29
/* 803BE828  38 80 00 04 */	li r4, 4
/* 803BE82C  38 A0 00 01 */	li r5, 1
/* 803BE830  38 C0 00 00 */	li r6, 0
/* 803BE834  48 02 A0 8D */	bl mSP_SearchItemCategoryPriority
/* 803BE838  2C 03 00 00 */	cmpwi r3, 0
/* 803BE83C  40 82 00 20 */	bne lbl_803BE85C
/* 803BE840  7F A3 EB 78 */	mr r3, r29
/* 803BE844  38 80 00 04 */	li r4, 4
/* 803BE848  38 A0 00 02 */	li r5, 2
/* 803BE84C  38 C0 00 00 */	li r6, 0
/* 803BE850  48 02 A0 71 */	bl mSP_SearchItemCategoryPriority
/* 803BE854  2C 03 00 00 */	cmpwi r3, 0
/* 803BE858  41 82 00 74 */	beq lbl_803BE8CC
lbl_803BE85C:
/* 803BE85C  7F A3 EB 78 */	mr r3, r29
/* 803BE860  48 02 9E 41 */	bl mSP_ItemNo2ItemPrice
/* 803BE864  7C 7F 1B 78 */	mr r31, r3
/* 803BE868  48 00 00 64 */	b lbl_803BE8CC
lbl_803BE86C:
/* 803BE86C  7F A3 EB 78 */	mr r3, r29
/* 803BE870  38 80 00 03 */	li r4, 3
/* 803BE874  38 A0 00 00 */	li r5, 0
/* 803BE878  38 C0 00 00 */	li r6, 0
/* 803BE87C  48 02 A0 45 */	bl mSP_SearchItemCategoryPriority
/* 803BE880  2C 03 00 00 */	cmpwi r3, 0
/* 803BE884  40 82 00 3C */	bne lbl_803BE8C0
/* 803BE888  7F A3 EB 78 */	mr r3, r29
/* 803BE88C  38 80 00 03 */	li r4, 3
/* 803BE890  38 A0 00 01 */	li r5, 1
/* 803BE894  38 C0 00 00 */	li r6, 0
/* 803BE898  48 02 A0 29 */	bl mSP_SearchItemCategoryPriority
/* 803BE89C  2C 03 00 00 */	cmpwi r3, 0
/* 803BE8A0  40 82 00 20 */	bne lbl_803BE8C0
/* 803BE8A4  7F A3 EB 78 */	mr r3, r29
/* 803BE8A8  38 80 00 03 */	li r4, 3
/* 803BE8AC  38 A0 00 02 */	li r5, 2
/* 803BE8B0  38 C0 00 00 */	li r6, 0
/* 803BE8B4  48 02 A0 0D */	bl mSP_SearchItemCategoryPriority
/* 803BE8B8  2C 03 00 00 */	cmpwi r3, 0
/* 803BE8BC  41 82 00 10 */	beq lbl_803BE8CC
lbl_803BE8C0:
/* 803BE8C0  7F A3 EB 78 */	mr r3, r29
/* 803BE8C4  48 02 9D DD */	bl mSP_ItemNo2ItemPrice
/* 803BE8C8  7C 7F 1B 78 */	mr r31, r3
lbl_803BE8CC:
/* 803BE8CC  28 1F 00 00 */	cmplwi r31, 0
/* 803BE8D0  41 82 00 08 */	beq lbl_803BE8D8
/* 803BE8D4  3B C0 00 01 */	li r30, 1
lbl_803BE8D8:
/* 803BE8D8  7F C3 F3 78 */	mr r3, r30
/* 803BE8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803BE8E0  4B CD C6 41 */	bl func_8009AF20
/* 803BE8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BE8E8  7C 08 03 A6 */	mtlr r0
/* 803BE8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 803BE8F0  4E 80 00 20 */	blr 
