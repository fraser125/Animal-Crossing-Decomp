lbl_8055196C:
/* 8055196C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551970  7C 08 02 A6 */	mflr r0
/* 80551974  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551978  39 61 00 20 */	addi r11, r1, 0x20
/* 8055197C  4B B4 95 55 */	bl func_8009AED0
/* 80551980  7C 7C 1B 78 */	mr r28, r3
/* 80551984  7C 9D 23 78 */	mr r29, r4
/* 80551988  80 03 08 84 */	lwz r0, 0x884(r3)
/* 8055198C  28 00 00 00 */	cmplwi r0, 0
/* 80551990  40 82 00 54 */	bne lbl_805519E4
/* 80551994  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80551998  7F 86 E3 78 */	mr r6, r28
/* 8055199C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805519A0  A0 7C 09 F8 */	lhz r3, 0x9f8(r28)
/* 805519A4  3F C4 00 02 */	addis r30, r4, 2
/* 805519A8  38 80 00 07 */	li r4, 7
/* 805519AC  80 FE 60 94 */	lwz r7, 0x6094(r30)
/* 805519B0  38 A0 00 01 */	li r5, 1
/* 805519B4  81 87 00 00 */	lwz r12, 0(r7)
/* 805519B8  7D 89 03 A6 */	mtctr r12
/* 805519BC  4E 80 04 21 */	bctrl 
/* 805519C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805519C4  41 82 00 20 */	beq lbl_805519E4
/* 805519C8  80 BE 60 94 */	lwz r5, 0x6094(r30)
/* 805519CC  7F 83 E3 78 */	mr r3, r28
/* 805519D0  38 80 00 01 */	li r4, 1
/* 805519D4  81 85 00 08 */	lwz r12, 8(r5)
/* 805519D8  7D 89 03 A6 */	mtctr r12
/* 805519DC  4E 80 04 21 */	bctrl 
/* 805519E0  93 FC 08 84 */	stw r31, 0x884(r28)
lbl_805519E4:
/* 805519E4  80 1C 01 98 */	lwz r0, 0x198(r28)
/* 805519E8  2C 00 00 01 */	cmpwi r0, 1
/* 805519EC  40 82 00 44 */	bne lbl_80551A30
/* 805519F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805519F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805519F8  3C 63 00 02 */	addis r3, r3, 2
/* 805519FC  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80551A00  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80551A04  7C 00 E0 40 */	cmplw r0, r28
/* 80551A08  40 82 00 28 */	bne lbl_80551A30
/* 80551A0C  81 83 00 08 */	lwz r12, 8(r3)
/* 80551A10  7F 83 E3 78 */	mr r3, r28
/* 80551A14  38 80 00 02 */	li r4, 2
/* 80551A18  7D 89 03 A6 */	mtctr r12
/* 80551A1C  4E 80 04 21 */	bctrl 
/* 80551A20  7F 83 E3 78 */	mr r3, r28
/* 80551A24  7F A4 EB 78 */	mr r4, r29
/* 80551A28  38 A0 00 3B */	li r5, 0x3b
/* 80551A2C  48 00 0E 09 */	bl aNSC_setupAction
lbl_80551A30:
/* 80551A30  39 61 00 20 */	addi r11, r1, 0x20
/* 80551A34  4B B4 94 E9 */	bl func_8009AF1C
/* 80551A38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551A3C  7C 08 03 A6 */	mtlr r0
/* 80551A40  38 21 00 20 */	addi r1, r1, 0x20
/* 80551A44  4E 80 00 20 */	blr 
