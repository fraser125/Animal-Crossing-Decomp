lbl_805ABD3C:
/* 805ABD3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ABD40  7C 08 02 A6 */	mflr r0
/* 805ABD44  2C 05 00 02 */	cmpwi r5, 2
/* 805ABD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ABD4C  40 82 00 40 */	bne lbl_805ABD8C
/* 805ABD50  C0 08 02 C8 */	lfs f0, 0x2c8(r8)
/* 805ABD54  FC 00 00 1E */	fctiwz f0, f0
/* 805ABD58  D8 01 00 08 */	stfd f0, 8(r1)
/* 805ABD5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805ABD60  2C 00 00 00 */	cmpwi r0, 0
/* 805ABD64  41 82 00 28 */	beq lbl_805ABD8C
/* 805ABD68  C0 08 02 CC */	lfs f0, 0x2cc(r8)
/* 805ABD6C  38 80 00 01 */	li r4, 1
/* 805ABD70  FC 00 00 1E */	fctiwz f0, f0
/* 805ABD74  D8 01 00 08 */	stfd f0, 8(r1)
/* 805ABD78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805ABD7C  7C 00 07 34 */	extsh r0, r0
/* 805ABD80  54 00 60 26 */	slwi r0, r0, 0xc
/* 805ABD84  7C 03 07 34 */	extsh r3, r0
/* 805ABD88  4B E6 0A 69 */	bl Matrix_RotateZ
lbl_805ABD8C:
/* 805ABD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ABD90  38 60 00 01 */	li r3, 1
/* 805ABD94  7C 08 03 A6 */	mtlr r0
/* 805ABD98  38 21 00 10 */	addi r1, r1, 0x10
/* 805ABD9C  4E 80 00 20 */	blr 
