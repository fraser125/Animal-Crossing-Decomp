lbl_80384070:
/* 80384070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384074  7C 08 02 A6 */	mflr r0
/* 80384078  38 E0 00 11 */	li r7, 0x11
/* 8038407C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384080  4B FF FD 31 */	bl mChoice_Put_String_FREE
/* 80384084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384088  7C 08 03 A6 */	mtlr r0
/* 8038408C  38 21 00 10 */	addi r1, r1, 0x10
/* 80384090  4E 80 00 20 */	blr 
