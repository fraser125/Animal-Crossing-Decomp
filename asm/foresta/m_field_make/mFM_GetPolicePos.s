lbl_803A2B74:
/* 803A2B74  3C E0 80 65 */	lis r7, l_mfm_police_pos@ha /* 0x80653790@ha */
/* 803A2B78  84 07 37 90 */	lwzu r0, l_mfm_police_pos@l(r7)  /* 0x80653790@l */
/* 803A2B7C  90 03 00 00 */	stw r0, 0(r3)
/* 803A2B80  80 07 00 04 */	lwz r0, 4(r7)
/* 803A2B84  90 04 00 00 */	stw r0, 0(r4)
/* 803A2B88  80 07 00 08 */	lwz r0, 8(r7)
/* 803A2B8C  90 05 00 00 */	stw r0, 0(r5)
/* 803A2B90  80 07 00 0C */	lwz r0, 0xc(r7)
/* 803A2B94  90 06 00 00 */	stw r0, 0(r6)
/* 803A2B98  4E 80 00 20 */	blr 
