lbl_8052E0D4:
/* 8052E0D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052E0D8  7C 08 02 A6 */	mflr r0
/* 8052E0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052E0E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E0E4  4B B6 CD F1 */	bl func_8009AED4
/* 8052E0E8  7C 7D 1B 78 */	mr r29, r3
/* 8052E0EC  7C BE 2B 78 */	mr r30, r5
/* 8052E0F0  88 03 08 BE */	lbz r0, 0x8be(r3)
/* 8052E0F4  7C DF 33 78 */	mr r31, r6
/* 8052E0F8  28 00 00 00 */	cmplwi r0, 0
/* 8052E0FC  40 82 00 08 */	bne lbl_8052E104
/* 8052E100  4B FF FD ED */	bl aNPC_look_target
lbl_8052E104:
/* 8052E104  88 1D 08 1A */	lbz r0, 0x81a(r29)
/* 8052E108  28 00 00 00 */	cmplwi r0, 0
/* 8052E10C  41 82 00 24 */	beq lbl_8052E130
/* 8052E110  88 1D 08 1B */	lbz r0, 0x81b(r29)
/* 8052E114  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 8052E118  38 9D 08 20 */	addi r4, r29, 0x820
/* 8052E11C  98 1D 08 BF */	stb r0, 0x8bf(r29)
/* 8052E120  80 1D 08 1C */	lwz r0, 0x81c(r29)
/* 8052E124  90 1D 08 C0 */	stw r0, 0x8c0(r29)
/* 8052E128  4B E8 CD 95 */	bl xyz_t_move
/* 8052E12C  48 00 00 0C */	b lbl_8052E138
lbl_8052E130:
/* 8052E130  38 00 00 00 */	li r0, 0
/* 8052E134  98 1D 08 BF */	stb r0, 0x8bf(r29)
lbl_8052E138:
/* 8052E138  7F A3 EB 78 */	mr r3, r29
/* 8052E13C  4B FF FE A9 */	bl aNPC_check_condition_search_eye
/* 8052E140  2C 03 00 01 */	cmpwi r3, 1
/* 8052E144  40 82 00 74 */	bne lbl_8052E1B8
/* 8052E148  88 1D 08 BF */	lbz r0, 0x8bf(r29)
/* 8052E14C  2C 00 00 02 */	cmpwi r0, 2
/* 8052E150  41 82 00 30 */	beq lbl_8052E180
/* 8052E154  40 80 00 44 */	bge lbl_8052E198
/* 8052E158  2C 00 00 01 */	cmpwi r0, 1
/* 8052E15C  40 80 00 08 */	bge lbl_8052E164
/* 8052E160  48 00 00 38 */	b lbl_8052E198
lbl_8052E164:
/* 8052E164  80 BD 08 C0 */	lwz r5, 0x8c0(r29)
/* 8052E168  7F A3 EB 78 */	mr r3, r29
/* 8052E16C  7F C6 F3 78 */	mr r6, r30
/* 8052E170  38 85 00 48 */	addi r4, r5, 0x48
/* 8052E174  38 A5 00 28 */	addi r5, r5, 0x28
/* 8052E178  4B FF FE 99 */	bl aNPC_search_eye_target_sub
/* 8052E17C  48 00 00 3C */	b lbl_8052E1B8
lbl_8052E180:
/* 8052E180  38 9D 08 C4 */	addi r4, r29, 0x8c4
/* 8052E184  7F A3 EB 78 */	mr r3, r29
/* 8052E188  7F C6 F3 78 */	mr r6, r30
/* 8052E18C  7C 85 23 78 */	mr r5, r4
/* 8052E190  4B FF FE 81 */	bl aNPC_search_eye_target_sub
/* 8052E194  48 00 00 24 */	b lbl_8052E1B8
lbl_8052E198:
/* 8052E198  A8 9F 00 02 */	lha r4, 2(r31)
/* 8052E19C  38 7D 08 B4 */	addi r3, r29, 0x8b4
/* 8052E1A0  A8 BD 08 B8 */	lha r5, 0x8b8(r29)
/* 8052E1A4  4B E8 C9 A1 */	bl chase_angle
/* 8052E1A8  A8 9F 00 00 */	lha r4, 0(r31)
/* 8052E1AC  38 7D 08 B6 */	addi r3, r29, 0x8b6
/* 8052E1B0  A8 BD 08 BA */	lha r5, 0x8ba(r29)
/* 8052E1B4  4B E8 C9 91 */	bl chase_angle
lbl_8052E1B8:
/* 8052E1B8  38 00 00 00 */	li r0, 0
/* 8052E1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E1C0  98 1D 08 1A */	stb r0, 0x81a(r29)
/* 8052E1C4  4B B6 CD 5D */	bl func_8009AF20
/* 8052E1C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052E1CC  7C 08 03 A6 */	mtlr r0
/* 8052E1D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8052E1D4  4E 80 00 20 */	blr 
