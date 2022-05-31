lbl_805F6D80:
/* 805F6D80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F6D84  7C 08 02 A6 */	mflr r0
/* 805F6D88  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F6D8C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6D90  4B AA 41 3D */	bl func_8009AECC
/* 805F6D94  7C 7B 1B 78 */	mr r27, r3
/* 805F6D98  7C 9C 23 78 */	mr r28, r4
/* 805F6D9C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F6DA0  7C BD 2B 78 */	mr r29, r5
/* 805F6DA4  7C DE 33 78 */	mr r30, r6
/* 805F6DA8  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F6DAC  3B E3 00 08 */	addi r31, r3, 8
/* 805F6DB0  7F E3 FB 78 */	mr r3, r31
/* 805F6DB4  4B FF 8D AD */	bl mTG_get_table_idx
/* 805F6DB8  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 805F6DBC  7C 66 1B 78 */	mr r6, r3
/* 805F6DC0  7F 63 DB 78 */	mr r3, r27
/* 805F6DC4  7F 84 E3 78 */	mr r4, r28
/* 805F6DC8  7F A7 EB 78 */	mr r7, r29
/* 805F6DCC  7F C8 F3 78 */	mr r8, r30
/* 805F6DD0  4B FF FC FD */	bl mTG_mark_mainX
/* 805F6DD4  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6DD8  4B AA 41 41 */	bl func_8009AF18
/* 805F6DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F6DE0  7C 08 03 A6 */	mtlr r0
/* 805F6DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 805F6DE8  4E 80 00 20 */	blr 
