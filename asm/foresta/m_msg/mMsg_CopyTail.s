lbl_803C10B8:
/* 803C10B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C10BC  7C 08 02 A6 */	mflr r0
/* 803C10C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C10C4  39 61 00 30 */	addi r11, r1, 0x30
/* 803C10C8  4B CD 9D FD */	bl func_8009AEC4
/* 803C10CC  7C 99 23 78 */	mr r25, r4
/* 803C10D0  7C BA 2B 78 */	mr r26, r5
/* 803C10D4  7C 7D 1B 78 */	mr r29, r3
/* 803C10D8  7C DC 33 78 */	mr r28, r6
/* 803C10DC  7C FB 3B 78 */	mr r27, r7
/* 803C10E0  7F 23 CB 78 */	mr r3, r25
/* 803C10E4  7F 44 D3 78 */	mr r4, r26
/* 803C10E8  4B FE E7 21 */	bl mFont_CodeSize_idx_get
/* 803C10EC  28 1D 00 00 */	cmplwi r29, 0
/* 803C10F0  7C 7E 1B 78 */	mr r30, r3
/* 803C10F4  41 82 00 10 */	beq lbl_803C1104
/* 803C10F8  7F A3 EB 78 */	mr r3, r29
/* 803C10FC  48 00 D8 B1 */	bl mNpc_GetWordEnding
/* 803C1100  48 00 00 08 */	b lbl_803C1108
lbl_803C1104:
/* 803C1104  38 60 00 00 */	li r3, 0
lbl_803C1108:
/* 803C1108  28 1D 00 00 */	cmplwi r29, 0
/* 803C110C  7C 7D 1B 78 */	mr r29, r3
/* 803C1110  41 82 00 14 */	beq lbl_803C1124
/* 803C1114  38 80 00 0A */	li r4, 0xa
/* 803C1118  4B FF FB 4D */	bl mMsg_Get_Length_String
/* 803C111C  7C 7F 1B 78 */	mr r31, r3
/* 803C1120  48 00 00 08 */	b lbl_803C1128
lbl_803C1124:
/* 803C1124  3B E0 00 00 */	li r31, 0
lbl_803C1128:
/* 803C1128  7F 23 CB 78 */	mr r3, r25
/* 803C112C  7F 86 E3 78 */	mr r6, r28
/* 803C1130  7C 9A FA 14 */	add r4, r26, r31
/* 803C1134  7C BA F2 14 */	add r5, r26, r30
/* 803C1138  38 E0 00 00 */	li r7, 0
/* 803C113C  4B FF FC 39 */	bl mMsg_MoveDataCut
/* 803C1140  7F D9 D2 14 */	add r30, r25, r26
/* 803C1144  7C 7C 1B 78 */	mr r28, r3
/* 803C1148  7F A4 EB 78 */	mr r4, r29
/* 803C114C  7F E5 FB 78 */	mr r5, r31
/* 803C1150  7F C3 F3 78 */	mr r3, r30
/* 803C1154  4B FF FC E9 */	bl mMsg_CopyString
/* 803C1158  28 1B 00 00 */	cmplwi r27, 0
/* 803C115C  41 82 00 10 */	beq lbl_803C116C
/* 803C1160  88 7E 00 00 */	lbz r3, 0(r30)
/* 803C1164  4B FE E4 E5 */	bl mFont_small_to_capital
/* 803C1168  98 7E 00 00 */	stb r3, 0(r30)
lbl_803C116C:
/* 803C116C  7F 83 E3 78 */	mr r3, r28
/* 803C1170  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1174  4B CD 9D 9D */	bl func_8009AF10
/* 803C1178  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C117C  7C 08 03 A6 */	mtlr r0
/* 803C1180  38 21 00 30 */	addi r1, r1, 0x30
/* 803C1184  4E 80 00 20 */	blr 
