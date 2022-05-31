lbl_804A2218:
/* 804A2218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A221C  7C 08 02 A6 */	mflr r0
/* 804A2220  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A2224  39 61 00 20 */	addi r11, r1, 0x20
/* 804A2228  4B BF 8C A9 */	bl func_8009AED0
/* 804A222C  7C 9D 23 78 */	mr r29, r4
/* 804A2230  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804A2234  3B DD 1D EC */	addi r30, r29, 0x1dec
/* 804A2238  7C 7C 1B 78 */	mr r28, r3
/* 804A223C  88 1D 1F 4E */	lbz r0, 0x1f4e(r29)
/* 804A2240  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804A2244  3C 63 00 02 */	addis r3, r3, 2
/* 804A2248  28 00 00 00 */	cmplwi r0, 0
/* 804A224C  8B E3 60 03 */	lbz r31, 0x6003(r3)
/* 804A2250  40 82 00 68 */	bne lbl_804A22B8
/* 804A2254  4B F1 D4 55 */	bl func_803BF6A8
/* 804A2258  4B F1 D5 0D */	bl mMsg_Check_not_series_main_wait
/* 804A225C  2C 03 00 01 */	cmpwi r3, 1
/* 804A2260  40 82 00 58 */	bne lbl_804A22B8
/* 804A2264  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 804A2268  A0 03 00 00 */	lhz r0, 0(r3)
/* 804A226C  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A2270  40 82 00 3C */	bne lbl_804A22AC
/* 804A2274  88 83 00 02 */	lbz r4, 2(r3)
/* 804A2278  7F C3 F3 78 */	mr r3, r30
/* 804A227C  48 14 75 A5 */	bl mNW_get_image_no
/* 804A2280  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 804A2284  57 E0 18 38 */	slwi r0, r31, 3
/* 804A2288  7C A5 02 14 */	add r5, r5, r0
/* 804A228C  7F 83 E3 78 */	mr r3, r28
/* 804A2290  7F A4 EB 78 */	mr r4, r29
/* 804A2294  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 804A2298  48 00 00 51 */	bl aSIGN_change_my_original
/* 804A229C  7F 83 E3 78 */	mr r3, r28
/* 804A22A0  38 80 00 00 */	li r4, 0
/* 804A22A4  48 00 00 2D */	bl aSIGN_setup_action
/* 804A22A8  48 00 00 10 */	b lbl_804A22B8
lbl_804A22AC:
/* 804A22AC  7F 83 E3 78 */	mr r3, r28
/* 804A22B0  38 80 00 00 */	li r4, 0
/* 804A22B4  48 00 00 1D */	bl aSIGN_setup_action
lbl_804A22B8:
/* 804A22B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804A22BC  4B BF 8C 61 */	bl func_8009AF1C
/* 804A22C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A22C4  7C 08 03 A6 */	mtlr r0
/* 804A22C8  38 21 00 20 */	addi r1, r1, 0x20
/* 804A22CC  4E 80 00 20 */	blr 
