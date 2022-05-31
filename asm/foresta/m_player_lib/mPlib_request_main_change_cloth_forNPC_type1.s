lbl_803DAC68:
/* 803DAC68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DAC6C  7C 08 02 A6 */	mflr r0
/* 803DAC70  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DAC74  39 61 00 20 */	addi r11, r1, 0x20
/* 803DAC78  4B CC 02 59 */	bl func_8009AED0
/* 803DAC7C  7C 7C 1B 78 */	mr r28, r3
/* 803DAC80  7C 9D 23 78 */	mr r29, r4
/* 803DAC84  7C BE 2B 78 */	mr r30, r5
/* 803DAC88  7C DF 33 78 */	mr r31, r6
/* 803DAC8C  4B FF E9 B5 */	bl get_player_actor_withoutCheck
/* 803DAC90  81 83 12 DC */	lwz r12, 0x12dc(r3)
/* 803DAC94  7F 83 E3 78 */	mr r3, r28
/* 803DAC98  7F A4 EB 78 */	mr r4, r29
/* 803DAC9C  7F C5 F3 78 */	mr r5, r30
/* 803DACA0  7F E6 FB 78 */	mr r6, r31
/* 803DACA4  7D 89 03 A6 */	mtctr r12
/* 803DACA8  4E 80 04 21 */	bctrl 
/* 803DACAC  39 61 00 20 */	addi r11, r1, 0x20
/* 803DACB0  4B CC 02 6D */	bl func_8009AF1C
/* 803DACB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DACB8  7C 08 03 A6 */	mtlr r0
/* 803DACBC  38 21 00 20 */	addi r1, r1, 0x20
/* 803DACC0  4E 80 00 20 */	blr 
