lbl_80525A4C:
/* 80525A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525A50  7C 08 02 A6 */	mflr r0
/* 80525A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80525A5C  7C 7F 1B 78 */	mr r31, r3
/* 80525A60  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80525A64  28 00 00 16 */	cmplwi r0, 0x16
/* 80525A68  40 82 00 14 */	bne lbl_80525A7C
/* 80525A6C  81 9F 09 98 */	lwz r12, 0x998(r31)
/* 80525A70  7D 89 03 A6 */	mtctr r12
/* 80525A74  4E 80 04 21 */	bctrl 
/* 80525A78  48 00 00 3C */	b lbl_80525AB4
lbl_80525A7C:
/* 80525A7C  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80525A80  28 00 00 FF */	cmplwi r0, 0xff
/* 80525A84  40 82 00 30 */	bne lbl_80525AB4
/* 80525A88  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80525A8C  38 80 00 05 */	li r4, 5
/* 80525A90  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 80525A94  38 A0 00 00 */	li r5, 0
/* 80525A98  3C C6 00 02 */	addis r6, r6, 2
/* 80525A9C  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80525AA0  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80525AA4  7D 89 03 A6 */	mtctr r12
/* 80525AA8  4E 80 04 21 */	bctrl 
/* 80525AAC  7F E3 FB 78 */	mr r3, r31
/* 80525AB0  4B FF FF 05 */	bl func_805259B4
lbl_80525AB4:
/* 80525AB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80525AB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80525ABC  3C 63 00 02 */	addis r3, r3, 2
/* 80525AC0  80 63 61 00 */	lwz r3, 0x6100(r3)
/* 80525AC4  28 03 00 00 */	cmplwi r3, 0
/* 80525AC8  41 82 00 1C */	beq lbl_80525AE4
/* 80525ACC  80 03 00 04 */	lwz r0, 4(r3)
/* 80525AD0  28 00 00 00 */	cmplwi r0, 0
/* 80525AD4  41 82 00 10 */	beq lbl_80525AE4
/* 80525AD8  38 00 00 37 */	li r0, 0x37
/* 80525ADC  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80525AE0  48 00 00 0C */	b lbl_80525AEC
lbl_80525AE4:
/* 80525AE4  38 00 01 37 */	li r0, 0x137
/* 80525AE8  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_80525AEC:
/* 80525AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80525AF4  7C 08 03 A6 */	mtlr r0
/* 80525AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80525AFC  4E 80 00 20 */	blr 
