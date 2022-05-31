lbl_80408D3C:
/* 80408D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80408D40  7C 08 02 A6 */	mflr r0
/* 80408D44  EC 21 18 28 */	fsubs f1, f1, f3
/* 80408D48  EC 42 20 28 */	fsubs f2, f2, f4
/* 80408D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408D50  4B FF FF 49 */	bl Math3DVecLengthSquare2D
/* 80408D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408D58  7C 08 03 A6 */	mtlr r0
/* 80408D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80408D60  4E 80 00 20 */	blr 
