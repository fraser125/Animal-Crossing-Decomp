lbl_8056CB4C:
/* 8056CB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CB50  7C 08 02 A6 */	mflr r0
/* 8056CB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CB58  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8056CB5C  28 00 00 0D */	cmplwi r0, 0xd
/* 8056CB60  41 82 00 1C */	beq lbl_8056CB7C
/* 8056CB64  38 00 00 08 */	li r0, 8
/* 8056CB68  38 A0 00 02 */	li r5, 2
/* 8056CB6C  90 03 09 98 */	stw r0, 0x998(r3)
/* 8056CB70  81 83 09 A0 */	lwz r12, 0x9a0(r3)
/* 8056CB74  7D 89 03 A6 */	mtctr r12
/* 8056CB78  4E 80 04 21 */	bctrl 
lbl_8056CB7C:
/* 8056CB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CB80  7C 08 03 A6 */	mtlr r0
/* 8056CB84  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CB88  4E 80 00 20 */	blr 
