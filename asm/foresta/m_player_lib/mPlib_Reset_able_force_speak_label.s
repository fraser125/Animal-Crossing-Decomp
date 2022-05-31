lbl_803DA018:
/* 803DA018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA01C  7C 08 02 A6 */	mflr r0
/* 803DA020  38 60 00 00 */	li r3, 0
/* 803DA024  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA028  4B FF FF 9D */	bl mPlib_Set_able_force_speak_label
/* 803DA02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA030  7C 08 03 A6 */	mtlr r0
/* 803DA034  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA038  4E 80 00 20 */	blr 
