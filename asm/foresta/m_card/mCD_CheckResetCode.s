lbl_803FCC34:
/* 803FCC34  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 803FCC38  38 80 00 01 */	li r4, 1
/* 803FCC3C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 803FCC40  41 82 00 0C */	beq lbl_803FCC4C
/* 803FCC44  38 00 00 00 */	li r0, 0
/* 803FCC48  90 03 10 F4 */	stw r0, 0x10f4(r3)
lbl_803FCC4C:
/* 803FCC4C  80 03 10 F4 */	lwz r0, 0x10f4(r3)
/* 803FCC50  28 00 00 00 */	cmplwi r0, 0
/* 803FCC54  41 82 00 08 */	beq lbl_803FCC5C
/* 803FCC58  38 80 00 00 */	li r4, 0
lbl_803FCC5C:
/* 803FCC5C  7C 83 23 78 */	mr r3, r4
/* 803FCC60  4E 80 00 20 */	blr 
