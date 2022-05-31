lbl_80485A80:
/* 80485A80  80 03 09 34 */	lwz r0, 0x934(r3)
/* 80485A84  1C A4 00 34 */	mulli r5, r4, 0x34
/* 80485A88  38 C0 FF FF */	li r6, -1
/* 80485A8C  2C 00 00 23 */	cmpwi r0, 0x23
/* 80485A90  38 A5 02 14 */	addi r5, r5, 0x214
/* 80485A94  7C A3 2A 14 */	add r5, r3, r5
/* 80485A98  40 80 00 34 */	bge lbl_80485ACC
/* 80485A9C  20 04 00 23 */	subfic r0, r4, 0x23
/* 80485AA0  7C 09 03 A6 */	mtctr r0
/* 80485AA4  2C 04 00 23 */	cmpwi r4, 0x23
/* 80485AA8  40 80 00 24 */	bge lbl_80485ACC
lbl_80485AAC:
/* 80485AAC  80 05 00 08 */	lwz r0, 8(r5)
/* 80485AB0  28 00 00 00 */	cmplwi r0, 0
/* 80485AB4  40 82 00 0C */	bne lbl_80485AC0
/* 80485AB8  7C 86 23 78 */	mr r6, r4
/* 80485ABC  48 00 00 10 */	b lbl_80485ACC
lbl_80485AC0:
/* 80485AC0  38 A5 00 34 */	addi r5, r5, 0x34
/* 80485AC4  38 84 00 01 */	addi r4, r4, 1
/* 80485AC8  42 00 FF E4 */	bdnz lbl_80485AAC
lbl_80485ACC:
/* 80485ACC  7C C3 33 78 */	mr r3, r6
/* 80485AD0  4E 80 00 20 */	blr 
