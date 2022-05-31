lbl_804CEB74:
/* 804CEB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CEB78  7C 08 02 A6 */	mflr r0
/* 804CEB7C  38 A0 00 50 */	li r5, 0x50
/* 804CEB80  38 C0 00 00 */	li r6, 0
/* 804CEB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CEB88  38 E0 00 00 */	li r7, 0
/* 804CEB8C  39 00 00 00 */	li r8, 0
/* 804CEB90  39 20 00 00 */	li r9, 0
/* 804CEB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CEB98  7C 9F 23 78 */	mr r31, r4
/* 804CEB9C  38 80 00 00 */	li r4, 0
/* 804CEBA0  93 C1 00 08 */	stw r30, 8(r1)
/* 804CEBA4  7C 7E 1B 78 */	mr r30, r3
/* 804CEBA8  38 7E 01 78 */	addi r3, r30, 0x178
/* 804CEBAC  90 7F 1C DC */	stw r3, 0x1cdc(r31)
/* 804CEBB0  4B EE CD 4D */	bl Light_diffuse_ct
/* 804CEBB4  7F E3 FB 78 */	mr r3, r31
/* 804CEBB8  38 9F 1D 90 */	addi r4, r31, 0x1d90
/* 804CEBBC  38 BE 01 78 */	addi r5, r30, 0x178
/* 804CEBC0  4B EE D5 BD */	bl Global_light_list_new
/* 804CEBC4  90 7E 01 88 */	stw r3, 0x188(r30)
/* 804CEBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CEBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CEBD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804CEBD4  7C 08 03 A6 */	mtlr r0
/* 804CEBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 804CEBDC  4E 80 00 20 */	blr 
