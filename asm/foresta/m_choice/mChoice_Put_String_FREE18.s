lbl_80384094:
/* 80384094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384098  7C 08 02 A6 */	mflr r0
/* 8038409C  38 E0 00 12 */	li r7, 0x12
/* 803840A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803840A4  4B FF FD 0D */	bl mChoice_Put_String_FREE
/* 803840A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803840AC  7C 08 03 A6 */	mtlr r0
/* 803840B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803840B4  4E 80 00 20 */	blr 
