lbl_805B35B8:
/* 805B35B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B35BC  7C 08 02 A6 */	mflr r0
/* 805B35C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B35C4  4B FF FE 0D */	bl aNTT_set_string
/* 805B35C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B35CC  7C 08 03 A6 */	mtlr r0
/* 805B35D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B35D4  4E 80 00 20 */	blr 
