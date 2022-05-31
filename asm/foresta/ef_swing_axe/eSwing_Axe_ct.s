lbl_8061FECC:
/* 8061FECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061FED0  7C 08 02 A6 */	mflr r0
/* 8061FED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061FED8  38 00 00 00 */	li r0, 0
/* 8061FEDC  B0 03 00 00 */	sth r0, 0(r3)
/* 8061FEE0  A8 03 00 08 */	lha r0, 8(r3)
/* 8061FEE4  2C 00 00 03 */	cmpwi r0, 3
/* 8061FEE8  41 82 00 08 */	beq lbl_8061FEF0
/* 8061FEEC  4B FF FC 31 */	bl func_8061FB1C
lbl_8061FEF0:
/* 8061FEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061FEF4  7C 08 03 A6 */	mtlr r0
/* 8061FEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8061FEFC  4E 80 00 20 */	blr 
