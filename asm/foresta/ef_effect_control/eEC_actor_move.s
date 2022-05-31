lbl_804CDBB0:
/* 804CDBB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CDBB4  7C 08 02 A6 */	mflr r0
/* 804CDBB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CDBBC  39 61 00 20 */	addi r11, r1, 0x20
/* 804CDBC0  4B BC D3 15 */	bl func_8009AED4
/* 804CDBC4  7C 9E 23 78 */	mr r30, r4
/* 804CDBC8  7C 7D 1B 78 */	mr r29, r3
/* 804CDBCC  7F C3 F3 78 */	mr r3, r30
/* 804CDBD0  4B F0 BA 71 */	bl get_player_actor_withoutCheck
/* 804CDBD4  7C 7F 1B 78 */	mr r31, r3
/* 804CDBD8  7F C3 F3 78 */	mr r3, r30
/* 804CDBDC  48 00 09 ED */	bl eEL_CalcEffectLight_Set
/* 804CDBE0  7F C3 F3 78 */	mr r3, r30
/* 804CDBE4  4B FF FE FD */	bl eEC_AllEffectMove
/* 804CDBE8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 804CDBEC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CDBF0  90 7D 00 28 */	stw r3, 0x28(r29)
/* 804CDBF4  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 804CDBF8  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CDBFC  90 1D 00 30 */	stw r0, 0x30(r29)
/* 804CDC00  39 61 00 20 */	addi r11, r1, 0x20
/* 804CDC04  4B BC D3 1D */	bl func_8009AF20
/* 804CDC08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CDC0C  7C 08 03 A6 */	mtlr r0
/* 804CDC10  38 21 00 20 */	addi r1, r1, 0x20
/* 804CDC14  4E 80 00 20 */	blr 
