lbl_804F10B4:
/* 804F10B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F10B8  7C 08 02 A6 */	mflr r0
/* 804F10BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F10C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F10C4  4B BA 9E 11 */	bl func_8009AED4
/* 804F10C8  2C 06 00 00 */	cmpwi r6, 0
/* 804F10CC  7C 7D 1B 78 */	mr r29, r3
/* 804F10D0  7C 9E 23 78 */	mr r30, r4
/* 804F10D4  40 82 00 E0 */	bne lbl_804F11B4
/* 804F10D8  2C 05 00 00 */	cmpwi r5, 0
/* 804F10DC  41 82 00 30 */	beq lbl_804F110C
/* 804F10E0  4B FE 42 8D */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F10E4  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F10E8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F10EC  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F10F0  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F10F4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F10F8  7F C3 F3 78 */	mr r3, r30
/* 804F10FC  38 80 00 00 */	li r4, 0
/* 804F1100  38 A0 00 01 */	li r5, 1
/* 804F1104  4B FF 4A F9 */	bl func_804E5BFC
/* 804F1108  48 00 00 AC */	b lbl_804F11B4
lbl_804F110C:
/* 804F110C  3C 60 80 65 */	lis r3, lit_10558@ha /* 0x806484F4@ha */
/* 804F1110  3B FD 01 74 */	addi r31, r29, 0x174
/* 804F1114  C0 23 84 F4 */	lfs f1, lit_10558@l(r3)  /* 0x806484F4@l */
/* 804F1118  7F E3 FB 78 */	mr r3, r31
/* 804F111C  4B FE 64 E5 */	bl Player_actor_Check_AnimationFrame
/* 804F1120  2C 03 00 00 */	cmpwi r3, 0
/* 804F1124  41 82 00 1C */	beq lbl_804F1140
/* 804F1128  7F A3 EB 78 */	mr r3, r29
/* 804F112C  4B FE 42 41 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F1130  7F A3 EB 78 */	mr r3, r29
/* 804F1134  38 80 00 01 */	li r4, 1
/* 804F1138  4B FE 46 E5 */	bl Player_actor_Set_status_for_bee
/* 804F113C  48 00 00 78 */	b lbl_804F11B4
lbl_804F1140:
/* 804F1140  3C 60 80 64 */	lis r3, lit_1373@ha /* 0x80646A28@ha */
/* 804F1144  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804F1148  C0 03 6A 28 */	lfs f0, lit_1373@l(r3)  /* 0x80646A28@l */
/* 804F114C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1150  4C 41 13 82 */	cror 2, 1, 2
/* 804F1154  40 82 00 60 */	bne lbl_804F11B4
/* 804F1158  7F C3 F3 78 */	mr r3, r30
/* 804F115C  38 80 00 04 */	li r4, 4
/* 804F1160  4B FE 83 89 */	bl Player_actor_CheckAndRequest_main_axe_all
/* 804F1164  2C 03 00 00 */	cmpwi r3, 0
/* 804F1168  40 82 00 4C */	bne lbl_804F11B4
/* 804F116C  4B FE 38 95 */	bl Player_actor_GetController_move_percentX
/* 804F1170  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F1174  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F1178  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F117C  40 82 00 18 */	bne lbl_804F1194
/* 804F1180  4B FE 38 C5 */	bl Player_actor_GetController_move_percentY
/* 804F1184  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F1188  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F118C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F1190  41 82 00 24 */	beq lbl_804F11B4
lbl_804F1194:
/* 804F1194  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F1198  7F C3 F3 78 */	mr r3, r30
/* 804F119C  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804F11A0  38 80 00 00 */	li r4, 0
/* 804F11A4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F11A8  38 A0 00 00 */	li r5, 0
/* 804F11AC  38 C0 00 01 */	li r6, 1
/* 804F11B0  4B FF 4E A1 */	bl func_804E6050
lbl_804F11B4:
/* 804F11B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804F11B8  4B BA 9D 69 */	bl func_8009AF20
/* 804F11BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F11C0  7C 08 03 A6 */	mtlr r0
/* 804F11C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804F11C8  4E 80 00 20 */	blr 
