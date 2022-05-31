lbl_80589CAC:
/* 80589CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589CB0  7C 08 02 A6 */	mflr r0
/* 80589CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589CB8  7C 60 1B 78 */	mr r0, r3
/* 80589CBC  38 60 00 07 */	li r3, 7
/* 80589CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80589CC4  7C 1F 03 78 */	mr r31, r0
/* 80589CC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80589CCC  7C 9E 23 78 */	mr r30, r4
/* 80589CD0  7C 04 03 78 */	mr r4, r0
/* 80589CD4  4B E1 05 91 */	bl mDemo_Check
/* 80589CD8  2C 03 00 01 */	cmpwi r3, 1
/* 80589CDC  41 82 00 2C */	beq lbl_80589D08
/* 80589CE0  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80589CE4  28 00 00 FF */	cmplwi r0, 0xff
/* 80589CE8  40 82 00 0C */	bne lbl_80589CF4
/* 80589CEC  38 00 00 17 */	li r0, 0x17
/* 80589CF0  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_80589CF4:
/* 80589CF4  81 9F 09 94 */	lwz r12, 0x994(r31)
/* 80589CF8  7F E3 FB 78 */	mr r3, r31
/* 80589CFC  7F C4 F3 78 */	mr r4, r30
/* 80589D00  7D 89 03 A6 */	mtctr r12
/* 80589D04  4E 80 04 21 */	bctrl 
lbl_80589D08:
/* 80589D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80589D10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80589D14  7C 08 03 A6 */	mtlr r0
/* 80589D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80589D1C  4E 80 00 20 */	blr 
