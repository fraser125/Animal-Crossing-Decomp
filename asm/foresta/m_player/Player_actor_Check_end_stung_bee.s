lbl_804DCB74:
/* 804DCB74  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DCB78  2C 00 00 60 */	cmpwi r0, 0x60
/* 804DCB7C  40 82 00 24 */	bne lbl_804DCBA0
/* 804DCB80  3C 80 80 64 */	lis r4, lit_4422@ha /* 0x80647B14@ha */
/* 804DCB84  C0 23 0D 18 */	lfs f1, 0xd18(r3)
/* 804DCB88  C0 04 7B 14 */	lfs f0, lit_4422@l(r4)  /* 0x80647B14@l */
/* 804DCB8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DCB90  4C 40 13 82 */	cror 2, 0, 2
/* 804DCB94  40 82 00 0C */	bne lbl_804DCBA0
/* 804DCB98  38 60 00 00 */	li r3, 0
/* 804DCB9C  4E 80 00 20 */	blr 
lbl_804DCBA0:
/* 804DCBA0  38 60 00 01 */	li r3, 1
/* 804DCBA4  4E 80 00 20 */	blr 
