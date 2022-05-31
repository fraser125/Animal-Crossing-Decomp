lbl_803CFD6C:
/* 803CFD6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CFD70  7C 08 02 A6 */	mflr r0
/* 803CFD74  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CFD78  39 61 00 20 */	addi r11, r1, 0x20
/* 803CFD7C  4B CC B1 51 */	bl func_8009AECC
/* 803CFD80  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803CFD84  7C 7B 1B 78 */	mr r27, r3
/* 803CFD88  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 803CFD8C  7C 9C 23 78 */	mr r28, r4
/* 803CFD90  3C 63 00 02 */	addis r3, r3, 2
/* 803CFD94  7C BD 2B 78 */	mr r29, r5
/* 803CFD98  A0 63 65 1C */	lhz r3, 0x651c(r3)
/* 803CFD9C  7C DE 33 78 */	mr r30, r6
/* 803CFDA0  28 03 FF FF */	cmplwi r3, 0xffff
/* 803CFDA4  7C 7F 1B 78 */	mr r31, r3
/* 803CFDA8  41 82 00 6C */	beq lbl_803CFE14
/* 803CFDAC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803CFDB0  41 82 00 64 */	beq lbl_803CFE14
/* 803CFDB4  4B FD 02 2D */	bl mEvNM_CheckJointEvent
/* 803CFDB8  2C 03 00 01 */	cmpwi r3, 1
/* 803CFDBC  41 82 00 58 */	beq lbl_803CFE14
/* 803CFDC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CFDC4  7F E4 FB 78 */	mr r4, r31
/* 803CFDC8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CFDCC  38 A0 00 0F */	li r5, 0xf
/* 803CFDD0  3C 63 00 01 */	addis r3, r3, 1
/* 803CFDD4  38 63 74 38 */	addi r3, r3, 0x7438
/* 803CFDD8  4B FF C9 05 */	bl mNpc_SearchAnimalinfo
/* 803CFDDC  2C 03 FF FF */	cmpwi r3, -1
/* 803CFDE0  41 82 00 34 */	beq lbl_803CFE14
/* 803CFDE4  B3 FB 00 00 */	sth r31, 0(r27)
/* 803CFDE8  38 80 00 04 */	li r4, 4
/* 803CFDEC  38 C0 00 07 */	li r6, 7
/* 803CFDF0  38 00 FF FF */	li r0, -1
/* 803CFDF4  98 9B 00 02 */	stb r4, 2(r27)
/* 803CFDF8  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 803CFDFC  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 803CFE00  98 DB 00 03 */	stb r6, 3(r27)
/* 803CFE04  98 7B 00 04 */	stb r3, 4(r27)
/* 803CFE08  7F 83 07 34 */	extsh r3, r28
/* 803CFE0C  B0 1B 00 06 */	sth r0, 6(r27)
/* 803CFE10  4B FD 87 C9 */	bl mFI_SetMoveActorBitData_ON
lbl_803CFE14:
/* 803CFE14  39 61 00 20 */	addi r11, r1, 0x20
/* 803CFE18  4B CC B1 01 */	bl func_8009AF18
/* 803CFE1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CFE20  7C 08 03 A6 */	mtlr r0
/* 803CFE24  38 21 00 20 */	addi r1, r1, 0x20
/* 803CFE28  4E 80 00 20 */	blr 
