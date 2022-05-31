lbl_803973A4:
/* 803973A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803973A8  7C 08 02 A6 */	mflr r0
/* 803973AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803973B0  39 61 00 30 */	addi r11, r1, 0x30
/* 803973B4  4B D0 3B 0D */	bl func_8009AEC0
/* 803973B8  3C E0 81 16 */	lis r7, debug_print2_buffer@ha /* 0x81166150@ha */
/* 803973BC  3C C0 80 65 */	lis r6, print_color_441@ha /* 0x806512C4@ha */
/* 803973C0  3C A0 80 65 */	lis r5, lit_424@ha /* 0x806512C0@ha */
/* 803973C4  3C 80 81 16 */	lis r4, debug_print2_count@ha /* 0x8116614C@ha */
/* 803973C8  7C 78 1B 78 */	mr r24, r3
/* 803973CC  3B 67 61 50 */	addi r27, r7, debug_print2_buffer@l /* 0x81166150@l */
/* 803973D0  3B 86 12 C4 */	addi r28, r6, print_color_441@l /* 0x806512C4@l */
/* 803973D4  3B A5 12 C0 */	addi r29, r5, lit_424@l /* 0x806512C0@l */
/* 803973D8  3B C4 61 4C */	addi r30, r4, debug_print2_count@l /* 0x8116614C@l */
/* 803973DC  3B 20 00 00 */	li r25, 0
/* 803973E0  3B E0 00 00 */	li r31, 0
/* 803973E4  48 00 00 58 */	b lbl_8039743C
lbl_803973E8:
/* 803973E8  7F 5B FA 14 */	add r26, r27, r31
/* 803973EC  7F 03 C3 78 */	mr r3, r24
/* 803973F0  88 1A 00 02 */	lbz r0, 2(r26)
/* 803973F4  54 00 10 3A */	slwi r0, r0, 2
/* 803973F8  7C FC 02 14 */	add r7, r28, r0
/* 803973FC  88 87 00 00 */	lbz r4, 0(r7)
/* 80397400  88 A7 00 01 */	lbz r5, 1(r7)
/* 80397404  88 C7 00 02 */	lbz r6, 2(r7)
/* 80397408  88 E7 00 03 */	lbz r7, 3(r7)
/* 8039740C  4B CC 3D 95 */	bl gfxprint_color
/* 80397410  88 9A 00 00 */	lbz r4, 0(r26)
/* 80397414  7F 03 C3 78 */	mr r3, r24
/* 80397418  88 BA 00 01 */	lbz r5, 1(r26)
/* 8039741C  4B CC 3D F5 */	bl gfxprint_locate8x8
/* 80397420  7F 03 C3 78 */	mr r3, r24
/* 80397424  7F A4 EB 78 */	mr r4, r29
/* 80397428  38 BA 00 03 */	addi r5, r26, 3
/* 8039742C  4C C6 31 82 */	crclr 6
/* 80397430  4B CC 44 ED */	bl gfxprint_printf
/* 80397434  3B 39 00 01 */	addi r25, r25, 1
/* 80397438  3B FF 00 2C */	addi r31, r31, 0x2c
lbl_8039743C:
/* 8039743C  A8 1E 00 00 */	lha r0, 0(r30)
/* 80397440  7C 19 00 00 */	cmpw r25, r0
/* 80397444  41 80 FF A4 */	blt lbl_803973E8
/* 80397448  39 61 00 30 */	addi r11, r1, 0x30
/* 8039744C  4B D0 3A C1 */	bl func_8009AF0C
/* 80397450  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80397454  7C 08 03 A6 */	mtlr r0
/* 80397458  38 21 00 30 */	addi r1, r1, 0x30
/* 8039745C  4E 80 00 20 */	blr 
