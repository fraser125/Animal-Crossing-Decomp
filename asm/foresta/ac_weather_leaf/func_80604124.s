lbl_80604124:
/* 80604124  A8 03 01 7E */	lha r0, 0x17e(r3)
/* 80604128  2C 00 00 01 */	cmpwi r0, 1
/* 8060412C  40 82 00 18 */	bne lbl_80604144
/* 80604130  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80604134  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80604138  7C 00 00 34 */	cntlzw r0, r0
/* 8060413C  54 03 D9 7E */	srwi r3, r0, 5
/* 80604140  4E 80 00 20 */	blr 
lbl_80604144:
/* 80604144  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80604148  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8060414C  7C 00 00 34 */	cntlzw r0, r0
/* 80604150  54 03 D9 7E */	srwi r3, r0, 5
/* 80604154  4E 80 00 20 */	blr 
