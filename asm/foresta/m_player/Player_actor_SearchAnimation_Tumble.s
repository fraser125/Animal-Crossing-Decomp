lbl_804E7F7C:
/* 804E7F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E7F80  7C 08 02 A6 */	mflr r0
/* 804E7F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E7F88  39 61 00 20 */	addi r11, r1, 0x20
/* 804E7F8C  4B BB 2F 49 */	bl func_8009AED4
/* 804E7F90  7C 7D 1B 78 */	mr r29, r3
/* 804E7F94  7C 9E 23 78 */	mr r30, r4
/* 804E7F98  7C BF 2B 78 */	mr r31, r5
/* 804E7F9C  4B FE F5 41 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804E7FA0  2C 03 00 00 */	cmpwi r3, 0
/* 804E7FA4  40 82 00 14 */	bne lbl_804E7FB8
/* 804E7FA8  7F A3 EB 78 */	mr r3, r29
/* 804E7FAC  7F C4 F3 78 */	mr r4, r30
/* 804E7FB0  7F E5 FB 78 */	mr r5, r31
/* 804E7FB4  4B FF FE CD */	bl Player_actor_SetEffect_Tumble
lbl_804E7FB8:
/* 804E7FB8  39 61 00 20 */	addi r11, r1, 0x20
/* 804E7FBC  4B BB 2F 65 */	bl func_8009AF20
/* 804E7FC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E7FC4  7C 08 03 A6 */	mtlr r0
/* 804E7FC8  38 21 00 20 */	addi r1, r1, 0x20
/* 804E7FCC  4E 80 00 20 */	blr 
