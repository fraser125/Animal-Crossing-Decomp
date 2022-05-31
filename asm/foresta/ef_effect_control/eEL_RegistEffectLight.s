lbl_804CE8FC:
/* 804CE8FC  3D 00 81 1D */	lis r8, data_811D0840@ha /* 0x811D0840@ha */
/* 804CE900  3C E0 81 1D */	lis r7, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE904  39 68 08 40 */	addi r11, r8, data_811D0840@l /* 0x811D0840@l */
/* 804CE908  80 03 00 00 */	lwz r0, 0(r3)
/* 804CE90C  89 4B 24 9D */	lbz r10, 0x249d(r11)
/* 804CE910  39 27 2C EC */	addi r9, r7, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE914  89 0B 24 9E */	lbz r8, 0x249e(r11)
/* 804CE918  38 60 00 00 */	li r3, 0
/* 804CE91C  88 EB 24 9F */	lbz r7, 0x249f(r11)
/* 804CE920  99 49 00 02 */	stb r10, 2(r9)
/* 804CE924  99 09 00 03 */	stb r8, 3(r9)
/* 804CE928  98 E9 00 04 */	stb r7, 4(r9)
/* 804CE92C  B0 69 00 00 */	sth r3, 0(r9)
/* 804CE930  90 09 00 06 */	stw r0, 6(r9)
/* 804CE934  B0 89 00 0A */	sth r4, 0xa(r9)
/* 804CE938  B0 A9 00 0C */	sth r5, 0xc(r9)
/* 804CE93C  90 C9 00 14 */	stw r6, 0x14(r9)
/* 804CE940  4E 80 00 20 */	blr 
