lbl_80576F68:
/* 80576F68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80576F6C  7C 08 02 A6 */	mflr r0
/* 80576F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80576F74  39 61 00 20 */	addi r11, r1, 0x20
/* 80576F78  4B B2 3F 59 */	bl func_8009AED0
/* 80576F7C  7C 9D 23 78 */	mr r29, r4
/* 80576F80  7C 7E 1B 78 */	mr r30, r3
/* 80576F84  7F A3 EB 78 */	mr r3, r29
/* 80576F88  4B E6 26 B9 */	bl get_player_actor_withoutCheck
/* 80576F8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80576F90  7C 60 1B 78 */	mr r0, r3
/* 80576F94  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80576F98  7F C3 F3 78 */	mr r3, r30
/* 80576F9C  3F E4 00 02 */	addis r31, r4, 2
/* 80576FA0  7C 1C 03 78 */	mr r28, r0
/* 80576FA4  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80576FA8  7F A4 EB 78 */	mr r4, r29
/* 80576FAC  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 80576FB0  7D 89 03 A6 */	mtctr r12
/* 80576FB4  4E 80 04 21 */	bctrl 
/* 80576FB8  7F C3 F3 78 */	mr r3, r30
/* 80576FBC  48 00 00 C1 */	bl aNSC_BGcheck
/* 80576FC0  7F C3 F3 78 */	mr r3, r30
/* 80576FC4  7F 84 E3 78 */	mr r4, r28
/* 80576FC8  48 00 0C B9 */	bl aNSC_set_zone_data
/* 80576FCC  7F C3 F3 78 */	mr r3, r30
/* 80576FD0  48 00 0D 35 */	bl aNSC_set_player_angl
/* 80576FD4  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80576FD8  7F C3 F3 78 */	mr r3, r30
/* 80576FDC  7F A4 EB 78 */	mr r4, r29
/* 80576FE0  7D 89 03 A6 */	mtctr r12
/* 80576FE4  4E 80 04 21 */	bctrl 
/* 80576FE8  7F C3 F3 78 */	mr r3, r30
/* 80576FEC  48 00 03 35 */	bl aNSC_talk_demo_proc
/* 80576FF0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80576FF4  7F C3 F3 78 */	mr r3, r30
/* 80576FF8  7F A4 EB 78 */	mr r4, r29
/* 80576FFC  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 80577000  7D 89 03 A6 */	mtctr r12
/* 80577004  4E 80 04 21 */	bctrl 
/* 80577008  7F C3 F3 78 */	mr r3, r30
/* 8057700C  7F A4 EB 78 */	mr r4, r29
/* 80577010  48 00 02 71 */	bl aNSC_sell_camera
/* 80577014  39 61 00 20 */	addi r11, r1, 0x20
/* 80577018  4B B2 3F 05 */	bl func_8009AF1C
/* 8057701C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80577020  7C 08 03 A6 */	mtlr r0
/* 80577024  38 21 00 20 */	addi r1, r1, 0x20
/* 80577028  4E 80 00 20 */	blr 
