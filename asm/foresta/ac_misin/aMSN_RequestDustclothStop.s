lbl_8042DE28:
/* 8042DE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042DE2C  7C 08 02 A6 */	mflr r0
/* 8042DE30  38 60 00 00 */	li r3, 0
/* 8042DE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042DE38  4B FF FF A9 */	bl func_8042DDE0
/* 8042DE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042DE40  7C 08 03 A6 */	mtlr r0
/* 8042DE44  38 21 00 10 */	addi r1, r1, 0x10
/* 8042DE48  4E 80 00 20 */	blr 
