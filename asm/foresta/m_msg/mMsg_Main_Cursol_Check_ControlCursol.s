lbl_803C2E68:
/* 803C2E68  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803C2E6C  7C 60 22 14 */	add r3, r0, r4
/* 803C2E70  88 03 00 20 */	lbz r0, 0x20(r3)
/* 803C2E74  20 00 00 7F */	subfic r0, r0, 0x7f
/* 803C2E78  7C 00 00 34 */	cntlzw r0, r0
/* 803C2E7C  54 03 D9 7E */	srwi r3, r0, 5
/* 803C2E80  4E 80 00 20 */	blr 
