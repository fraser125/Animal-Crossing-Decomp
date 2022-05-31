lbl_803EDDB4:
/* 803EDDB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EDDB8  7C 08 02 A6 */	mflr r0
/* 803EDDBC  38 60 00 20 */	li r3, 0x20
/* 803EDDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EDDC4  4B FF E6 31 */	bl mSC_trophy_get
/* 803EDDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EDDCC  7C 08 03 A6 */	mtlr r0
/* 803EDDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803EDDD4  4E 80 00 20 */	blr 
