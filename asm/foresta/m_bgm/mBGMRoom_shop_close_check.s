lbl_80378FE4:
/* 80378FE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80378FE8  7C 08 02 A6 */	mflr r0
/* 80378FEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80378FF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80378FF4  4B D2 1E DD */	bl func_8009AED0
/* 80378FF8  7C 7F 1B 78 */	mr r31, r3
/* 80378FFC  3B A0 00 00 */	li r29, 0
/* 80379000  3B 80 00 00 */	li r28, 0
/* 80379004  48 02 BC 8D */	bl mFI_CheckFieldData
/* 80379008  2C 03 00 00 */	cmpwi r3, 0
/* 8037900C  41 82 00 9C */	beq lbl_803790A8
/* 80379010  48 02 BC BD */	bl mFI_GetFieldId
/* 80379014  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80379018  28 04 30 01 */	cmplwi r4, 0x3001
/* 8037901C  41 82 00 1C */	beq lbl_80379038
/* 80379020  38 03 CF FA */	addi r0, r3, -12294
/* 80379024  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80379028  28 00 00 02 */	cmplwi r0, 2
/* 8037902C  40 81 00 0C */	ble lbl_80379038
/* 80379030  28 04 30 09 */	cmplwi r4, 0x3009
/* 80379034  40 82 00 74 */	bne lbl_803790A8
lbl_80379038:
/* 80379038  48 02 1A F9 */	bl mEv_CheckRealArbeit
/* 8037903C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80379040  3B C0 00 00 */	li r30, 0
/* 80379044  40 82 00 2C */	bne lbl_80379070
/* 80379048  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037904C  3C C0 00 02 */	lis r6, 0x0002 /* 0x0001FFFF@ha */
/* 80379050  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80379054  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379058  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8037905C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0001FFFF@l */
/* 80379060  4B FF F9 D5 */	bl mBGMClock_range_time_check
/* 80379064  2C 03 00 00 */	cmpwi r3, 0
/* 80379068  41 82 00 08 */	beq lbl_80379070
/* 8037906C  3B C0 00 01 */	li r30, 1
lbl_80379070:
/* 80379070  2C 1D 00 00 */	cmpwi r29, 0
/* 80379074  7F DC F3 78 */	mr r28, r30
/* 80379078  3B C0 00 00 */	li r30, 0
/* 8037907C  40 82 00 28 */	bne lbl_803790A4
/* 80379080  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379084  3C A0 00 02 */	lis r5, 0x0002 /* 0x0001FFFF@ha */
/* 80379088  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8037908C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379090  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0001FFFF@l */
/* 80379094  4B FF F9 4D */	bl mBGMClock_over_time_check
/* 80379098  2C 03 00 00 */	cmpwi r3, 0
/* 8037909C  41 82 00 08 */	beq lbl_803790A4
/* 803790A0  3B C0 00 01 */	li r30, 1
lbl_803790A4:
/* 803790A4  7F DD F3 78 */	mr r29, r30
lbl_803790A8:
/* 803790A8  2C 1C 00 00 */	cmpwi r28, 0
/* 803790AC  41 82 00 24 */	beq lbl_803790D0
/* 803790B0  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 803790B4  28 00 00 00 */	cmplwi r0, 0
/* 803790B8  40 82 00 18 */	bne lbl_803790D0
/* 803790BC  38 60 13 DE */	li r3, 0x13de
/* 803790C0  48 00 2C F1 */	bl mBGMPsComp_make_ps_quietRoom
/* 803790C4  38 00 00 01 */	li r0, 1
/* 803790C8  98 1F 00 0A */	stb r0, 0xa(r31)
/* 803790CC  48 00 00 24 */	b lbl_803790F0
lbl_803790D0:
/* 803790D0  2C 1C 00 00 */	cmpwi r28, 0
/* 803790D4  40 82 00 1C */	bne lbl_803790F0
/* 803790D8  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 803790DC  28 00 00 00 */	cmplwi r0, 0
/* 803790E0  41 82 00 10 */	beq lbl_803790F0
/* 803790E4  48 00 32 BD */	bl mBGMPsComp_delete_ps_quietRoom
/* 803790E8  38 00 00 00 */	li r0, 0
/* 803790EC  98 1F 00 0A */	stb r0, 0xa(r31)
lbl_803790F0:
/* 803790F0  7F A3 EB 78 */	mr r3, r29
/* 803790F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803790F8  4B D2 1E 25 */	bl func_8009AF1C
/* 803790FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80379100  7C 08 03 A6 */	mtlr r0
/* 80379104  38 21 00 20 */	addi r1, r1, 0x20
/* 80379108  4E 80 00 20 */	blr 
