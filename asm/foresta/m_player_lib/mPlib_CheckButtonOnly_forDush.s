lbl_803DE6FC:
/* 803DE6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE700  7C 08 02 A6 */	mflr r0
/* 803DE704  38 60 40 00 */	li r3, 0x4000
/* 803DE708  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE710  3B E0 00 00 */	li r31, 0
/* 803DE714  4B FB 77 5D */	bl chkButton
/* 803DE718  2C 03 00 00 */	cmpwi r3, 0
/* 803DE71C  40 82 00 24 */	bne lbl_803DE740
/* 803DE720  38 60 00 20 */	li r3, 0x20
/* 803DE724  4B FB 77 4D */	bl chkButton
/* 803DE728  2C 03 00 00 */	cmpwi r3, 0
/* 803DE72C  40 82 00 14 */	bne lbl_803DE740
/* 803DE730  38 60 00 10 */	li r3, 0x10
/* 803DE734  4B FB 77 3D */	bl chkButton
/* 803DE738  2C 03 00 00 */	cmpwi r3, 0
/* 803DE73C  41 82 00 08 */	beq lbl_803DE744
lbl_803DE740:
/* 803DE740  3B E0 00 01 */	li r31, 1
lbl_803DE744:
/* 803DE744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE748  7F E3 FB 78 */	mr r3, r31
/* 803DE74C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE750  7C 08 03 A6 */	mtlr r0
/* 803DE754  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE758  4E 80 00 20 */	blr 
