lbl_804CEBE0:
/* 804CEBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CEBE4  7C 08 02 A6 */	mflr r0
/* 804CEBE8  7C 65 1B 78 */	mr r5, r3
/* 804CEBEC  38 64 1D 90 */	addi r3, r4, 0x1d90
/* 804CEBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CEBF4  38 00 00 00 */	li r0, 0
/* 804CEBF8  90 04 1C DC */	stw r0, 0x1cdc(r4)
/* 804CEBFC  80 85 01 88 */	lwz r4, 0x188(r5)
/* 804CEC00  4B EE D5 E5 */	bl Global_light_list_delete
/* 804CEC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CEC08  7C 08 03 A6 */	mtlr r0
/* 804CEC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804CEC10  4E 80 00 20 */	blr 
