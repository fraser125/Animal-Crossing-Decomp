lbl_803A2B5C:
/* 803A2B5C  3C E0 80 65 */	lis r7, l_mfm_police_pos@ha /* 0x80653790@ha */
/* 803A2B60  94 67 37 90 */	stwu r3, l_mfm_police_pos@l(r7)  /* 0x80653790@l */
/* 803A2B64  90 87 00 04 */	stw r4, 4(r7)
/* 803A2B68  90 A7 00 08 */	stw r5, 8(r7)
/* 803A2B6C  90 C7 00 0C */	stw r6, 0xc(r7)
/* 803A2B70  4E 80 00 20 */	blr 
