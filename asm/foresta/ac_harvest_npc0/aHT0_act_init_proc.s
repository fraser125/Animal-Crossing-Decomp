lbl_80591650:
/* 80591650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591654  7C 08 02 A6 */	mflr r0
/* 80591658  38 80 00 03 */	li r4, 3
/* 8059165C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591660  4B FF FF 25 */	bl aHT0_setupAction
/* 80591664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591668  7C 08 03 A6 */	mtlr r0
/* 8059166C  38 21 00 10 */	addi r1, r1, 0x10
/* 80591670  4E 80 00 20 */	blr 