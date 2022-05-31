lbl_804DA890:
/* 804DA890  80 03 0D 00 */	lwz r0, 0xd00(r3)
/* 804DA894  2C 00 00 00 */	cmpwi r0, 0
/* 804DA898  41 82 00 44 */	beq lbl_804DA8DC
/* 804DA89C  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DA8A0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 804DA8A4  40 80 00 38 */	bge lbl_804DA8DC
/* 804DA8A8  2C 00 00 2D */	cmpwi r0, 0x2d
/* 804DA8AC  40 80 00 08 */	bge lbl_804DA8B4
/* 804DA8B0  48 00 00 2C */	b lbl_804DA8DC
lbl_804DA8B4:
/* 804DA8B4  28 04 00 00 */	cmplwi r4, 0
/* 804DA8B8  41 82 00 1C */	beq lbl_804DA8D4
/* 804DA8BC  80 A3 0E 38 */	lwz r5, 0xe38(r3)
/* 804DA8C0  80 03 0E 3C */	lwz r0, 0xe3c(r3)
/* 804DA8C4  90 A4 00 00 */	stw r5, 0(r4)
/* 804DA8C8  90 04 00 04 */	stw r0, 4(r4)
/* 804DA8CC  80 03 0E 40 */	lwz r0, 0xe40(r3)
/* 804DA8D0  90 04 00 08 */	stw r0, 8(r4)
lbl_804DA8D4:
/* 804DA8D4  38 60 00 01 */	li r3, 1
/* 804DA8D8  4E 80 00 20 */	blr 
lbl_804DA8DC:
/* 804DA8DC  38 60 00 00 */	li r3, 0
/* 804DA8E0  4E 80 00 20 */	blr 
