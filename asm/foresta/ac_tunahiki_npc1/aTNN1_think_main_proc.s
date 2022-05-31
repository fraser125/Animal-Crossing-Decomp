lbl_8058FA30:
/* 8058FA30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FA34  7C 08 02 A6 */	mflr r0
/* 8058FA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FA3C  7C 60 1B 78 */	mr r0, r3
/* 8058FA40  38 60 00 07 */	li r3, 7
/* 8058FA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058FA48  7C 1F 03 78 */	mr r31, r0
/* 8058FA4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8058FA50  7C 9E 23 78 */	mr r30, r4
/* 8058FA54  7C 04 03 78 */	mr r4, r0
/* 8058FA58  4B E0 A8 0D */	bl mDemo_Check
/* 8058FA5C  2C 03 00 01 */	cmpwi r3, 1
/* 8058FA60  41 82 00 2C */	beq lbl_8058FA8C
/* 8058FA64  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8058FA68  28 00 00 FF */	cmplwi r0, 0xff
/* 8058FA6C  40 82 00 0C */	bne lbl_8058FA78
/* 8058FA70  38 00 00 14 */	li r0, 0x14
/* 8058FA74  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_8058FA78:
/* 8058FA78  81 9F 09 94 */	lwz r12, 0x994(r31)
/* 8058FA7C  7F E3 FB 78 */	mr r3, r31
/* 8058FA80  7F C4 F3 78 */	mr r4, r30
/* 8058FA84  7D 89 03 A6 */	mtctr r12
/* 8058FA88  4E 80 04 21 */	bctrl 
lbl_8058FA8C:
/* 8058FA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058FA94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058FA98  7C 08 03 A6 */	mtlr r0
/* 8058FA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FAA0  4E 80 00 20 */	blr 
