lbl_8051BBC0:
/* 8051BBC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051BBC4  7C 08 02 A6 */	mflr r0
/* 8051BBC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051BBCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051BBD0  4B B7 F3 01 */	bl func_8009AED0
/* 8051BBD4  7C 9D 23 78 */	mr r29, r4
/* 8051BBD8  7C 7E 1B 78 */	mr r30, r3
/* 8051BBDC  7F A3 EB 78 */	mr r3, r29
/* 8051BBE0  4B EB DA 61 */	bl get_player_actor_withoutCheck
/* 8051BBE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051BBE8  7C 60 1B 78 */	mr r0, r3
/* 8051BBEC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051BBF0  7F C3 F3 78 */	mr r3, r30
/* 8051BBF4  3F E4 00 02 */	addis r31, r4, 2
/* 8051BBF8  7C 1C 03 78 */	mr r28, r0
/* 8051BBFC  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8051BC00  7F A4 EB 78 */	mr r4, r29
/* 8051BC04  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 8051BC08  7D 89 03 A6 */	mtctr r12
/* 8051BC0C  4E 80 04 21 */	bctrl 
/* 8051BC10  7F C3 F3 78 */	mr r3, r30
/* 8051BC14  4B FF ED 55 */	bl func_8051A968
/* 8051BC18  7F C3 F3 78 */	mr r3, r30
/* 8051BC1C  7F 84 E3 78 */	mr r4, r28
/* 8051BC20  4B FF F3 39 */	bl aEBR2_set_zone_data
/* 8051BC24  7F C3 F3 78 */	mr r3, r30
/* 8051BC28  4B FF F3 B5 */	bl aEBR2_set_player_angl
/* 8051BC2C  7F C3 F3 78 */	mr r3, r30
/* 8051BC30  4B FF ED ED */	bl aEBR2_talk_demo_proc
/* 8051BC34  81 9E 09 98 */	lwz r12, 0x998(r30)
/* 8051BC38  7F C3 F3 78 */	mr r3, r30
/* 8051BC3C  7F A4 EB 78 */	mr r4, r29
/* 8051BC40  7D 89 03 A6 */	mtctr r12
/* 8051BC44  4E 80 04 21 */	bctrl 
/* 8051BC48  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8051BC4C  7F C3 F3 78 */	mr r3, r30
/* 8051BC50  7F A4 EB 78 */	mr r4, r29
/* 8051BC54  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 8051BC58  7D 89 03 A6 */	mtctr r12
/* 8051BC5C  4E 80 04 21 */	bctrl 
/* 8051BC60  39 61 00 20 */	addi r11, r1, 0x20
/* 8051BC64  4B B7 F2 B9 */	bl func_8009AF1C
/* 8051BC68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051BC6C  7C 08 03 A6 */	mtlr r0
/* 8051BC70  38 21 00 20 */	addi r1, r1, 0x20
/* 8051BC74  4E 80 00 20 */	blr 
