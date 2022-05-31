lbl_803E7790:
/* 803E7790  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803E7794  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E7798  2C 00 00 01 */	cmpwi r0, 1
/* 803E779C  41 82 00 0C */	beq lbl_803E77A8
/* 803E77A0  2C 00 00 03 */	cmpwi r0, 3
/* 803E77A4  40 82 00 28 */	bne lbl_803E77CC
lbl_803E77A8:
/* 803E77A8  2C 00 00 01 */	cmpwi r0, 1
/* 803E77AC  40 82 00 10 */	bne lbl_803E77BC
/* 803E77B0  38 03 F0 00 */	addi r0, r3, -4096
/* 803E77B4  7C 03 16 70 */	srawi r3, r0, 2
/* 803E77B8  4E 80 00 20 */	blr 
lbl_803E77BC:
/* 803E77BC  38 03 D0 00 */	addi r0, r3, -12288
/* 803E77C0  7C 03 16 70 */	srawi r3, r0, 2
/* 803E77C4  38 63 04 00 */	addi r3, r3, 0x400
/* 803E77C8  4E 80 00 20 */	blr 
lbl_803E77CC:
/* 803E77CC  38 60 00 00 */	li r3, 0
/* 803E77D0  4E 80 00 20 */	blr 
