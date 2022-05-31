lbl_80603A5C:
/* 80603A5C  A8 03 01 7E */	lha r0, 0x17e(r3)
/* 80603A60  2C 00 00 01 */	cmpwi r0, 1
/* 80603A64  40 82 00 18 */	bne lbl_80603A7C
/* 80603A68  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80603A6C  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 80603A70  7C 00 00 34 */	cntlzw r0, r0
/* 80603A74  54 03 D9 7E */	srwi r3, r0, 5
/* 80603A78  4E 80 00 20 */	blr 
lbl_80603A7C:
/* 80603A7C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80603A80  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80603A84  7C 00 00 34 */	cntlzw r0, r0
/* 80603A88  54 03 D9 7E */	srwi r3, r0, 5
/* 80603A8C  4E 80 00 20 */	blr 
