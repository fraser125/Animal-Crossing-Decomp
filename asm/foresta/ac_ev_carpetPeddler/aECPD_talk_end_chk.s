lbl_8051C93C:
/* 8051C93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C940  7C 08 02 A6 */	mflr r0
/* 8051C944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C94C  3B E0 00 00 */	li r31, 0
/* 8051C950  93 C1 00 08 */	stw r30, 8(r1)
/* 8051C954  7C 7E 1B 78 */	mr r30, r3
/* 8051C958  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 8051C95C  7D 89 03 A6 */	mtctr r12
/* 8051C960  4E 80 04 21 */	bctrl 
/* 8051C964  7F C4 F3 78 */	mr r4, r30
/* 8051C968  38 60 00 07 */	li r3, 7
/* 8051C96C  4B E7 D8 F9 */	bl mDemo_Check
/* 8051C970  2C 03 00 00 */	cmpwi r3, 0
/* 8051C974  40 82 00 14 */	bne lbl_8051C988
/* 8051C978  38 60 00 4F */	li r3, 0x4f
/* 8051C97C  38 80 00 40 */	li r4, 0x40
/* 8051C980  4B E8 10 51 */	bl mEv_set_status
/* 8051C984  3B E0 00 01 */	li r31, 1
lbl_8051C988:
/* 8051C988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C98C  7F E3 FB 78 */	mr r3, r31
/* 8051C990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C994  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C998  7C 08 03 A6 */	mtlr r0
/* 8051C99C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C9A0  4E 80 00 20 */	blr 