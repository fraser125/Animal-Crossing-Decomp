lbl_805223BC:
/* 805223BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805223C0  7C 08 02 A6 */	mflr r0
/* 805223C4  3C C0 80 6A */	lis r6, process@ha /* 0x806A0A4C@ha */
/* 805223C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805223CC  54 A0 10 3A */	slwi r0, r5, 2
/* 805223D0  38 C6 0A 4C */	addi r6, r6, process@l /* 0x806A0A4C@l */
/* 805223D4  90 A3 09 94 */	stw r5, 0x994(r3)
/* 805223D8  7C 06 00 2E */	lwzx r0, r6, r0
/* 805223DC  90 03 09 98 */	stw r0, 0x998(r3)
/* 805223E0  4B FF FF A9 */	bl aEMK_init_proc
/* 805223E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805223E8  7C 08 03 A6 */	mtlr r0
/* 805223EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805223F0  4E 80 00 20 */	blr 
