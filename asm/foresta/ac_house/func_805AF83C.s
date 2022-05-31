lbl_805AF83C:
/* 805AF83C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AF840  7C 08 02 A6 */	mflr r0
/* 805AF844  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AF848  39 61 00 20 */	addi r11, r1, 0x20
/* 805AF84C  4B AE B6 89 */	bl func_8009AED4
/* 805AF850  7C 7F 1B 78 */	mr r31, r3
/* 805AF854  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AF858  A0 63 00 06 */	lhz r3, 6(r3)
/* 805AF85C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AF860  3F A4 00 01 */	addis r29, r4, 1
/* 805AF864  38 A0 00 0F */	li r5, 0xf
/* 805AF868  3C 63 00 01 */	addis r3, r3, 1
/* 805AF86C  38 03 90 00 */	addi r0, r3, -28672
/* 805AF870  3B BD 74 38 */	addi r29, r29, 0x7438
/* 805AF874  7F A3 EB 78 */	mr r3, r29
/* 805AF878  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 805AF87C  4B E1 CE 61 */	bl mNpc_SearchAnimalinfo
/* 805AF880  7C 7E 1B 79 */	or. r30, r3, r3
/* 805AF884  41 80 00 8C */	blt lbl_805AF910
/* 805AF888  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AF88C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AF890  1F BE 00 38 */	mulli r29, r30, 0x38
/* 805AF894  3C 03 00 02 */	addis r0, r3, 2
/* 805AF898  7C 60 EA 14 */	add r3, r0, r29
/* 805AF89C  A0 63 61 64 */	lhz r3, 0x6164(r3)
/* 805AF8A0  4B E1 F5 BD */	bl mNpc_GetLooks
/* 805AF8A4  1C 1E 09 88 */	mulli r0, r30, 0x988
/* 805AF8A8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AF8AC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805AF8B0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AF8B4  90 7F 02 B8 */	stw r3, 0x2b8(r31)
/* 805AF8B8  7C 64 02 14 */	add r3, r4, r0
/* 805AF8BC  3C 63 00 01 */	addis r3, r3, 1
/* 805AF8C0  3C 84 00 02 */	addis r4, r4, 2
/* 805AF8C4  38 03 74 38 */	addi r0, r3, 0x7438
/* 805AF8C8  90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 805AF8CC  7C 64 EA 14 */	add r3, r4, r29
/* 805AF8D0  93 DF 02 C0 */	stw r30, 0x2c0(r31)
/* 805AF8D4  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 805AF8D8  90 1F 02 D8 */	stw r0, 0x2d8(r31)
/* 805AF8DC  88 C3 61 90 */	lbz r6, 0x6190(r3)
/* 805AF8E0  80 9F 02 D8 */	lwz r4, 0x2d8(r31)
/* 805AF8E4  7C C5 07 34 */	extsh r5, r6
/* 805AF8E8  88 E3 61 91 */	lbz r7, 0x6191(r3)
/* 805AF8EC  1C 05 00 05 */	mulli r0, r5, 5
/* 805AF8F0  20 64 00 03 */	subfic r3, r4, 3
/* 805AF8F4  90 BF 02 A8 */	stw r5, 0x2a8(r31)
/* 805AF8F8  7C 63 00 34 */	cntlzw r3, r3
/* 805AF8FC  7C 07 02 14 */	add r0, r7, r0
/* 805AF900  7C 00 07 34 */	extsh r0, r0
/* 805AF904  54 63 D9 7E */	srwi r3, r3, 5
/* 805AF908  90 1F 02 AC */	stw r0, 0x2ac(r31)
/* 805AF90C  48 00 00 44 */	b lbl_805AF950
lbl_805AF910:
/* 805AF910  38 80 00 00 */	li r4, 0
/* 805AF914  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AF918  90 9F 02 B8 */	stw r4, 0x2b8(r31)
/* 805AF91C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AF920  3C 63 00 02 */	addis r3, r3, 2
/* 805AF924  38 C0 00 00 */	li r6, 0
/* 805AF928  93 BF 02 BC */	stw r29, 0x2bc(r31)
/* 805AF92C  90 9F 02 C0 */	stw r4, 0x2c0(r31)
/* 805AF930  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805AF934  90 1F 02 D8 */	stw r0, 0x2d8(r31)
/* 805AF938  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805AF93C  90 9F 02 A8 */	stw r4, 0x2a8(r31)
/* 805AF940  20 00 00 03 */	subfic r0, r0, 3
/* 805AF944  7C 00 00 34 */	cntlzw r0, r0
/* 805AF948  90 9F 02 AC */	stw r4, 0x2ac(r31)
/* 805AF94C  54 03 D9 7E */	srwi r3, r0, 5
lbl_805AF950:
/* 805AF950  3C 80 80 6C */	lis r4, aHUS_house_model@ha /* 0x806C5338@ha */
/* 805AF954  7C C0 07 34 */	extsh r0, r6
/* 805AF958  54 65 10 3A */	slwi r5, r3, 2
/* 805AF95C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AF960  38 84 53 38 */	addi r4, r4, aHUS_house_model@l /* 0x806C5338@l */
/* 805AF964  54 00 10 3A */	slwi r0, r0, 2
/* 805AF968  7C 84 28 2E */	lwzx r4, r4, r5
/* 805AF96C  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805AF970  38 FF 02 46 */	addi r7, r31, 0x246
/* 805AF974  38 A0 00 00 */	li r5, 0
/* 805AF978  7C 84 00 2E */	lwzx r4, r4, r0
/* 805AF97C  4B DC 11 19 */	bl cKF_SkeletonInfo_R_ct
/* 805AF980  7F E3 FB 78 */	mr r3, r31
/* 805AF984  38 80 00 01 */	li r4, 1
/* 805AF988  48 00 09 41 */	bl aHUS_set_bgOffset
/* 805AF98C  7F E3 FB 78 */	mr r3, r31
/* 805AF990  38 80 00 01 */	li r4, 1
/* 805AF994  48 00 00 B1 */	bl change_FGUnit
/* 805AF998  7F E3 FB 78 */	mr r3, r31
/* 805AF99C  38 80 00 00 */	li r4, 0
/* 805AF9A0  48 00 0D A5 */	bl aHUS_setup_action
/* 805AF9A4  3C 80 80 65 */	lis r4, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805AF9A8  7F E3 FB 78 */	mr r3, r31
/* 805AF9AC  C0 24 A7 8C */	lfs f1, data_8064A78C@l(r4)  /* 0x8064A78C@l */
/* 805AF9B0  48 00 04 7D */	bl aHUS_setup_animation
/* 805AF9B4  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AF9B8  4B DC 16 5D */	bl cKF_SkeletonInfo_R_play
/* 805AF9BC  7F E3 FB 78 */	mr r3, r31
/* 805AF9C0  48 00 0A 75 */	bl aHUS_ctrl_light
/* 805AF9C4  D0 3F 02 CC */	stfs f1, 0x2cc(r31)
/* 805AF9C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805AF9CC  4B AE B5 55 */	bl func_8009AF20
/* 805AF9D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AF9D4  7C 08 03 A6 */	mtlr r0
/* 805AF9D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805AF9DC  4E 80 00 20 */	blr 
