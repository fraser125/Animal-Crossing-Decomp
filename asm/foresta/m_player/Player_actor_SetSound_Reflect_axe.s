lbl_804F0E58:
/* 804F0E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F0E5C  7C 08 02 A6 */	mflr r0
/* 804F0E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F0E64  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0E68  4B BA A0 6D */	bl func_8009AED4
/* 804F0E6C  7C 7D 1B 78 */	mr r29, r3
/* 804F0E70  7C 9E 23 78 */	mr r30, r4
/* 804F0E74  4B FF F2 E1 */	bl Player_actor_SetSound_AXE_FURI_axe_common
/* 804F0E78  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804F0E7C  38 7D 01 74 */	addi r3, r29, 0x174
/* 804F0E80  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804F0E84  4B FE 67 7D */	bl Player_actor_Check_AnimationFrame
/* 804F0E88  2C 03 00 00 */	cmpwi r3, 0
/* 804F0E8C  41 82 00 44 */	beq lbl_804F0ED0
/* 804F0E90  83 FE 00 10 */	lwz r31, 0x10(r30)
/* 804F0E94  28 1F 00 00 */	cmplwi r31, 0
/* 804F0E98  41 82 00 28 */	beq lbl_804F0EC0
/* 804F0E9C  4B FE 40 71 */	bl Player_actor_set_viblation_Axe_soft
/* 804F0EA0  A8 1F 00 00 */	lha r0, 0(r31)
/* 804F0EA4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 804F0EA8  41 82 00 28 */	beq lbl_804F0ED0
/* 804F0EAC  48 00 00 08 */	b lbl_804F0EB4
/* 804F0EB0  48 00 00 20 */	b lbl_804F0ED0
lbl_804F0EB4:
/* 804F0EB4  7F A3 EB 78 */	mr r3, r29
/* 804F0EB8  4B FE EC 79 */	bl Player_actor_sound_axe_ball_hit
/* 804F0EBC  48 00 00 14 */	b lbl_804F0ED0
lbl_804F0EC0:
/* 804F0EC0  7F A3 EB 78 */	mr r3, r29
/* 804F0EC4  7F C4 F3 78 */	mr r4, r30
/* 804F0EC8  4B FE E6 05 */	bl Player_actor_sound_AXE_HIT
/* 804F0ECC  4B FE 40 21 */	bl Player_actor_set_viblation_Axe_hard
lbl_804F0ED0:
/* 804F0ED0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0ED4  4B BA A0 4D */	bl func_8009AF20
/* 804F0ED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F0EDC  7C 08 03 A6 */	mtlr r0
/* 804F0EE0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F0EE4  4E 80 00 20 */	blr 
