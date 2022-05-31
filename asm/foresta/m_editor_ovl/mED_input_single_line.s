lbl_805D922C:
/* 805D922C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D9230  7C 08 02 A6 */	mflr r0
/* 805D9234  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D9238  39 61 00 20 */	addi r11, r1, 0x20
/* 805D923C  4B AC 1C 99 */	bl func_8009AED4
/* 805D9240  7C 9E 23 78 */	mr r30, r4
/* 805D9244  7C 7D 1B 78 */	mr r29, r3
/* 805D9248  88 04 00 13 */	lbz r0, 0x13(r4)
/* 805D924C  28 00 00 CD */	cmplwi r0, 0xcd
/* 805D9250  41 82 00 5C */	beq lbl_805D92AC
/* 805D9254  7F C3 F3 78 */	mr r3, r30
/* 805D9258  4B FF FF 69 */	bl mED_get_single_line_width
/* 805D925C  7C 7F 1B 78 */	mr r31, r3
/* 805D9260  88 7E 00 13 */	lbz r3, 0x13(r30)
/* 805D9264  38 80 00 01 */	li r4, 1
/* 805D9268  4B DD 64 35 */	bl mFont_GetCodeWidth
/* 805D926C  A8 9E 00 1E */	lha r4, 0x1e(r30)
/* 805D9270  7C 7F 1A 14 */	add r3, r31, r3
/* 805D9274  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 805D9278  7C 04 00 00 */	cmpw r4, r0
/* 805D927C  40 80 00 1C */	bge lbl_805D9298
/* 805D9280  A8 1E 00 1C */	lha r0, 0x1c(r30)
/* 805D9284  7C 03 00 00 */	cmpw r3, r0
/* 805D9288  41 81 00 10 */	bgt lbl_805D9298
/* 805D928C  7F C3 F3 78 */	mr r3, r30
/* 805D9290  4B FF FE D9 */	bl mED_output_code
/* 805D9294  48 00 00 18 */	b lbl_805D92AC
lbl_805D9298:
/* 805D9298  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805D929C  7F A3 EB 78 */	mr r3, r29
/* 805D92A0  38 A0 00 19 */	li r5, 0x19
/* 805D92A4  38 84 03 24 */	addi r4, r4, 0x324
/* 805D92A8  4B FF F1 09 */	bl func_805D83B0
lbl_805D92AC:
/* 805D92AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D92B0  4B AC 1C 71 */	bl func_8009AF20
/* 805D92B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D92B8  7C 08 03 A6 */	mtlr r0
/* 805D92BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805D92C0  4E 80 00 20 */	blr 
