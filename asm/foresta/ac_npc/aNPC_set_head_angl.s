lbl_80530194:
/* 80530194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80530198  7C 08 02 A6 */	mflr r0
/* 8053019C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805301A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805301A4  4B B6 AD 31 */	bl func_8009AED4
/* 805301A8  7C 7D 1B 78 */	mr r29, r3
/* 805301AC  7C 9E 23 78 */	mr r30, r4
/* 805301B0  7C BF 2B 78 */	mr r31, r5
/* 805301B4  4B ED C0 D5 */	bl get_Matrix_now
/* 805301B8  38 81 00 08 */	addi r4, r1, 8
/* 805301BC  38 A0 00 00 */	li r5, 0
/* 805301C0  4B ED D7 5D */	bl Matrix_to_rotate_new
/* 805301C4  7F C3 F3 78 */	mr r3, r30
/* 805301C8  7F A4 EB 78 */	mr r4, r29
/* 805301CC  7F E6 FB 78 */	mr r6, r31
/* 805301D0  38 A1 00 08 */	addi r5, r1, 8
/* 805301D4  4B FF DF 01 */	bl aNPC_search_eye_target
/* 805301D8  A8 1E 08 B6 */	lha r0, 0x8b6(r30)
/* 805301DC  B0 1F 00 00 */	sth r0, 0(r31)
/* 805301E0  A8 1E 08 B4 */	lha r0, 0x8b4(r30)
/* 805301E4  B0 1F 00 02 */	sth r0, 2(r31)
/* 805301E8  39 61 00 20 */	addi r11, r1, 0x20
/* 805301EC  4B B6 AD 35 */	bl func_8009AF20
/* 805301F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805301F4  7C 08 03 A6 */	mtlr r0
/* 805301F8  38 21 00 20 */	addi r1, r1, 0x20
/* 805301FC  4E 80 00 20 */	blr 
