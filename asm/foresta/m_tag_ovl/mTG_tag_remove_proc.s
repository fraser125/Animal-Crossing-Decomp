lbl_805F81B8:
/* 805F81B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F81BC  7C 08 02 A6 */	mflr r0
/* 805F81C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F81C4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F81C8  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805F81CC  80 05 00 40 */	lwz r0, 0x40(r5)
/* 805F81D0  2C 00 00 03 */	cmpwi r0, 3
/* 805F81D4  40 82 00 08 */	bne lbl_805F81DC
/* 805F81D8  4B FF DC D5 */	bl mTG_catch_proc
lbl_805F81DC:
/* 805F81DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F81E0  7C 08 03 A6 */	mtlr r0
/* 805F81E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805F81E8  4E 80 00 20 */	blr 
