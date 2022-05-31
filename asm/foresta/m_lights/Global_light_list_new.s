lbl_803BC17C:
/* 803BC17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC180  7C 08 02 A6 */	mflr r0
/* 803BC184  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC18C  7C BF 2B 78 */	mr r31, r5
/* 803BC190  93 C1 00 08 */	stw r30, 8(r1)
/* 803BC194  7C 9E 23 78 */	mr r30, r4
/* 803BC198  4B FF FE 51 */	bl Light_list_buf_new
/* 803BC19C  28 03 00 00 */	cmplwi r3, 0
/* 803BC1A0  41 82 00 2C */	beq lbl_803BC1CC
/* 803BC1A4  93 E3 00 00 */	stw r31, 0(r3)
/* 803BC1A8  38 00 00 00 */	li r0, 0
/* 803BC1AC  90 03 00 04 */	stw r0, 4(r3)
/* 803BC1B0  80 1E 00 00 */	lwz r0, 0(r30)
/* 803BC1B4  90 03 00 08 */	stw r0, 8(r3)
/* 803BC1B8  80 9E 00 00 */	lwz r4, 0(r30)
/* 803BC1BC  28 04 00 00 */	cmplwi r4, 0
/* 803BC1C0  41 82 00 08 */	beq lbl_803BC1C8
/* 803BC1C4  90 64 00 04 */	stw r3, 4(r4)
lbl_803BC1C8:
/* 803BC1C8  90 7E 00 00 */	stw r3, 0(r30)
lbl_803BC1CC:
/* 803BC1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC1D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BC1D8  7C 08 03 A6 */	mtlr r0
/* 803BC1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC1E0  4E 80 00 20 */	blr 
