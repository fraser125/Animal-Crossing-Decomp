lbl_80531BF0:
/* 80531BF0  A0 03 07 FA */	lhz r0, 0x7fa(r3)
/* 80531BF4  38 A0 00 00 */	li r5, 0
/* 80531BF8  80 83 09 2C */	lwz r4, 0x92c(r3)
/* 80531BFC  28 00 00 00 */	cmplwi r0, 0
/* 80531C00  40 82 00 0C */	bne lbl_80531C0C
/* 80531C04  38 A0 00 01 */	li r5, 1
/* 80531C08  48 00 00 78 */	b lbl_80531C80
lbl_80531C0C:
/* 80531C0C  88 03 07 FD */	lbz r0, 0x7fd(r3)
/* 80531C10  28 00 00 07 */	cmplwi r0, 7
/* 80531C14  40 82 00 5C */	bne lbl_80531C70
/* 80531C18  A8 04 00 00 */	lha r0, 0(r4)
/* 80531C1C  2C 00 00 C3 */	cmpwi r0, 0xc3
/* 80531C20  41 82 00 14 */	beq lbl_80531C34
/* 80531C24  40 80 00 44 */	bge lbl_80531C68
/* 80531C28  2C 00 00 3B */	cmpwi r0, 0x3b
/* 80531C2C  41 82 00 28 */	beq lbl_80531C54
/* 80531C30  48 00 00 38 */	b lbl_80531C68
lbl_80531C34:
/* 80531C34  80 04 01 64 */	lwz r0, 0x164(r4)
/* 80531C38  28 00 00 00 */	cmplwi r0, 0
/* 80531C3C  40 82 00 44 */	bne lbl_80531C80
/* 80531C40  80 04 01 68 */	lwz r0, 0x168(r4)
/* 80531C44  28 00 00 00 */	cmplwi r0, 0
/* 80531C48  40 82 00 38 */	bne lbl_80531C80
/* 80531C4C  38 A0 00 01 */	li r5, 1
/* 80531C50  48 00 00 30 */	b lbl_80531C80
lbl_80531C54:
/* 80531C54  80 04 01 CC */	lwz r0, 0x1cc(r4)
/* 80531C58  2C 00 00 00 */	cmpwi r0, 0
/* 80531C5C  40 82 00 24 */	bne lbl_80531C80
/* 80531C60  38 A0 00 01 */	li r5, 1
/* 80531C64  48 00 00 1C */	b lbl_80531C80
lbl_80531C68:
/* 80531C68  38 A0 00 01 */	li r5, 1
/* 80531C6C  48 00 00 14 */	b lbl_80531C80
lbl_80531C70:
/* 80531C70  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 80531C74  2C 00 00 00 */	cmpwi r0, 0
/* 80531C78  40 82 00 08 */	bne lbl_80531C80
/* 80531C7C  38 A0 00 01 */	li r5, 1
lbl_80531C80:
/* 80531C80  7C A3 2B 78 */	mr r3, r5
/* 80531C84  4E 80 00 20 */	blr 
