lbl_8042DE04:
/* 8042DE04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042DE08  7C 08 02 A6 */	mflr r0
/* 8042DE0C  38 60 00 01 */	li r3, 1
/* 8042DE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042DE14  4B FF FF CD */	bl func_8042DDE0
/* 8042DE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042DE1C  7C 08 03 A6 */	mtlr r0
/* 8042DE20  38 21 00 10 */	addi r1, r1, 0x10
/* 8042DE24  4E 80 00 20 */	blr 
