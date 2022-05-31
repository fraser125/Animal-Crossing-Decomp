lbl_80578BF4:
/* 80578BF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80578BF8  7C 08 02 A6 */	mflr r0
/* 80578BFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80578C00  39 61 00 30 */	addi r11, r1, 0x30
/* 80578C04  4B B2 22 BD */	bl func_8009AEC0
/* 80578C08  7C 7C 1B 78 */	mr r28, r3
/* 80578C0C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80578C10  80 FC 00 00 */	lwz r7, 0(r28)
/* 80578C14  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 80578C18  7C DD 33 78 */	mr r29, r6
/* 80578C1C  3B C0 00 01 */	li r30, 1
/* 80578C20  7C 07 00 40 */	cmplw r7, r0
/* 80578C24  41 80 00 10 */	blt lbl_80578C34
/* 80578C28  38 07 8A D0 */	addi r0, r7, -30000
/* 80578C2C  3B C0 00 00 */	li r30, 0
/* 80578C30  90 1C 00 00 */	stw r0, 0(r28)
lbl_80578C34:
/* 80578C34  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 80578C38  28 03 20 00 */	cmplwi r3, 0x2000
/* 80578C3C  41 80 01 40 */	blt lbl_80578D7C
/* 80578C40  28 03 20 FF */	cmplwi r3, 0x20ff
/* 80578C44  41 81 01 38 */	bgt lbl_80578D7C
/* 80578C48  38 63 E0 00 */	addi r3, r3, -8192
/* 80578C4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80578C50  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80578C54  3B 40 00 01 */	li r26, 1
/* 80578C58  3F E4 00 02 */	addis r31, r4, 2
/* 80578C5C  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 80578C60  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80578C64  83 7F 61 3C */	lwz r27, 0x613c(r31)
/* 80578C68  7C 03 00 50 */	subf r0, r3, r0
/* 80578C6C  54 00 30 3E */	rotlwi r0, r0, 6
/* 80578C70  7F 20 1A 14 */	add r25, r0, r3
lbl_80578C74:
/* 80578C74  38 1A FF FF */	addi r0, r26, -1
/* 80578C78  7F 63 DB 78 */	mr r3, r27
/* 80578C7C  54 00 30 32 */	slwi r0, r0, 6
/* 80578C80  7C 99 02 14 */	add r4, r25, r0
/* 80578C84  38 04 20 00 */	addi r0, r4, 0x2000
/* 80578C88  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80578C8C  4B E6 7A 9D */	bl mPr_GetPossessionItemIdx
/* 80578C90  7C 78 1B 78 */	mr r24, r3
/* 80578C94  2C 18 FF FF */	cmpwi r24, -1
/* 80578C98  41 82 00 D4 */	beq lbl_80578D6C
/* 80578C9C  2C 1A 00 01 */	cmpwi r26, 1
/* 80578CA0  40 82 00 28 */	bne lbl_80578CC8
/* 80578CA4  3C 60 80 6C */	lis r3, aNSC_exchange_itemNo@ha /* 0x806C0244@ha */
/* 80578CA8  57 C0 08 3C */	slwi r0, r30, 1
/* 80578CAC  38 83 02 44 */	addi r4, r3, aNSC_exchange_itemNo@l /* 0x806C0244@l */
/* 80578CB0  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80578CB4  7C A4 02 2E */	lhzx r5, r4, r0
/* 80578CB8  7F 04 C3 78 */	mr r4, r24
/* 80578CBC  38 C0 00 00 */	li r6, 0
/* 80578CC0  4B E6 81 69 */	bl mPr_SetPossessionItem
/* 80578CC4  48 00 00 E4 */	b lbl_80578DA8
lbl_80578CC8:
/* 80578CC8  2C 1E 00 00 */	cmpwi r30, 0
/* 80578CCC  40 82 00 78 */	bne lbl_80578D44
/* 80578CD0  7F 63 DB 78 */	mr r3, r27
/* 80578CD4  38 80 00 00 */	li r4, 0
/* 80578CD8  4B E6 7A 51 */	bl mPr_GetPossessionItemIdx
/* 80578CDC  7C 7B 1B 78 */	mr r27, r3
/* 80578CE0  2C 1B FF FF */	cmpwi r27, -1
/* 80578CE4  41 82 00 40 */	beq lbl_80578D24
/* 80578CE8  38 1A FF FE */	addi r0, r26, -2
/* 80578CEC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80578CF0  54 00 30 32 */	slwi r0, r0, 6
/* 80578CF4  7F 04 C3 78 */	mr r4, r24
/* 80578CF8  7C B9 02 14 */	add r5, r25, r0
/* 80578CFC  38 C0 00 00 */	li r6, 0
/* 80578D00  38 05 20 00 */	addi r0, r5, 0x2000
/* 80578D04  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80578D08  4B E6 81 21 */	bl mPr_SetPossessionItem
/* 80578D0C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80578D10  7F 64 DB 78 */	mr r4, r27
/* 80578D14  38 A0 21 02 */	li r5, 0x2102
/* 80578D18  38 C0 00 00 */	li r6, 0
/* 80578D1C  4B E6 81 0D */	bl mPr_SetPossessionItem
/* 80578D20  48 00 00 88 */	b lbl_80578DA8
lbl_80578D24:
/* 80578D24  80 7C 00 00 */	lwz r3, 0(r28)
/* 80578D28  3B C0 00 03 */	li r30, 3
/* 80578D2C  38 03 75 30 */	addi r0, r3, 0x7530
/* 80578D30  90 1C 00 00 */	stw r0, 0(r28)
/* 80578D34  80 1C 00 00 */	lwz r0, 0(r28)
/* 80578D38  7C 1D 00 50 */	subf r0, r29, r0
/* 80578D3C  90 1C 00 00 */	stw r0, 0(r28)
/* 80578D40  48 00 00 68 */	b lbl_80578DA8
lbl_80578D44:
/* 80578D44  38 1A FF FE */	addi r0, r26, -2
/* 80578D48  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80578D4C  54 00 30 32 */	slwi r0, r0, 6
/* 80578D50  7F 04 C3 78 */	mr r4, r24
/* 80578D54  7C B9 02 14 */	add r5, r25, r0
/* 80578D58  38 C0 00 00 */	li r6, 0
/* 80578D5C  38 05 20 00 */	addi r0, r5, 0x2000
/* 80578D60  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80578D64  4B E6 80 C5 */	bl mPr_SetPossessionItem
/* 80578D68  48 00 00 40 */	b lbl_80578DA8
lbl_80578D6C:
/* 80578D6C  3B 5A 00 01 */	addi r26, r26, 1
/* 80578D70  2C 1A 00 04 */	cmpwi r26, 4
/* 80578D74  40 81 FF 00 */	ble lbl_80578C74
/* 80578D78  48 00 00 30 */	b lbl_80578DA8
lbl_80578D7C:
/* 80578D7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80578D80  3C 60 80 6C */	lis r3, aNSC_exchange_itemNo@ha /* 0x806C0244@ha */
/* 80578D84  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80578D88  57 C0 08 3C */	slwi r0, r30, 1
/* 80578D8C  3D 04 00 02 */	addis r8, r4, 2
/* 80578D90  38 E3 02 44 */	addi r7, r3, aNSC_exchange_itemNo@l /* 0x806C0244@l */
/* 80578D94  88 85 00 02 */	lbz r4, 2(r5)
/* 80578D98  38 C0 00 00 */	li r6, 0
/* 80578D9C  80 68 61 3C */	lwz r3, 0x613c(r8)
/* 80578DA0  7C A7 02 2E */	lhzx r5, r7, r0
/* 80578DA4  4B E6 80 85 */	bl mPr_SetPossessionItem
lbl_80578DA8:
/* 80578DA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80578DAC  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80578DB0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80578DB4  3F E4 00 02 */	addis r31, r4, 2
/* 80578DB8  3B A3 86 9F */	addi r29, r3, 0x869F /* 0x0001869F@l */
/* 80578DBC  48 00 00 20 */	b lbl_80578DDC
lbl_80578DC0:
/* 80578DC0  80 7C 00 00 */	lwz r3, 0(r28)
/* 80578DC4  38 80 21 02 */	li r4, 0x2102
/* 80578DC8  38 A0 00 00 */	li r5, 0
/* 80578DCC  38 03 8A D0 */	addi r0, r3, -30000
/* 80578DD0  90 1C 00 00 */	stw r0, 0(r28)
/* 80578DD4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80578DD8  4B E6 81 31 */	bl mPr_SetFreePossessionItem
lbl_80578DDC:
/* 80578DDC  80 1C 00 00 */	lwz r0, 0(r28)
/* 80578DE0  7C 00 E8 40 */	cmplw r0, r29
/* 80578DE4  40 80 FF DC */	bge lbl_80578DC0
/* 80578DE8  7F C3 F3 78 */	mr r3, r30
/* 80578DEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80578DF0  4B B2 21 1D */	bl func_8009AF0C
/* 80578DF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80578DF8  7C 08 03 A6 */	mtlr r0
/* 80578DFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80578E00  4E 80 00 20 */	blr 
