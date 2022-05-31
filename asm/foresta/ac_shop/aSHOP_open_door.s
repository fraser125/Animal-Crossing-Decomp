lbl_805B9E20:
/* 805B9E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9E24  7C 08 02 A6 */	mflr r0
/* 805B9E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9E2C  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805B9E30  2C 00 00 01 */	cmpwi r0, 1
/* 805B9E34  40 82 00 0C */	bne lbl_805B9E40
/* 805B9E38  38 80 00 01 */	li r4, 1
/* 805B9E3C  48 00 00 91 */	bl aSHOP_setup_action
lbl_805B9E40:
/* 805B9E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9E44  7C 08 03 A6 */	mtlr r0
/* 805B9E48  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9E4C  4E 80 00 20 */	blr 
