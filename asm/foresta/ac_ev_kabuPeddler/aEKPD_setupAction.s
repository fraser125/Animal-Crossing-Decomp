lbl_80521A8C:
/* 80521A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521A90  7C 08 02 A6 */	mflr r0
/* 80521A94  3C C0 80 6A */	lis r6, process@ha /* 0x806A09B4@ha */
/* 80521A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521A9C  54 A0 10 3A */	slwi r0, r5, 2
/* 80521AA0  38 C6 09 B4 */	addi r6, r6, process@l /* 0x806A09B4@l */
/* 80521AA4  90 A3 09 98 */	stw r5, 0x998(r3)
/* 80521AA8  7C 06 00 2E */	lwzx r0, r6, r0
/* 80521AAC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80521AB0  4B FF FF A9 */	bl aEKPD_init_proc
/* 80521AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521AB8  7C 08 03 A6 */	mtlr r0
/* 80521ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80521AC0  4E 80 00 20 */	blr 
