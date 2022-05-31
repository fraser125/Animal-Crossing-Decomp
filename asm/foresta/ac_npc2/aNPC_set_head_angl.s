lbl_8053E170:
/* 8053E170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053E174  7C 08 02 A6 */	mflr r0
/* 8053E178  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053E17C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053E180  4B B5 CD 55 */	bl func_8009AED4
/* 8053E184  7C 7D 1B 78 */	mr r29, r3
/* 8053E188  7C 9E 23 78 */	mr r30, r4
/* 8053E18C  7C BF 2B 78 */	mr r31, r5
/* 8053E190  4B EC E0 F9 */	bl get_Matrix_now
/* 8053E194  38 81 00 08 */	addi r4, r1, 8
/* 8053E198  38 A0 00 00 */	li r5, 0
/* 8053E19C  4B EC F7 81 */	bl Matrix_to_rotate_new
/* 8053E1A0  7F C3 F3 78 */	mr r3, r30
/* 8053E1A4  7F A4 EB 78 */	mr r4, r29
/* 8053E1A8  7F E6 FB 78 */	mr r6, r31
/* 8053E1AC  38 A1 00 08 */	addi r5, r1, 8
/* 8053E1B0  4B FF E9 F9 */	bl aNPC_search_eye_target
/* 8053E1B4  A8 1E 08 B6 */	lha r0, 0x8b6(r30)
/* 8053E1B8  B0 1F 00 00 */	sth r0, 0(r31)
/* 8053E1BC  A8 1E 08 B4 */	lha r0, 0x8b4(r30)
/* 8053E1C0  B0 1F 00 02 */	sth r0, 2(r31)
/* 8053E1C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8053E1C8  4B B5 CD 59 */	bl func_8009AF20
/* 8053E1CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053E1D0  7C 08 03 A6 */	mtlr r0
/* 8053E1D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8053E1D8  4E 80 00 20 */	blr 
