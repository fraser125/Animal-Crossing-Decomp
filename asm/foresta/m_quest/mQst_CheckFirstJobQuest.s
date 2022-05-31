lbl_803E3C28:
/* 803E3C28  28 03 00 00 */	cmplwi r3, 0
/* 803E3C2C  41 82 00 34 */	beq lbl_803E3C60
/* 803E3C30  88 03 00 00 */	lbz r0, 0(r3)
/* 803E3C34  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 803E3C38  28 00 00 01 */	cmplwi r0, 1
/* 803E3C3C  40 82 00 24 */	bne lbl_803E3C60
/* 803E3C40  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 803E3C44  54 00 E8 06 */	rlwinm r0, r0, 0x1d, 0, 3
/* 803E3C48  7C 00 EE 70 */	srawi r0, r0, 0x1d
/* 803E3C4C  7C 00 07 74 */	extsb r0, r0
/* 803E3C50  2C 00 00 02 */	cmpwi r0, 2
/* 803E3C54  40 82 00 0C */	bne lbl_803E3C60
/* 803E3C58  38 60 00 01 */	li r3, 1
/* 803E3C5C  4E 80 00 20 */	blr 
lbl_803E3C60:
/* 803E3C60  38 60 00 00 */	li r3, 0
/* 803E3C64  4E 80 00 20 */	blr 
