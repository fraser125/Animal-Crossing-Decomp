lbl_805DFD60:
/* 805DFD60  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DFD64  38 00 00 78 */	li r0, 0x78
/* 805DFD68  80 C3 09 9C */	lwz r6, 0x99c(r3)
/* 805DFD6C  90 A6 00 04 */	stw r5, 4(r6)
/* 805DFD70  80 64 00 38 */	lwz r3, 0x38(r4)
/* 805DFD74  90 66 00 08 */	stw r3, 8(r6)
/* 805DFD78  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 805DFD7C  90 66 00 0C */	stw r3, 0xc(r6)
/* 805DFD80  90 06 00 10 */	stw r0, 0x10(r6)
/* 805DFD84  4E 80 00 20 */	blr 
