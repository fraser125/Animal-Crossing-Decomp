lbl_804F0FBC:
/* 804F0FBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F0FC0  7C 08 02 A6 */	mflr r0
/* 804F0FC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F0FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0FCC  4B BA 9F 05 */	bl func_8009AED0
/* 804F0FD0  7C 7C 1B 78 */	mr r28, r3
/* 804F0FD4  7C 9D 23 78 */	mr r29, r4
/* 804F0FD8  7C BE 2B 78 */	mr r30, r5
/* 804F0FDC  7C DF 33 78 */	mr r31, r6
/* 804F0FE0  4B FE 64 FD */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F0FE4  2C 03 00 00 */	cmpwi r3, 0
/* 804F0FE8  40 82 00 74 */	bne lbl_804F105C
/* 804F0FEC  7F 83 E3 78 */	mr r3, r28
/* 804F0FF0  7F A4 EB 78 */	mr r4, r29
/* 804F0FF4  7F E5 FB 78 */	mr r5, r31
/* 804F0FF8  4B FF FC DD */	bl Player_actor_SetEffect_Reflect_axe
/* 804F0FFC  7F 83 E3 78 */	mr r3, r28
/* 804F1000  7F E4 FB 78 */	mr r4, r31
/* 804F1004  4B FF FD 1D */	bl Player_actor_SetAngleSpeedF_Reflect_axe
/* 804F1008  7F 83 E3 78 */	mr r3, r28
/* 804F100C  7F C4 F3 78 */	mr r4, r30
/* 804F1010  7F E5 FB 78 */	mr r5, r31
/* 804F1014  4B FF FD 69 */	bl Player_actor_SetOrderNPC_Reflect_axe
/* 804F1018  7F 83 E3 78 */	mr r3, r28
/* 804F101C  7F C4 F3 78 */	mr r4, r30
/* 804F1020  7F E5 FB 78 */	mr r5, r31
/* 804F1024  4B FF FE 35 */	bl Player_actor_SetSound_Reflect_axe
/* 804F1028  7F 83 E3 78 */	mr r3, r28
/* 804F102C  7F A4 EB 78 */	mr r4, r29
/* 804F1030  38 A0 00 00 */	li r5, 0
/* 804F1034  38 C0 00 00 */	li r6, 0
/* 804F1038  4B FE A2 B9 */	bl Player_actor_Set_FootMark_Base1
/* 804F103C  7F 83 E3 78 */	mr r3, r28
/* 804F1040  7F C4 F3 78 */	mr r4, r30
/* 804F1044  7F E5 FB 78 */	mr r5, r31
/* 804F1048  4B FF FE A1 */	bl Player_actor_ChangeItemNo_Reflect_axe
/* 804F104C  7F 83 E3 78 */	mr r3, r28
/* 804F1050  7F C4 F3 78 */	mr r4, r30
/* 804F1054  7F E5 FB 78 */	mr r5, r31
/* 804F1058  4B FF FE B5 */	bl Player_actor_informed_insects_Reflect_axe
lbl_804F105C:
/* 804F105C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F1060  4B BA 9E BD */	bl func_8009AF1C
/* 804F1064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F1068  7C 08 03 A6 */	mtlr r0
/* 804F106C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F1070  4E 80 00 20 */	blr 
