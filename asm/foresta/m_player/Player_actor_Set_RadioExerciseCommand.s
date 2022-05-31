lbl_804DED64:
/* 804DED64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DED68  7C 08 02 A6 */	mflr r0
/* 804DED6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DED70  39 61 00 20 */	addi r11, r1, 0x20
/* 804DED74  4B BB C1 61 */	bl func_8009AED4
/* 804DED78  2C 05 00 00 */	cmpwi r5, 0
/* 804DED7C  7C 7D 1B 78 */	mr r29, r3
/* 804DED80  7C 9E 23 78 */	mr r30, r4
/* 804DED84  3B E0 FF FF */	li r31, -1
/* 804DED88  40 82 00 1C */	bne lbl_804DEDA4
/* 804DED8C  4B FF FE 69 */	bl Player_actor_Check_AbleRadioExercise
/* 804DED90  2C 03 00 00 */	cmpwi r3, 0
/* 804DED94  41 82 00 10 */	beq lbl_804DEDA4
/* 804DED98  7F C3 F3 78 */	mr r3, r30
/* 804DED9C  4B FF 5E 41 */	bl Player_actor_CheckController_forRadio_exercise
/* 804DEDA0  7C 7F 1B 78 */	mr r31, r3
lbl_804DEDA4:
/* 804DEDA4  7F A3 EB 78 */	mr r3, r29
/* 804DEDA8  7F E4 07 74 */	extsb r4, r31
/* 804DEDAC  4B FF FE E1 */	bl Player_actor_Set_RadioExerciseCommandRingBuffer
/* 804DEDB0  39 61 00 20 */	addi r11, r1, 0x20
/* 804DEDB4  4B BB C1 6D */	bl func_8009AF20
/* 804DEDB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DEDBC  7C 08 03 A6 */	mtlr r0
/* 804DEDC0  38 21 00 20 */	addi r1, r1, 0x20
/* 804DEDC4  4E 80 00 20 */	blr 
