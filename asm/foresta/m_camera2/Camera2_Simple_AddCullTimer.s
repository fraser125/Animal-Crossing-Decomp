lbl_80381DE8:
/* 80381DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80381DEC  7C 08 02 A6 */	mflr r0
/* 80381DF0  3C 80 80 64 */	lis r4, lit_827@ha /* 0x80641460@ha */
/* 80381DF4  38 63 1C 20 */	addi r3, r3, 0x1c20
/* 80381DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80381DFC  C0 24 14 60 */	lfs f1, lit_827@l(r4)  /* 0x80641460@l */
/* 80381E00  4B FF D3 85 */	bl Camera2_AddCullTimer
/* 80381E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80381E08  7C 08 03 A6 */	mtlr r0
/* 80381E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80381E10  4E 80 00 20 */	blr 
