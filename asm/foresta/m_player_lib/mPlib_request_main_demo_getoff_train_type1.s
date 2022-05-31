lbl_803DAEA8:
/* 803DAEA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DAEAC  7C 08 02 A6 */	mflr r0
/* 803DAEB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DAEB4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DAEB8  4B CC 00 1D */	bl func_8009AED4
/* 803DAEBC  7C 7D 1B 78 */	mr r29, r3
/* 803DAEC0  4B FF E7 81 */	bl get_player_actor_withoutCheck
/* 803DAEC4  7C 7E 1B 78 */	mr r30, r3
/* 803DAEC8  7F A3 EB 78 */	mr r3, r29
/* 803DAECC  4B FF E7 75 */	bl get_player_actor_withoutCheck
/* 803DAED0  7C 7F 1B 78 */	mr r31, r3
/* 803DAED4  7F A3 EB 78 */	mr r3, r29
/* 803DAED8  4B FF E7 69 */	bl get_player_actor_withoutCheck
/* 803DAEDC  81 83 12 CC */	lwz r12, 0x12cc(r3)
/* 803DAEE0  7F A3 EB 78 */	mr r3, r29
/* 803DAEE4  38 9F 00 28 */	addi r4, r31, 0x28
/* 803DAEE8  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 803DAEEC  38 C0 00 13 */	li r6, 0x13
/* 803DAEF0  7D 89 03 A6 */	mtctr r12
/* 803DAEF4  4E 80 04 21 */	bctrl 
/* 803DAEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 803DAEFC  4B CC 00 25 */	bl func_8009AF20
/* 803DAF00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DAF04  7C 08 03 A6 */	mtlr r0
/* 803DAF08  38 21 00 20 */	addi r1, r1, 0x20
/* 803DAF0C  4E 80 00 20 */	blr 
