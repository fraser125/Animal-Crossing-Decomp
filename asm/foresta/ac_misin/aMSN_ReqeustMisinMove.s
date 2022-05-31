lbl_8042E018:
/* 8042E018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042E01C  7C 08 02 A6 */	mflr r0
/* 8042E020  38 60 00 01 */	li r3, 1
/* 8042E024  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042E028  4B FF FF A9 */	bl aMSN_SetMisinStatus
/* 8042E02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042E030  7C 08 03 A6 */	mtlr r0
/* 8042E034  38 21 00 10 */	addi r1, r1, 0x10
/* 8042E038  4E 80 00 20 */	blr 
