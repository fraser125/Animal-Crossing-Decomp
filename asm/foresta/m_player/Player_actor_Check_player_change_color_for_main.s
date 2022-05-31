lbl_804DEA78:
/* 804DEA78  80 03 12 4C */	lwz r0, 0x124c(r3)
/* 804DEA7C  2C 00 00 00 */	cmpwi r0, 0
/* 804DEA80  41 82 00 6C */	beq lbl_804DEAEC
/* 804DEA84  38 00 00 00 */	li r0, 0
/* 804DEA88  90 03 12 4C */	stw r0, 0x124c(r3)
/* 804DEA8C  80 03 12 50 */	lwz r0, 0x1250(r3)
/* 804DEA90  2C 00 00 00 */	cmpwi r0, 0
/* 804DEA94  41 82 00 40 */	beq lbl_804DEAD4
/* 804DEA98  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804DEA9C  3C 80 80 64 */	lis r4, lit_5148@ha /* 0x80647CDC@ha */
/* 804DEAA0  C0 43 12 54 */	lfs f2, 0x1254(r3)
/* 804DEAA4  C0 25 65 64 */	lfs f1, lit_603@l(r5)  /* 0x80646564@l */
/* 804DEAA8  C0 04 7C DC */	lfs f0, lit_5148@l(r4)  /* 0x80647CDC@l */
/* 804DEAAC  EC 22 08 2A */	fadds f1, f2, f1
/* 804DEAB0  D0 23 12 54 */	stfs f1, 0x1254(r3)
/* 804DEAB4  C0 23 12 54 */	lfs f1, 0x1254(r3)
/* 804DEAB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DEABC  4C 41 13 82 */	cror 2, 1, 2
/* 804DEAC0  4C 82 00 20 */	bnelr 
/* 804DEAC4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804DEAC8  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804DEACC  D0 03 12 54 */	stfs f0, 0x1254(r3)
/* 804DEAD0  4E 80 00 20 */	blr 
lbl_804DEAD4:
/* 804DEAD4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804DEAD8  38 00 00 01 */	li r0, 1
/* 804DEADC  90 03 12 50 */	stw r0, 0x1250(r3)
/* 804DEAE0  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804DEAE4  D0 03 12 54 */	stfs f0, 0x1254(r3)
/* 804DEAE8  4E 80 00 20 */	blr 
lbl_804DEAEC:
/* 804DEAEC  80 03 12 50 */	lwz r0, 0x1250(r3)
/* 804DEAF0  2C 00 00 00 */	cmpwi r0, 0
/* 804DEAF4  4D 82 00 20 */	beqlr 
/* 804DEAF8  38 00 00 00 */	li r0, 0
/* 804DEAFC  90 03 12 50 */	stw r0, 0x1250(r3)
/* 804DEB00  4E 80 00 20 */	blr 
