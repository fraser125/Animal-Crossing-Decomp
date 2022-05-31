lbl_804A21A0:
/* 804A21A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A21A4  7C 08 02 A6 */	mflr r0
/* 804A21A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A21AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804A21B0  4B BF 8D 25 */	bl func_8009AED4
/* 804A21B4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804A21B8  7C 7D 1B 78 */	mr r29, r3
/* 804A21BC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804A21C0  3B C4 1D EC */	addi r30, r4, 0x1dec
/* 804A21C4  3C 63 00 02 */	addis r3, r3, 2
/* 804A21C8  8B E3 60 03 */	lbz r31, 0x6003(r3)
/* 804A21CC  4B F1 D4 DD */	bl func_803BF6A8
/* 804A21D0  4B F1 D5 71 */	bl mMsg_Check_main_wait
/* 804A21D4  2C 03 00 00 */	cmpwi r3, 0
/* 804A21D8  41 82 00 28 */	beq lbl_804A2200
/* 804A21DC  7F C3 F3 78 */	mr r3, r30
/* 804A21E0  7F E6 FB 78 */	mr r6, r31
/* 804A21E4  38 80 00 17 */	li r4, 0x17
/* 804A21E8  38 A0 00 00 */	li r5, 0
/* 804A21EC  4B F4 D4 F1 */	bl mSM_open_submenu
/* 804A21F0  7F A3 EB 78 */	mr r3, r29
/* 804A21F4  38 80 00 04 */	li r4, 4
/* 804A21F8  48 00 00 D9 */	bl aSIGN_setup_action
/* 804A21FC  4B F1 D6 D9 */	bl mMsg_request_main_forceoff
lbl_804A2200:
/* 804A2200  39 61 00 20 */	addi r11, r1, 0x20
/* 804A2204  4B BF 8D 1D */	bl func_8009AF20
/* 804A2208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A220C  7C 08 03 A6 */	mtlr r0
/* 804A2210  38 21 00 20 */	addi r1, r1, 0x20
/* 804A2214  4E 80 00 20 */	blr 
