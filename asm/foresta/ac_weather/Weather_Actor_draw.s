lbl_8060263C:
/* 8060263C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80602640  7C 08 02 A6 */	mflr r0
/* 80602644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80602648  4B FF FF 41 */	bl aWeather_DrawWeatherPrv
/* 8060264C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80602650  7C 08 03 A6 */	mtlr r0
/* 80602654  38 21 00 10 */	addi r1, r1, 0x10
/* 80602658  4E 80 00 20 */	blr 
