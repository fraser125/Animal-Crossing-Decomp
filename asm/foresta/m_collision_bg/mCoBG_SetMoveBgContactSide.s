lbl_8038D054:
/* 8038D054  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8038D058  28 06 00 00 */	cmplwi r6, 0
/* 8038D05C  4D 82 00 20 */	beqlr 
/* 8038D060  80 06 00 14 */	lwz r0, 0x14(r6)
/* 8038D064  2C 00 00 05 */	cmpwi r0, 5
/* 8038D068  4C 80 00 20 */	bgelr 
/* 8038D06C  A8 64 00 00 */	lha r3, 0(r4)
/* 8038D070  54 00 10 3A */	slwi r0, r0, 2
/* 8038D074  7C 66 03 2E */	sthx r3, r6, r0
/* 8038D078  80 06 00 14 */	lwz r0, 0x14(r6)
/* 8038D07C  54 00 10 3A */	slwi r0, r0, 2
/* 8038D080  7C 66 02 14 */	add r3, r6, r0
/* 8038D084  B0 A3 00 02 */	sth r5, 2(r3)
/* 8038D088  80 66 00 14 */	lwz r3, 0x14(r6)
/* 8038D08C  38 03 00 01 */	addi r0, r3, 1
/* 8038D090  90 06 00 14 */	stw r0, 0x14(r6)
/* 8038D094  4E 80 00 20 */	blr 