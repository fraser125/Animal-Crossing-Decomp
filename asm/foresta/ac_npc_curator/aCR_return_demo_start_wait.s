lbl_8054C4E4:
/* 8054C4E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054C4E8  7C 08 02 A6 */	mflr r0
/* 8054C4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054C4F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054C4F4  7C 9F 23 78 */	mr r31, r4
/* 8054C4F8  38 80 00 01 */	li r4, 1
/* 8054C4FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8054C500  7C 7E 1B 78 */	mr r30, r3
/* 8054C504  38 60 00 04 */	li r3, 4
/* 8054C508  4B E4 BF 75 */	bl mDemo_Get_OrderValue
/* 8054C50C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8054C510  2C 00 00 0A */	cmpwi r0, 0xa
/* 8054C514  40 82 00 2C */	bne lbl_8054C540
/* 8054C518  80 1E 09 A0 */	lwz r0, 0x9a0(r30)
/* 8054C51C  38 A0 00 0D */	li r5, 0xd
/* 8054C520  2C 00 00 0B */	cmpwi r0, 0xb
/* 8054C524  41 82 00 08 */	beq lbl_8054C52C
/* 8054C528  38 A0 00 0E */	li r5, 0xe
lbl_8054C52C:
/* 8054C52C  81 9E 09 A8 */	lwz r12, 0x9a8(r30)
/* 8054C530  7F C3 F3 78 */	mr r3, r30
/* 8054C534  7F E4 FB 78 */	mr r4, r31
/* 8054C538  7D 89 03 A6 */	mtctr r12
/* 8054C53C  4E 80 04 21 */	bctrl 
lbl_8054C540:
/* 8054C540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054C544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054C548  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054C54C  7C 08 03 A6 */	mtlr r0
/* 8054C550  38 21 00 10 */	addi r1, r1, 0x10
/* 8054C554  4E 80 00 20 */	blr 
