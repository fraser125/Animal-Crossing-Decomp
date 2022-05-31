lbl_805EF86C:
/* 805EF86C  3C A0 80 65 */	lis r5, data_8064B814@ha /* 0x8064B814@ha */
/* 805EF870  38 80 00 14 */	li r4, 0x14
/* 805EF874  C0 05 B8 14 */	lfs f0, data_8064B814@l(r5)  /* 0x8064B814@l */
/* 805EF878  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 805EF87C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805EF880  2C 00 00 0F */	cmpwi r0, 0xf
/* 805EF884  40 82 00 08 */	bne lbl_805EF88C
/* 805EF888  38 80 00 10 */	li r4, 0x10
lbl_805EF88C:
/* 805EF88C  7C 83 23 78 */	mr r3, r4
/* 805EF890  4E 80 00 20 */	blr 
