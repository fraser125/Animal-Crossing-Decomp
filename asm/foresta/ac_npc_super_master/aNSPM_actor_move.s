lbl_80580A74:
/* 80580A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80580A78  7C 08 02 A6 */	mflr r0
/* 80580A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80580A80  39 61 00 20 */	addi r11, r1, 0x20
/* 80580A84  4B B1 A4 4D */	bl func_8009AED0
/* 80580A88  7C 9D 23 78 */	mr r29, r4
/* 80580A8C  7C 7E 1B 78 */	mr r30, r3
/* 80580A90  7F A3 EB 78 */	mr r3, r29
/* 80580A94  4B E5 8B AD */	bl get_player_actor_withoutCheck
/* 80580A98  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80580A9C  7C 60 1B 78 */	mr r0, r3
/* 80580AA0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80580AA4  7F C3 F3 78 */	mr r3, r30
/* 80580AA8  3F E4 00 02 */	addis r31, r4, 2
/* 80580AAC  7C 1C 03 78 */	mr r28, r0
/* 80580AB0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80580AB4  7F A4 EB 78 */	mr r4, r29
/* 80580AB8  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 80580ABC  7D 89 03 A6 */	mtctr r12
/* 80580AC0  4E 80 04 21 */	bctrl 
/* 80580AC4  7F C3 F3 78 */	mr r3, r30
/* 80580AC8  48 00 00 C1 */	bl aNSC_BGcheck
/* 80580ACC  7F C3 F3 78 */	mr r3, r30
/* 80580AD0  7F 84 E3 78 */	mr r4, r28
/* 80580AD4  48 00 0C B9 */	bl aNSC_set_zone_data
/* 80580AD8  7F C3 F3 78 */	mr r3, r30
/* 80580ADC  48 00 0D 35 */	bl aNSC_set_player_angl
/* 80580AE0  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80580AE4  7F C3 F3 78 */	mr r3, r30
/* 80580AE8  7F A4 EB 78 */	mr r4, r29
/* 80580AEC  7D 89 03 A6 */	mtctr r12
/* 80580AF0  4E 80 04 21 */	bctrl 
/* 80580AF4  7F C3 F3 78 */	mr r3, r30
/* 80580AF8  48 00 03 35 */	bl aNSC_talk_demo_proc
/* 80580AFC  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80580B00  7F C3 F3 78 */	mr r3, r30
/* 80580B04  7F A4 EB 78 */	mr r4, r29
/* 80580B08  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 80580B0C  7D 89 03 A6 */	mtctr r12
/* 80580B10  4E 80 04 21 */	bctrl 
/* 80580B14  7F C3 F3 78 */	mr r3, r30
/* 80580B18  7F A4 EB 78 */	mr r4, r29
/* 80580B1C  48 00 02 71 */	bl aNSC_sell_camera
/* 80580B20  39 61 00 20 */	addi r11, r1, 0x20
/* 80580B24  4B B1 A3 F9 */	bl func_8009AF1C
/* 80580B28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80580B2C  7C 08 03 A6 */	mtlr r0
/* 80580B30  38 21 00 20 */	addi r1, r1, 0x20
/* 80580B34  4E 80 00 20 */	blr 
