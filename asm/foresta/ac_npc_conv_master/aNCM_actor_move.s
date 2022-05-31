lbl_805459D0:
/* 805459D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805459D4  7C 08 02 A6 */	mflr r0
/* 805459D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805459DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805459E0  4B B5 54 F1 */	bl func_8009AED0
/* 805459E4  7C 9D 23 78 */	mr r29, r4
/* 805459E8  7C 7E 1B 78 */	mr r30, r3
/* 805459EC  7F A3 EB 78 */	mr r3, r29
/* 805459F0  4B E9 3C 51 */	bl get_player_actor_withoutCheck
/* 805459F4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805459F8  7C 60 1B 78 */	mr r0, r3
/* 805459FC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80545A00  7F C3 F3 78 */	mr r3, r30
/* 80545A04  3F E4 00 02 */	addis r31, r4, 2
/* 80545A08  7C 1C 03 78 */	mr r28, r0
/* 80545A0C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80545A10  7F A4 EB 78 */	mr r4, r29
/* 80545A14  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 80545A18  7D 89 03 A6 */	mtctr r12
/* 80545A1C  4E 80 04 21 */	bctrl 
/* 80545A20  7F C3 F3 78 */	mr r3, r30
/* 80545A24  48 00 00 C1 */	bl aNSC_BGcheck
/* 80545A28  7F C3 F3 78 */	mr r3, r30
/* 80545A2C  7F 84 E3 78 */	mr r4, r28
/* 80545A30  48 00 0C B9 */	bl aNSC_set_zone_data
/* 80545A34  7F C3 F3 78 */	mr r3, r30
/* 80545A38  48 00 0D 35 */	bl aNSC_set_player_angl
/* 80545A3C  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80545A40  7F C3 F3 78 */	mr r3, r30
/* 80545A44  7F A4 EB 78 */	mr r4, r29
/* 80545A48  7D 89 03 A6 */	mtctr r12
/* 80545A4C  4E 80 04 21 */	bctrl 
/* 80545A50  7F C3 F3 78 */	mr r3, r30
/* 80545A54  48 00 03 35 */	bl aNSC_talk_demo_proc
/* 80545A58  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80545A5C  7F C3 F3 78 */	mr r3, r30
/* 80545A60  7F A4 EB 78 */	mr r4, r29
/* 80545A64  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 80545A68  7D 89 03 A6 */	mtctr r12
/* 80545A6C  4E 80 04 21 */	bctrl 
/* 80545A70  7F C3 F3 78 */	mr r3, r30
/* 80545A74  7F A4 EB 78 */	mr r4, r29
/* 80545A78  48 00 02 71 */	bl aNSC_sell_camera
/* 80545A7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80545A80  4B B5 54 9D */	bl func_8009AF1C
/* 80545A84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80545A88  7C 08 03 A6 */	mtlr r0
/* 80545A8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80545A90  4E 80 00 20 */	blr 
