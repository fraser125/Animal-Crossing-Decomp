lbl_80471D9C:
/* 80471D9C  38 00 00 01 */	li r0, 1
/* 80471DA0  38 A0 00 00 */	li r5, 0
/* 80471DA4  98 03 04 6C */	stb r0, 0x46c(r3)
/* 80471DA8  38 00 FF FF */	li r0, -1
/* 80471DAC  B0 A3 04 6E */	sth r5, 0x46e(r3)
/* 80471DB0  90 03 04 64 */	stw r0, 0x464(r3)
/* 80471DB4  90 83 04 70 */	stw r4, 0x470(r3)
/* 80471DB8  4E 80 00 20 */	blr 
