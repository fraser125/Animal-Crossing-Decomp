lbl_80499D0C:
/* 80499D0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80499D10  7C 08 02 A6 */	mflr r0
/* 80499D14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80499D18  39 61 00 20 */	addi r11, r1, 0x20
/* 80499D1C  4B C0 11 B5 */	bl func_8009AED0
/* 80499D20  7C BE 2B 78 */	mr r30, r5
/* 80499D24  7C 7C 1B 78 */	mr r28, r3
/* 80499D28  7C 9D 23 78 */	mr r29, r4
/* 80499D2C  7C C4 33 78 */	mr r4, r6
/* 80499D30  7F C3 F3 78 */	mr r3, r30
/* 80499D34  7C E5 3B 78 */	mr r5, r7
/* 80499D38  3B E0 00 00 */	li r31, 0
/* 80499D3C  4B FF FB 2D */	bl aSOG_gyoei_get_idx
/* 80499D40  2C 03 FF FF */	cmpwi r3, -1
/* 80499D44  41 82 00 2C */	beq lbl_80499D70
/* 80499D48  54 60 18 38 */	slwi r0, r3, 3
/* 80499D4C  7C 7E 02 14 */	add r3, r30, r0
/* 80499D50  88 03 00 02 */	lbz r0, 2(r3)
/* 80499D54  2C 00 00 07 */	cmpwi r0, 7
/* 80499D58  40 80 00 18 */	bge lbl_80499D70
/* 80499D5C  A8 A3 00 00 */	lha r5, 0(r3)
/* 80499D60  7F 83 E3 78 */	mr r3, r28
/* 80499D64  7F A4 EB 78 */	mr r4, r29
/* 80499D68  4B FF FB D9 */	bl aSOG_gyoei_set_gyoei_data
/* 80499D6C  7C 7F 1B 78 */	mr r31, r3
lbl_80499D70:
/* 80499D70  7F E3 FB 78 */	mr r3, r31
/* 80499D74  39 61 00 20 */	addi r11, r1, 0x20
/* 80499D78  4B C0 11 A5 */	bl func_8009AF1C
/* 80499D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80499D80  7C 08 03 A6 */	mtlr r0
/* 80499D84  38 21 00 20 */	addi r1, r1, 0x20
/* 80499D88  4E 80 00 20 */	blr 
