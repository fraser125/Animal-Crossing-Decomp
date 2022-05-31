lbl_803AEF74:
/* 803AEF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AEF78  7C 08 02 A6 */	mflr r0
/* 803AEF7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AEF80  4B FF FF 1D */	bl sChk_snowman_save_check
/* 803AEF84  2C 03 00 00 */	cmpwi r3, 0
/* 803AEF88  40 82 00 1C */	bne lbl_803AEFA4
/* 803AEF8C  4B FF FD C5 */	bl func_803AED50
/* 803AEF90  2C 03 00 00 */	cmpwi r3, 0
/* 803AEF94  40 82 00 10 */	bne lbl_803AEFA4
/* 803AEF98  4B FF FE 99 */	bl sChk_weather_save_check
/* 803AEF9C  2C 03 00 00 */	cmpwi r3, 0
/* 803AEFA0  41 82 00 0C */	beq lbl_803AEFAC
lbl_803AEFA4:
/* 803AEFA4  38 60 00 01 */	li r3, 1
/* 803AEFA8  48 00 00 08 */	b lbl_803AEFB0
lbl_803AEFAC:
/* 803AEFAC  38 60 00 00 */	li r3, 0
lbl_803AEFB0:
/* 803AEFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AEFB4  7C 08 03 A6 */	mtlr r0
/* 803AEFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 803AEFBC  4E 80 00 20 */	blr 
