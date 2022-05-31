lbl_8055CAA4:
/* 8055CAA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055CAA8  7C 08 02 A6 */	mflr r0
/* 8055CAAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055CAB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CAB4  4B B3 E4 21 */	bl func_8009AED4
/* 8055CAB8  7C 7D 1B 78 */	mr r29, r3
/* 8055CABC  7C 9E 23 78 */	mr r30, r4
/* 8055CAC0  38 60 00 04 */	li r3, 4
/* 8055CAC4  38 80 00 09 */	li r4, 9
/* 8055CAC8  4B E3 B9 B5 */	bl mDemo_Get_OrderValue
/* 8055CACC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055CAD0  41 82 00 B8 */	beq lbl_8055CB88
/* 8055CAD4  3B E0 FF FF */	li r31, -1
/* 8055CAD8  4B E2 6A 69 */	bl func_80383540
/* 8055CADC  4B E2 70 91 */	bl mChoice_Get_ChoseNum
/* 8055CAE0  2C 03 00 01 */	cmpwi r3, 1
/* 8055CAE4  41 82 00 1C */	beq lbl_8055CB00
/* 8055CAE8  40 80 00 24 */	bge lbl_8055CB0C
/* 8055CAEC  2C 03 00 00 */	cmpwi r3, 0
/* 8055CAF0  40 80 00 08 */	bge lbl_8055CAF8
/* 8055CAF4  48 00 00 18 */	b lbl_8055CB0C
lbl_8055CAF8:
/* 8055CAF8  3B E0 00 00 */	li r31, 0
/* 8055CAFC  48 00 00 10 */	b lbl_8055CB0C
lbl_8055CB00:
/* 8055CB00  38 00 00 01 */	li r0, 1
/* 8055CB04  3B E0 00 01 */	li r31, 1
/* 8055CB08  90 1D 09 B0 */	stw r0, 0x9b0(r29)
lbl_8055CB0C:
/* 8055CB0C  2C 1F FF FF */	cmpwi r31, -1
/* 8055CB10  41 82 00 78 */	beq lbl_8055CB88
/* 8055CB14  80 9E 1F 60 */	lwz r4, 0x1f60(r30)
/* 8055CB18  A0 64 00 00 */	lhz r3, 0(r4)
/* 8055CB1C  28 03 20 00 */	cmplwi r3, 0x2000
/* 8055CB20  41 80 00 2C */	blt lbl_8055CB4C
/* 8055CB24  28 03 20 FF */	cmplwi r3, 0x20ff
/* 8055CB28  41 81 00 24 */	bgt lbl_8055CB4C
/* 8055CB2C  38 63 E0 00 */	addi r3, r3, -8192
/* 8055CB30  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 8055CB34  54 63 0F FE */	srwi r3, r3, 0x1f
/* 8055CB38  7C 03 00 50 */	subf r0, r3, r0
/* 8055CB3C  54 00 30 3E */	rotlwi r0, r0, 6
/* 8055CB40  7C 60 1A 14 */	add r3, r0, r3
/* 8055CB44  38 03 20 00 */	addi r0, r3, 0x2000
/* 8055CB48  B0 04 00 00 */	sth r0, 0(r4)
lbl_8055CB4C:
/* 8055CB4C  38 60 00 04 */	li r3, 4
/* 8055CB50  38 80 00 09 */	li r4, 9
/* 8055CB54  38 A0 00 00 */	li r5, 0
/* 8055CB58  4B E3 B8 E1 */	bl mDemo_Set_OrderValue
/* 8055CB5C  38 60 00 1B */	li r3, 0x1b
/* 8055CB60  4B FF EA 7D */	bl aNSC_get_msg_no
/* 8055CB64  7C 7F 1B 78 */	mr r31, r3
/* 8055CB68  4B E6 2B 41 */	bl func_803BF6A8
/* 8055CB6C  7F A4 EB 78 */	mr r4, r29
/* 8055CB70  7F E5 FB 78 */	mr r5, r31
/* 8055CB74  4B FF EA A1 */	bl aNSC_Set_continue_msg_num
/* 8055CB78  7F A3 EB 78 */	mr r3, r29
/* 8055CB7C  7F C4 F3 78 */	mr r4, r30
/* 8055CB80  38 A0 00 15 */	li r5, 0x15
/* 8055CB84  48 00 22 4D */	bl aNSC_setupAction
lbl_8055CB88:
/* 8055CB88  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CB8C  4B B3 E3 95 */	bl func_8009AF20
/* 8055CB90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055CB94  7C 08 03 A6 */	mtlr r0
/* 8055CB98  38 21 00 20 */	addi r1, r1, 0x20
/* 8055CB9C  4E 80 00 20 */	blr 
