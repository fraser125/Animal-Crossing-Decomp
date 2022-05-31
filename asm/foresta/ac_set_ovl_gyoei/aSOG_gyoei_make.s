lbl_80499D8C:
/* 80499D8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80499D90  7C 08 02 A6 */	mflr r0
/* 80499D94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80499D98  39 61 00 40 */	addi r11, r1, 0x40
/* 80499D9C  4B C0 11 39 */	bl func_8009AED4
/* 80499DA0  7C 7F 1B 78 */	mr r31, r3
/* 80499DA4  7C 86 23 78 */	mr r6, r4
/* 80499DA8  88 03 00 03 */	lbz r0, 3(r3)
/* 80499DAC  7C BD 2B 78 */	mr r29, r5
/* 80499DB0  38 60 00 00 */	li r3, 0
/* 80499DB4  28 00 00 01 */	cmplwi r0, 1
/* 80499DB8  40 82 00 A0 */	bne lbl_80499E58
/* 80499DBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80499DC0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80499DC4  3F C4 00 02 */	addis r30, r4, 2
/* 80499DC8  80 9E 60 B8 */	lwz r4, 0x60b8(r30)
/* 80499DCC  80 04 00 00 */	lwz r0, 0(r4)
/* 80499DD0  28 00 00 00 */	cmplwi r0, 0
/* 80499DD4  41 82 00 84 */	beq lbl_80499E58
/* 80499DD8  80 86 00 00 */	lwz r4, 0(r6)
/* 80499DDC  38 61 00 08 */	addi r3, r1, 8
/* 80499DE0  80 A6 00 04 */	lwz r5, 4(r6)
/* 80499DE4  88 DF 00 01 */	lbz r6, 1(r31)
/* 80499DE8  88 FF 00 02 */	lbz r7, 2(r31)
/* 80499DEC  4B F0 BE 79 */	bl mFI_BkandUtNum2Wpos
/* 80499DF0  88 1F 00 00 */	lbz r0, 0(r31)
/* 80499DF4  2C 00 00 13 */	cmpwi r0, 0x13
/* 80499DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499DFC  41 82 00 08 */	beq lbl_80499E04
/* 80499E00  48 00 00 10 */	b lbl_80499E10
lbl_80499E04:
/* 80499E04  38 61 00 08 */	addi r3, r1, 8
/* 80499E08  4B FF F8 15 */	bl aSOG_get_fall_attribute_position
/* 80499E0C  48 00 00 0C */	b lbl_80499E18
lbl_80499E10:
/* 80499E10  38 61 00 08 */	addi r3, r1, 8
/* 80499E14  4B FF F6 FD */	bl aSOG_get_water_attribute_position
lbl_80499E18:
/* 80499E18  80 81 00 08 */	lwz r4, 8(r1)
/* 80499E1C  38 61 00 14 */	addi r3, r1, 0x14
/* 80499E20  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80499E24  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80499E28  90 81 00 18 */	stw r4, 0x18(r1)
/* 80499E2C  80 9E 60 B8 */	lwz r4, 0x60b8(r30)
/* 80499E30  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80499E34  90 01 00 20 */	stw r0, 0x20(r1)
/* 80499E38  80 1F 00 04 */	lwz r0, 4(r31)
/* 80499E3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80499E40  93 A1 00 28 */	stw r29, 0x28(r1)
/* 80499E44  81 84 00 00 */	lwz r12, 0(r4)
/* 80499E48  7D 89 03 A6 */	mtctr r12
/* 80499E4C  4E 80 04 21 */	bctrl 
/* 80499E50  38 00 00 00 */	li r0, 0
/* 80499E54  98 1F 00 03 */	stb r0, 3(r31)
lbl_80499E58:
/* 80499E58  39 61 00 40 */	addi r11, r1, 0x40
/* 80499E5C  4B C0 10 C5 */	bl func_8009AF20
/* 80499E60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80499E64  7C 08 03 A6 */	mtlr r0
/* 80499E68  38 21 00 40 */	addi r1, r1, 0x40
/* 80499E6C  4E 80 00 20 */	blr 
