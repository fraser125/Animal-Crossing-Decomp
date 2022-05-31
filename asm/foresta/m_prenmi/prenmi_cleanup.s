lbl_8062DAC8:
/* 8062DAC8  3C 60 81 1C */	lis r3, SoftResetEnable@ha /* 0x811C5324@ha */
/* 8062DACC  38 00 00 01 */	li r0, 1
/* 8062DAD0  98 03 53 24 */	stb r0, SoftResetEnable@l(r3)  /* 0x811C5324@l */
/* 8062DAD4  4E 80 00 20 */	blr 
