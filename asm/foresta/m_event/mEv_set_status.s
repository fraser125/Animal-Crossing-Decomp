lbl_8039D9D0:
/* 8039D9D0  3C A0 81 16 */	lis r5, data_81167688@ha /* 0x81167688@ha */
/* 8039D9D4  38 C5 76 88 */	addi r6, r5, data_81167688@l /* 0x81167688@l */
/* 8039D9D8  38 A6 01 24 */	addi r5, r6, 0x124
/* 8039D9DC  7C 05 18 AE */	lbzx r0, r5, r3
/* 8039D9E0  38 E6 00 24 */	addi r7, r6, 0x24
/* 8039D9E4  28 00 00 FF */	cmplwi r0, 0xff
/* 8039D9E8  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8039D9EC  7C E7 02 14 */	add r7, r7, r0
/* 8039D9F0  4D 82 00 20 */	beqlr 
/* 8039D9F4  7C 80 07 34 */	extsh r0, r4
/* 8039D9F8  2C 00 00 20 */	cmpwi r0, 0x20
/* 8039D9FC  40 82 00 0C */	bne lbl_8039DA08
/* 8039DA00  38 00 00 00 */	li r0, 0
/* 8039DA04  B0 07 00 0C */	sth r0, 0xc(r7)
lbl_8039DA08:
/* 8039DA08  A8 07 00 0C */	lha r0, 0xc(r7)
/* 8039DA0C  7C 83 07 34 */	extsh r3, r4
/* 8039DA10  80 A6 00 04 */	lwz r5, 4(r6)
/* 8039DA14  7C 00 23 78 */	or r0, r0, r4
/* 8039DA18  7C A3 1B 78 */	or r3, r5, r3
/* 8039DA1C  B0 07 00 0C */	sth r0, 0xc(r7)
/* 8039DA20  90 66 00 04 */	stw r3, 4(r6)
/* 8039DA24  4E 80 00 20 */	blr 
