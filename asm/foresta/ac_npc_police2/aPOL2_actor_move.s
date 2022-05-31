lbl_8056C15C:
/* 8056C15C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056C160  7C 08 02 A6 */	mflr r0
/* 8056C164  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056C168  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C16C  4B B2 ED 65 */	bl func_8009AED0
/* 8056C170  7C 9D 23 78 */	mr r29, r4
/* 8056C174  7C 7E 1B 78 */	mr r30, r3
/* 8056C178  7F A3 EB 78 */	mr r3, r29
/* 8056C17C  4B E6 D4 C5 */	bl get_player_actor_withoutCheck
/* 8056C180  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056C184  7C 60 1B 78 */	mr r0, r3
/* 8056C188  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056C18C  7F C3 F3 78 */	mr r3, r30
/* 8056C190  3F E4 00 02 */	addis r31, r4, 2
/* 8056C194  7C 1C 03 78 */	mr r28, r0
/* 8056C198  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8056C19C  7F A4 EB 78 */	mr r4, r29
/* 8056C1A0  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 8056C1A4  7D 89 03 A6 */	mtctr r12
/* 8056C1A8  4E 80 04 21 */	bctrl 
/* 8056C1AC  7F C3 F3 78 */	mr r3, r30
/* 8056C1B0  4B FF EF 7D */	bl func_8056B12C
/* 8056C1B4  7F C3 F3 78 */	mr r3, r30
/* 8056C1B8  7F 84 E3 78 */	mr r4, r28
/* 8056C1BC  4B FF F5 F1 */	bl aPOL2_set_zone_data
/* 8056C1C0  7F C3 F3 78 */	mr r3, r30
/* 8056C1C4  4B FF F6 6D */	bl aPOL2_set_player_angl
/* 8056C1C8  81 9E 09 98 */	lwz r12, 0x998(r30)
/* 8056C1CC  7F C3 F3 78 */	mr r3, r30
/* 8056C1D0  7F A4 EB 78 */	mr r4, r29
/* 8056C1D4  7D 89 03 A6 */	mtctr r12
/* 8056C1D8  4E 80 04 21 */	bctrl 
/* 8056C1DC  7F A3 EB 78 */	mr r3, r29
/* 8056C1E0  7F 84 E3 78 */	mr r4, r28
/* 8056C1E4  4B FF F8 FD */	bl aPOL2_player_getout_check
/* 8056C1E8  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8056C1EC  7F C3 F3 78 */	mr r3, r30
/* 8056C1F0  7F A4 EB 78 */	mr r4, r29
/* 8056C1F4  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 8056C1F8  7D 89 03 A6 */	mtctr r12
/* 8056C1FC  4E 80 04 21 */	bctrl 
/* 8056C200  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C204  4B B2 ED 19 */	bl func_8009AF1C
/* 8056C208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056C20C  7C 08 03 A6 */	mtlr r0
/* 8056C210  38 21 00 20 */	addi r1, r1, 0x20
/* 8056C214  4E 80 00 20 */	blr 
