lbl_8056CCFC:
/* 8056CCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CD00  7C 08 02 A6 */	mflr r0
/* 8056CD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CD08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056CD0C  7C 9F 23 78 */	mr r31, r4
/* 8056CD10  93 C1 00 08 */	stw r30, 8(r1)
/* 8056CD14  7C 7E 1B 78 */	mr r30, r3
/* 8056CD18  4B E5 29 91 */	bl func_803BF6A8
/* 8056CD1C  4B E5 2A 25 */	bl mMsg_Check_main_wait
/* 8056CD20  2C 03 00 01 */	cmpwi r3, 1
/* 8056CD24  40 82 00 20 */	bne lbl_8056CD44
/* 8056CD28  80 BE 09 94 */	lwz r5, 0x994(r30)
/* 8056CD2C  7F C3 F3 78 */	mr r3, r30
/* 8056CD30  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056CD34  7F E4 FB 78 */	mr r4, r31
/* 8056CD38  38 A5 00 01 */	addi r5, r5, 1
/* 8056CD3C  7D 89 03 A6 */	mtctr r12
/* 8056CD40  4E 80 04 21 */	bctrl 
lbl_8056CD44:
/* 8056CD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056CD4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056CD50  7C 08 03 A6 */	mtlr r0
/* 8056CD54  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CD58  4E 80 00 20 */	blr 
