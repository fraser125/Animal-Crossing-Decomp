lbl_803B9A9C:
/* 803B9A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B9AA0  7C 08 02 A6 */	mflr r0
/* 803B9AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B9AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 803B9AAC  4B CE 14 21 */	bl func_8009AECC
/* 803B9AB0  7C 7B 1B 78 */	mr r27, r3
/* 803B9AB4  7C BC 2B 78 */	mr r28, r5
/* 803B9AB8  7C DD 33 78 */	mr r29, r6
/* 803B9ABC  7C FE 3B 78 */	mr r30, r7
/* 803B9AC0  7D 1F 43 78 */	mr r31, r8
/* 803B9AC4  4B FF FF 11 */	bl mEnv_OperateReservedPointLight_Position
/* 803B9AC8  7F 63 DB 78 */	mr r3, r27
/* 803B9ACC  7F 84 E3 78 */	mr r4, r28
/* 803B9AD0  7F A5 EB 78 */	mr r5, r29
/* 803B9AD4  7F C6 F3 78 */	mr r6, r30
/* 803B9AD8  4B FF FF 69 */	bl mEnv_OperateReservedPointLight_Color
/* 803B9ADC  7F 63 DB 78 */	mr r3, r27
/* 803B9AE0  7F E4 FB 78 */	mr r4, r31
/* 803B9AE4  4B FF FF 91 */	bl mEnv_OperateReservedPointLight_Power
/* 803B9AE8  39 61 00 20 */	addi r11, r1, 0x20
/* 803B9AEC  4B CE 14 2D */	bl func_8009AF18
/* 803B9AF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B9AF4  7C 08 03 A6 */	mtlr r0
/* 803B9AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 803B9AFC  4E 80 00 20 */	blr 
