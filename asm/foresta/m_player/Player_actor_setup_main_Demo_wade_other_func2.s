lbl_804DFDA4:
/* 804DFDA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DFDA8  7C 08 02 A6 */	mflr r0
/* 804DFDAC  7C 87 23 78 */	mr r7, r4
/* 804DFDB0  38 A0 00 01 */	li r5, 1
/* 804DFDB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DFDB8  38 81 00 08 */	addi r4, r1, 8
/* 804DFDBC  80 C3 0D 28 */	lwz r6, 0xd28(r3)
/* 804DFDC0  80 03 0D 2C */	lwz r0, 0xd2c(r3)
/* 804DFDC4  90 C1 00 08 */	stw r6, 8(r1)
/* 804DFDC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DFDCC  80 03 0D 30 */	lwz r0, 0xd30(r3)
/* 804DFDD0  7C E3 3B 78 */	mr r3, r7
/* 804DFDD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DFDD8  4B EC 81 05 */	bl mFI_SetBearActor
/* 804DFDDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DFDE0  38 00 00 00 */	li r0, 0
/* 804DFDE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DFDE8  3C 63 00 02 */	addis r3, r3, 2
/* 804DFDEC  98 03 65 20 */	stb r0, 0x6520(r3)
/* 804DFDF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DFDF4  7C 08 03 A6 */	mtlr r0
/* 804DFDF8  38 21 00 20 */	addi r1, r1, 0x20
/* 804DFDFC  4E 80 00 20 */	blr 
