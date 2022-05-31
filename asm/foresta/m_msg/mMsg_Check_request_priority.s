lbl_803BF6B4:
/* 803BF6B4  80 03 04 30 */	lwz r0, 0x430(r3)
/* 803BF6B8  7C 80 02 78 */	xor r0, r4, r0
/* 803BF6BC  7C 03 0E 70 */	srawi r3, r0, 1
/* 803BF6C0  7C 00 20 38 */	and r0, r0, r4
/* 803BF6C4  7C 00 18 50 */	subf r0, r0, r3
/* 803BF6C8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803BF6CC  4E 80 00 20 */	blr 
