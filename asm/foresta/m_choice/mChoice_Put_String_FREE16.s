lbl_8038404C:
/* 8038404C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384050  7C 08 02 A6 */	mflr r0
/* 80384054  38 E0 00 10 */	li r7, 0x10
/* 80384058  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038405C  4B FF FD 55 */	bl mChoice_Put_String_FREE
/* 80384060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384064  7C 08 03 A6 */	mtlr r0
/* 80384068  38 21 00 10 */	addi r1, r1, 0x10
/* 8038406C  4E 80 00 20 */	blr 
