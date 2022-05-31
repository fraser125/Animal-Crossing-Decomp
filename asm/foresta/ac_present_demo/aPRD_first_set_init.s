lbl_80483EC4:
/* 80483EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483EC8  7C 08 02 A6 */	mflr r0
/* 80483ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483ED0  4B FF FB 79 */	bl func_80483A48
/* 80483ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483ED8  7C 08 03 A6 */	mtlr r0
/* 80483EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80483EE0  4E 80 00 20 */	blr 
