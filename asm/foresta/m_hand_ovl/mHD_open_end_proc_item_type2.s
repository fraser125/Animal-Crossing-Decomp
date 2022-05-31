lbl_805DE31C:
/* 805DE31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE320  7C 08 02 A6 */	mflr r0
/* 805DE324  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE328  4B FF FD 15 */	bl mHD_open_sack
/* 805DE32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE330  7C 08 03 A6 */	mtlr r0
/* 805DE334  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE338  4E 80 00 20 */	blr 
