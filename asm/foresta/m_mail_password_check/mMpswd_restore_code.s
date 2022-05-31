lbl_803BE120:
/* 803BE120  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803BE124  7C 08 02 A6 */	mflr r0
/* 803BE128  90 01 00 44 */	stw r0, 0x44(r1)
/* 803BE12C  39 61 00 40 */	addi r11, r1, 0x40
/* 803BE130  4B CD CD A5 */	bl func_8009AED4
/* 803BE134  7C 7D 1B 78 */	mr r29, r3
/* 803BE138  7C 9E 23 78 */	mr r30, r4
/* 803BE13C  3B E0 00 00 */	li r31, 0
/* 803BE140  4B FF F3 1D */	bl mMpswd_check_opening_sentence
/* 803BE144  2C 03 00 01 */	cmpwi r3, 1
/* 803BE148  40 82 00 30 */	bne lbl_803BE178
/* 803BE14C  7F A3 EB 78 */	mr r3, r29
/* 803BE150  4B FF F3 25 */	bl mMpswd_get_password_pointer
/* 803BE154  28 03 00 00 */	cmplwi r3, 0
/* 803BE158  41 82 00 20 */	beq lbl_803BE178
/* 803BE15C  7C 64 1B 78 */	mr r4, r3
/* 803BE160  38 61 00 08 */	addi r3, r1, 8
/* 803BE164  4B FF F3 4D */	bl mMpswd_except_return_code
/* 803BE168  7F C3 F3 78 */	mr r3, r30
/* 803BE16C  38 81 00 08 */	addi r4, r1, 8
/* 803BE170  4B FF FE F5 */	bl mMpswd_decode_code
/* 803BE174  7C 7F 1B 78 */	mr r31, r3
lbl_803BE178:
/* 803BE178  7F E3 FB 78 */	mr r3, r31
/* 803BE17C  39 61 00 40 */	addi r11, r1, 0x40
/* 803BE180  4B CD CD A1 */	bl func_8009AF20
/* 803BE184  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803BE188  7C 08 03 A6 */	mtlr r0
/* 803BE18C  38 21 00 40 */	addi r1, r1, 0x40
/* 803BE190  4E 80 00 20 */	blr 
