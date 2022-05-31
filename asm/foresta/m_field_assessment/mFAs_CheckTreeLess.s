lbl_803A18C0:
/* 803A18C0  3C A0 80 65 */	lis r5, data_806534A0@ha /* 0x806534A0@ha */
/* 803A18C4  54 64 0F FE */	srwi r4, r3, 0x1f
/* 803A18C8  88 05 34 A0 */	lbz r0, data_806534A0@l(r5)  /* 0x806534A0@l */
/* 803A18CC  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 803A18D0  7C 03 00 10 */	subfc r0, r3, r0
/* 803A18D4  7C 65 21 14 */	adde r3, r5, r4
/* 803A18D8  4E 80 00 20 */	blr 
