lbl_80521BAC:
/* 80521BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521BB0  7C 08 02 A6 */	mflr r0
/* 80521BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80521BBC  3B E0 00 00 */	li r31, 0
/* 80521BC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80521BC4  7C 7E 1B 78 */	mr r30, r3
/* 80521BC8  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 80521BCC  7D 89 03 A6 */	mtctr r12
/* 80521BD0  4E 80 04 21 */	bctrl 
/* 80521BD4  7F C4 F3 78 */	mr r4, r30
/* 80521BD8  38 60 00 07 */	li r3, 7
/* 80521BDC  4B E7 86 89 */	bl mDemo_Check
/* 80521BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80521BE4  40 82 00 14 */	bne lbl_80521BF8
/* 80521BE8  38 60 00 45 */	li r3, 0x45
/* 80521BEC  38 80 00 40 */	li r4, 0x40
/* 80521BF0  4B E7 BD E1 */	bl mEv_set_status
/* 80521BF4  3B E0 00 01 */	li r31, 1
lbl_80521BF8:
/* 80521BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521BFC  7F E3 FB 78 */	mr r3, r31
/* 80521C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80521C04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80521C08  7C 08 03 A6 */	mtlr r0
/* 80521C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80521C10  4E 80 00 20 */	blr 
