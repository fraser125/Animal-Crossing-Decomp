lbl_8037EE54:
/* 8037EE54  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8037EE58  80 83 52 F0 */	lwz r4, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8037EE5C  80 04 1B E8 */	lwz r0, 0x1be8(r4)
/* 8037EE60  2C 00 00 03 */	cmpwi r0, 3
/* 8037EE64  40 82 00 24 */	bne lbl_8037EE88
/* 8037EE68  3C 60 80 64 */	lis r3, lit_826@ha /* 0x8064145C@ha */
/* 8037EE6C  C0 24 1C 14 */	lfs f1, 0x1c14(r4)
/* 8037EE70  C0 03 14 5C */	lfs f0, lit_826@l(r3)  /* 0x8064145C@l */
/* 8037EE74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037EE78  4C 41 13 82 */	cror 2, 1, 2
/* 8037EE7C  40 82 00 B0 */	bne lbl_8037EF2C
/* 8037EE80  38 60 00 01 */	li r3, 1
/* 8037EE84  4E 80 00 20 */	blr 
lbl_8037EE88:
/* 8037EE88  2C 00 00 05 */	cmpwi r0, 5
/* 8037EE8C  40 82 00 24 */	bne lbl_8037EEB0
/* 8037EE90  3C 60 80 64 */	lis r3, lit_827@ha /* 0x80641460@ha */
/* 8037EE94  C0 24 1C 04 */	lfs f1, 0x1c04(r4)
/* 8037EE98  C0 03 14 60 */	lfs f0, lit_827@l(r3)  /* 0x80641460@l */
/* 8037EE9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037EEA0  4C 41 13 82 */	cror 2, 1, 2
/* 8037EEA4  40 82 00 88 */	bne lbl_8037EF2C
/* 8037EEA8  38 60 00 01 */	li r3, 1
/* 8037EEAC  4E 80 00 20 */	blr 
lbl_8037EEB0:
/* 8037EEB0  2C 00 00 07 */	cmpwi r0, 7
/* 8037EEB4  40 82 00 18 */	bne lbl_8037EECC
/* 8037EEB8  80 04 1C 04 */	lwz r0, 0x1c04(r4)
/* 8037EEBC  2C 00 00 46 */	cmpwi r0, 0x46
/* 8037EEC0  40 80 00 6C */	bge lbl_8037EF2C
/* 8037EEC4  38 60 00 01 */	li r3, 1
/* 8037EEC8  4E 80 00 20 */	blr 
lbl_8037EECC:
/* 8037EECC  2C 00 00 09 */	cmpwi r0, 9
/* 8037EED0  40 82 00 24 */	bne lbl_8037EEF4
/* 8037EED4  3C 60 80 64 */	lis r3, lit_826@ha /* 0x8064145C@ha */
/* 8037EED8  C0 24 1C 0C */	lfs f1, 0x1c0c(r4)
/* 8037EEDC  C0 03 14 5C */	lfs f0, lit_826@l(r3)  /* 0x8064145C@l */
/* 8037EEE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037EEE4  4C 41 13 82 */	cror 2, 1, 2
/* 8037EEE8  40 82 00 44 */	bne lbl_8037EF2C
/* 8037EEEC  38 60 00 01 */	li r3, 1
/* 8037EEF0  4E 80 00 20 */	blr 
lbl_8037EEF4:
/* 8037EEF4  2C 00 00 08 */	cmpwi r0, 8
/* 8037EEF8  40 82 00 34 */	bne lbl_8037EF2C
/* 8037EEFC  38 84 1C 00 */	addi r4, r4, 0x1c00
/* 8037EF00  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8037EF04  2C 00 00 01 */	cmpwi r0, 1
/* 8037EF08  40 82 00 24 */	bne lbl_8037EF2C
/* 8037EF0C  3C 60 80 64 */	lis r3, lit_827@ha /* 0x80641460@ha */
/* 8037EF10  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 8037EF14  C0 03 14 60 */	lfs f0, lit_827@l(r3)  /* 0x80641460@l */
/* 8037EF18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037EF1C  4C 41 13 82 */	cror 2, 1, 2
/* 8037EF20  40 82 00 0C */	bne lbl_8037EF2C
/* 8037EF24  38 60 00 01 */	li r3, 1
/* 8037EF28  4E 80 00 20 */	blr 
lbl_8037EF2C:
/* 8037EF2C  38 60 00 00 */	li r3, 0
/* 8037EF30  4E 80 00 20 */	blr 
