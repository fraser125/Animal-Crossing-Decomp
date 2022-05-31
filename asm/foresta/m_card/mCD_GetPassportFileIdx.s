lbl_803FADCC:
/* 803FADCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FADD0  7C 08 02 A6 */	mflr r0
/* 803FADD4  38 63 00 12 */	addi r3, r3, 0x12
/* 803FADD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FADDC  4B FF FF 71 */	bl mCD_set_to_num
/* 803FADE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FADE4  7C 08 03 A6 */	mtlr r0
/* 803FADE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803FADEC  4E 80 00 20 */	blr 
