lbl_8058BBE4:
/* 8058BBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BBE8  7C 08 02 A6 */	mflr r0
/* 8058BBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BBF0  7C 60 1B 78 */	mr r0, r3
/* 8058BBF4  38 60 00 07 */	li r3, 7
/* 8058BBF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058BBFC  7C 1F 03 78 */	mr r31, r0
/* 8058BC00  93 C1 00 08 */	stw r30, 8(r1)
/* 8058BC04  7C 9E 23 78 */	mr r30, r4
/* 8058BC08  7C 04 03 78 */	mr r4, r0
/* 8058BC0C  4B E0 E6 59 */	bl mDemo_Check
/* 8058BC10  2C 03 00 01 */	cmpwi r3, 1
/* 8058BC14  41 82 00 44 */	beq lbl_8058BC58
/* 8058BC18  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8058BC1C  28 00 00 FF */	cmplwi r0, 0xff
/* 8058BC20  40 82 00 0C */	bne lbl_8058BC2C
/* 8058BC24  38 00 00 14 */	li r0, 0x14
/* 8058BC28  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_8058BC2C:
/* 8058BC2C  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8058BC30  28 00 00 FF */	cmplwi r0, 0xff
/* 8058BC34  41 82 00 10 */	beq lbl_8058BC44
/* 8058BC38  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 8058BC3C  28 00 00 00 */	cmplwi r0, 0
/* 8058BC40  40 82 00 18 */	bne lbl_8058BC58
lbl_8058BC44:
/* 8058BC44  81 9F 09 94 */	lwz r12, 0x994(r31)
/* 8058BC48  7F E3 FB 78 */	mr r3, r31
/* 8058BC4C  7F C4 F3 78 */	mr r4, r30
/* 8058BC50  7D 89 03 A6 */	mtctr r12
/* 8058BC54  4E 80 04 21 */	bctrl 
lbl_8058BC58:
/* 8058BC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BC5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058BC60  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058BC64  7C 08 03 A6 */	mtlr r0
/* 8058BC68  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BC6C  4E 80 00 20 */	blr 
