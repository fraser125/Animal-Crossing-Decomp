lbl_803FE4A8:
/* 803FE4A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FE4AC  7C 08 02 A6 */	mflr r0
/* 803FE4B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FE4B4  39 61 00 30 */	addi r11, r1, 0x30
/* 803FE4B8  4B C9 CA 05 */	bl func_8009AEBC
/* 803FE4BC  7C 77 1B 78 */	mr r23, r3
/* 803FE4C0  7C 9F 23 78 */	mr r31, r4
/* 803FE4C4  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 803FE4C8  3B B7 00 54 */	addi r29, r23, 0x54
/* 803FE4CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803FE4D0  3B 60 FF FF */	li r27, -1
/* 803FE4D4  28 00 00 00 */	cmplwi r0, 0
/* 803FE4D8  7C 7C 1B 78 */	mr r28, r3
/* 803FE4DC  41 82 01 4C */	beq lbl_803FE628
/* 803FE4E0  80 17 01 64 */	lwz r0, 0x164(r23)
/* 803FE4E4  28 00 00 00 */	cmplwi r0, 0
/* 803FE4E8  41 82 01 40 */	beq lbl_803FE628
/* 803FE4EC  28 03 00 00 */	cmplwi r3, 0
/* 803FE4F0  41 82 01 38 */	beq lbl_803FE628
/* 803FE4F4  3B 20 00 00 */	li r25, 0
/* 803FE4F8  3F C3 00 01 */	addis r30, r3, 1
lbl_803FE4FC:
/* 803FE4FC  38 00 00 16 */	li r0, 0x16
/* 803FE500  3B 40 00 00 */	li r26, 0
/* 803FE504  90 1D 00 78 */	stw r0, 0x78(r29)
/* 803FE508  3B 00 00 00 */	li r24, 0
lbl_803FE50C:
/* 803FE50C  38 18 00 01 */	addi r0, r24, 1
/* 803FE510  90 17 00 04 */	stw r0, 4(r23)
/* 803FE514  80 77 00 04 */	lwz r3, 4(r23)
/* 803FE518  4B FF BF 41 */	bl mCD_get_size
/* 803FE51C  90 77 00 08 */	stw r3, 8(r23)
/* 803FE520  7F 83 E3 78 */	mr r3, r28
/* 803FE524  80 97 00 08 */	lwz r4, 8(r23)
/* 803FE528  4B C5 EB 41 */	bl bzero
/* 803FE52C  80 97 00 04 */	lwz r4, 4(r23)
/* 803FE530  7F 83 E3 78 */	mr r3, r28
/* 803FE534  7F 25 CB 78 */	mr r5, r25
/* 803FE538  38 DD 00 74 */	addi r6, r29, 0x74
/* 803FE53C  4B FF C4 85 */	bl mCD_load_file
/* 803FE540  2C 03 00 01 */	cmpwi r3, 1
/* 803FE544  40 82 00 60 */	bne lbl_803FE5A4
/* 803FE548  A0 9E 91 2A */	lhz r4, -0x6ed6(r30)
/* 803FE54C  7F 83 E3 78 */	mr r3, r28
/* 803FE550  4B FA E0 3D */	bl mFRm_CheckSaveData_common
/* 803FE554  2C 03 00 00 */	cmpwi r3, 0
/* 803FE558  41 82 00 44 */	beq lbl_803FE59C
/* 803FE55C  80 97 00 08 */	lwz r4, 8(r23)
/* 803FE560  7F 83 E3 78 */	mr r3, r28
/* 803FE564  4B FA DF 99 */	bl mFRm_ReturnCheckSum
/* 803FE568  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FE56C  40 82 00 28 */	bne lbl_803FE594
/* 803FE570  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FE574  2C 00 00 06 */	cmpwi r0, 6
/* 803FE578  41 82 00 0C */	beq lbl_803FE584
/* 803FE57C  2C 00 00 05 */	cmpwi r0, 5
/* 803FE580  40 82 00 14 */	bne lbl_803FE594
lbl_803FE584:
/* 803FE584  38 00 00 0F */	li r0, 0xf
/* 803FE588  7F 3B CB 78 */	mr r27, r25
/* 803FE58C  90 1D 00 78 */	stw r0, 0x78(r29)
/* 803FE590  48 00 00 30 */	b lbl_803FE5C0
lbl_803FE594:
/* 803FE594  3B 5A 00 01 */	addi r26, r26, 1
/* 803FE598  48 00 00 1C */	b lbl_803FE5B4
lbl_803FE59C:
/* 803FE59C  3B 5A 00 01 */	addi r26, r26, 1
/* 803FE5A0  48 00 00 14 */	b lbl_803FE5B4
lbl_803FE5A4:
/* 803FE5A4  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 803FE5A8  4B FF BD 0D */	bl mCD_TransErrorCode
/* 803FE5AC  90 7D 00 78 */	stw r3, 0x78(r29)
/* 803FE5B0  48 00 00 10 */	b lbl_803FE5C0
lbl_803FE5B4:
/* 803FE5B4  3B 18 00 01 */	addi r24, r24, 1
/* 803FE5B8  2C 18 00 02 */	cmpwi r24, 2
/* 803FE5BC  41 80 FF 50 */	blt lbl_803FE50C
lbl_803FE5C0:
/* 803FE5C0  2C 1A 00 02 */	cmpwi r26, 2
/* 803FE5C4  40 82 00 0C */	bne lbl_803FE5D0
/* 803FE5C8  93 37 00 00 */	stw r25, 0(r23)
/* 803FE5CC  48 00 00 14 */	b lbl_803FE5E0
lbl_803FE5D0:
/* 803FE5D0  3B 39 00 01 */	addi r25, r25, 1
/* 803FE5D4  3B BD 00 94 */	addi r29, r29, 0x94
/* 803FE5D8  2C 19 00 02 */	cmpwi r25, 2
/* 803FE5DC  41 80 FF 20 */	blt lbl_803FE4FC
lbl_803FE5E0:
/* 803FE5E0  80 17 00 00 */	lwz r0, 0(r23)
/* 803FE5E4  2C 00 FF FF */	cmpwi r0, -1
/* 803FE5E8  41 82 00 18 */	beq lbl_803FE600
/* 803FE5EC  80 9F 00 00 */	lwz r4, 0(r31)
/* 803FE5F0  38 60 00 01 */	li r3, 1
/* 803FE5F4  38 04 00 01 */	addi r0, r4, 1
/* 803FE5F8  90 1F 00 00 */	stw r0, 0(r31)
/* 803FE5FC  48 00 00 30 */	b lbl_803FE62C
lbl_803FE600:
/* 803FE600  2C 1B FF FF */	cmpwi r27, -1
/* 803FE604  41 82 00 0C */	beq lbl_803FE610
/* 803FE608  93 77 00 00 */	stw r27, 0(r23)
/* 803FE60C  48 00 00 14 */	b lbl_803FE620
lbl_803FE610:
/* 803FE610  80 97 00 CC */	lwz r4, 0xcc(r23)
/* 803FE614  7E E3 BB 78 */	mr r3, r23
/* 803FE618  80 B7 01 60 */	lwz r5, 0x160(r23)
/* 803FE61C  4B FF C4 B1 */	bl mCD_GetHighPriority_common
lbl_803FE620:
/* 803FE620  38 60 FF FF */	li r3, -1
/* 803FE624  48 00 00 08 */	b lbl_803FE62C
lbl_803FE628:
/* 803FE628  38 60 FF FF */	li r3, -1
lbl_803FE62C:
/* 803FE62C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FE630  4B C9 C8 D9 */	bl func_8009AF08
/* 803FE634  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FE638  7C 08 03 A6 */	mtlr r0
/* 803FE63C  38 21 00 30 */	addi r1, r1, 0x30
/* 803FE640  4E 80 00 20 */	blr 
