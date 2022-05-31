lbl_803D93CC:
/* 803D93CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D93D0  7C 08 02 A6 */	mflr r0
/* 803D93D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D93D8  4B FF FF AD */	bl mPlib_get_player_tex_p
/* 803D93DC  28 03 00 00 */	cmplwi r3, 0
/* 803D93E0  41 82 00 08 */	beq lbl_803D93E8
/* 803D93E4  38 63 02 00 */	addi r3, r3, 0x200
lbl_803D93E8:
/* 803D93E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D93EC  7C 08 03 A6 */	mtlr r0
/* 803D93F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D93F4  4E 80 00 20 */	blr 
