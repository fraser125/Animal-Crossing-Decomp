lbl_804F0324:
/* 804F0324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F0328  7C 08 02 A6 */	mflr r0
/* 804F032C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F0330  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0334  4B BA AB 9D */	bl func_8009AED0
/* 804F0338  7C 7C 1B 78 */	mr r28, r3
/* 804F033C  7C 9D 23 78 */	mr r29, r4
/* 804F0340  7C BE 2B 78 */	mr r30, r5
/* 804F0344  7C DF 33 78 */	mr r31, r6
/* 804F0348  4B FE 71 95 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F034C  2C 03 00 00 */	cmpwi r3, 0
/* 804F0350  40 82 00 5C */	bne lbl_804F03AC
/* 804F0354  7F 83 E3 78 */	mr r3, r28
/* 804F0358  7F A4 EB 78 */	mr r4, r29
/* 804F035C  7F E5 FB 78 */	mr r5, r31
/* 804F0360  4B FF FA C9 */	bl Player_actor_SetEffect_Swing_axe
/* 804F0364  7F 83 E3 78 */	mr r3, r28
/* 804F0368  7F A4 EB 78 */	mr r4, r29
/* 804F036C  7F C5 F3 78 */	mr r5, r30
/* 804F0370  7F E6 FB 78 */	mr r6, r31
/* 804F0374  4B FF FC 31 */	bl Player_actor_CutTree_Swing_axe
/* 804F0378  7F 83 E3 78 */	mr r3, r28
/* 804F037C  7F C4 F3 78 */	mr r4, r30
/* 804F0380  7F E5 FB 78 */	mr r5, r31
/* 804F0384  4B FF FE 39 */	bl Player_actor_SetSound_Swing_axe
/* 804F0388  7F 83 E3 78 */	mr r3, r28
/* 804F038C  7F C4 F3 78 */	mr r4, r30
/* 804F0390  7F E5 FB 78 */	mr r5, r31
/* 804F0394  4B FF FF 6D */	bl Player_actor_ChangeItemNo_Swing_axe
/* 804F0398  7F 83 E3 78 */	mr r3, r28
/* 804F039C  7F A4 EB 78 */	mr r4, r29
/* 804F03A0  38 A0 00 00 */	li r5, 0
/* 804F03A4  38 C0 00 00 */	li r6, 0
/* 804F03A8  4B FE AF 49 */	bl Player_actor_Set_FootMark_Base1
lbl_804F03AC:
/* 804F03AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F03B0  4B BA AB 6D */	bl func_8009AF1C
/* 804F03B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F03B8  7C 08 03 A6 */	mtlr r0
/* 804F03BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804F03C0  4E 80 00 20 */	blr 
