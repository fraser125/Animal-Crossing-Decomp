lbl_803D2464:
/* 803D2464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D2468  7C 08 02 A6 */	mflr r0
/* 803D246C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D2470  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2474  4B CC 8A 5D */	bl func_8009AED0
/* 803D2478  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D247C  3B C0 00 00 */	li r30, 0
/* 803D2480  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2484  3B A0 00 00 */	li r29, 0
/* 803D2488  3F E3 00 01 */	addis r31, r3, 1
/* 803D248C  3B 80 00 00 */	li r28, 0
/* 803D2490  3B FF 74 38 */	addi r31, r31, 0x7438
lbl_803D2494:
/* 803D2494  7F E3 FB 78 */	mr r3, r31
/* 803D2498  4B FF A1 25 */	bl mNpc_CheckFreeAnimalInfo
/* 803D249C  2C 03 00 00 */	cmpwi r3, 0
/* 803D24A0  40 82 00 30 */	bne lbl_803D24D0
/* 803D24A4  7F E3 FB 78 */	mr r3, r31
/* 803D24A8  4B FF FA FD */	bl mNpc_GetAnimalSex
/* 803D24AC  2C 03 00 01 */	cmpwi r3, 1
/* 803D24B0  41 82 00 1C */	beq lbl_803D24CC
/* 803D24B4  40 80 00 1C */	bge lbl_803D24D0
/* 803D24B8  2C 03 00 00 */	cmpwi r3, 0
/* 803D24BC  40 80 00 08 */	bge lbl_803D24C4
/* 803D24C0  48 00 00 10 */	b lbl_803D24D0
lbl_803D24C4:
/* 803D24C4  3B DE 00 01 */	addi r30, r30, 1
/* 803D24C8  48 00 00 08 */	b lbl_803D24D0
lbl_803D24CC:
/* 803D24CC  3B BD 00 01 */	addi r29, r29, 1
lbl_803D24D0:
/* 803D24D0  3B 9C 00 01 */	addi r28, r28, 1
/* 803D24D4  3B FF 09 88 */	addi r31, r31, 0x988
/* 803D24D8  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803D24DC  41 80 FF B8 */	blt lbl_803D2494
/* 803D24E0  7F A4 FE 70 */	srawi r4, r29, 0x1f
/* 803D24E4  57 C3 0F FE */	srwi r3, r30, 0x1f
/* 803D24E8  7C 1E E8 10 */	subfc r0, r30, r29
/* 803D24EC  7C 64 19 14 */	adde r3, r4, r3
/* 803D24F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D24F4  4B CC 8A 29 */	bl func_8009AF1C
/* 803D24F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D24FC  7C 08 03 A6 */	mtlr r0
/* 803D2500  38 21 00 20 */	addi r1, r1, 0x20
/* 803D2504  4E 80 00 20 */	blr 
