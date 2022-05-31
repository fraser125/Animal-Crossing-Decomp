lbl_804CE540:
/* 804CE540  3C C0 81 1D */	lis r6, data_811D0840@ha /* 0x811D0840@ha */
/* 804CE544  3C A0 81 1D */	lis r5, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE548  38 E6 08 40 */	addi r7, r6, data_811D0840@l /* 0x811D0840@l */
/* 804CE54C  38 00 00 00 */	li r0, 0
/* 804CE550  88 C7 24 9D */	lbz r6, 0x249d(r7)
/* 804CE554  38 A5 2C EC */	addi r5, r5, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE558  98 C3 00 00 */	stb r6, 0(r3)
/* 804CE55C  88 C7 24 9E */	lbz r6, 0x249e(r7)
/* 804CE560  98 C3 00 01 */	stb r6, 1(r3)
/* 804CE564  88 C7 24 9F */	lbz r6, 0x249f(r7)
/* 804CE568  98 C3 00 02 */	stb r6, 2(r3)
/* 804CE56C  98 03 00 03 */	stb r0, 3(r3)
/* 804CE570  80 05 00 14 */	lwz r0, 0x14(r5)
/* 804CE574  90 04 00 00 */	stw r0, 0(r4)
/* 804CE578  80 65 00 10 */	lwz r3, 0x10(r5)
/* 804CE57C  4E 80 00 20 */	blr 
