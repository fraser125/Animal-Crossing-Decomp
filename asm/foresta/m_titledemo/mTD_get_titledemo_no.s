lbl_803F2304:
/* 803F2304  3C 60 80 66 */	lis r3, data_8065E1D8@ha /* 0x8065E1D8@ha */
/* 803F2308  80 03 E1 D8 */	lwz r0, data_8065E1D8@l(r3)  /* 0x8065E1D8@l */
/* 803F230C  2C 00 00 00 */	cmpwi r0, 0
/* 803F2310  7C 03 03 78 */	mr r3, r0
/* 803F2314  41 81 00 08 */	bgt lbl_803F231C
/* 803F2318  38 60 00 01 */	li r3, 1
lbl_803F231C:
/* 803F231C  38 63 FF FF */	addi r3, r3, -1
/* 803F2320  4E 80 00 20 */	blr 
