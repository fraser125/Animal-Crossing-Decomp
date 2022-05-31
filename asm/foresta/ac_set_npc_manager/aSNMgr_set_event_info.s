lbl_80497E38:
/* 80497E38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80497E3C  7C 08 02 A6 */	mflr r0
/* 80497E40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80497E44  39 61 00 20 */	addi r11, r1, 0x20
/* 80497E48  4B C0 30 8D */	bl func_8009AED4
/* 80497E4C  7C 7D 1B 78 */	mr r29, r3
/* 80497E50  3B E0 00 00 */	li r31, 0
/* 80497E54  80 03 00 04 */	lwz r0, 4(r3)
/* 80497E58  2C 00 00 77 */	cmpwi r0, 0x77
/* 80497E5C  40 82 00 94 */	bne lbl_80497EF0
/* 80497E60  4B F0 76 4D */	bl mEvMN_GetEventTypeMap
/* 80497E64  7C 7E 1B 78 */	mr r30, r3
/* 80497E68  2C 1E FF FF */	cmpwi r30, -1
/* 80497E6C  41 82 00 84 */	beq lbl_80497EF0
/* 80497E70  93 DD 00 04 */	stw r30, 4(r29)
/* 80497E74  4B F0 75 F5 */	bl mEvMN_GetMapIdx
/* 80497E78  90 7D 00 08 */	stw r3, 8(r29)
/* 80497E7C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80497E80  2C 00 FF FF */	cmpwi r0, -1
/* 80497E84  41 82 00 6C */	beq lbl_80497EF0
/* 80497E88  7F C3 F3 78 */	mr r3, r30
/* 80497E8C  38 80 00 0F */	li r4, 0xf
/* 80497E90  4B F0 5F 3D */	bl mEv_get_save_area
/* 80497E94  90 7D 00 00 */	stw r3, 0(r29)
/* 80497E98  80 7D 00 00 */	lwz r3, 0(r29)
/* 80497E9C  28 03 00 00 */	cmplwi r3, 0
/* 80497EA0  40 82 00 44 */	bne lbl_80497EE4
/* 80497EA4  7F C3 F3 78 */	mr r3, r30
/* 80497EA8  38 80 00 0F */	li r4, 0xf
/* 80497EAC  4B F0 5D 79 */	bl mEv_reserve_save_area
/* 80497EB0  38 00 00 05 */	li r0, 5
/* 80497EB4  90 7D 00 00 */	stw r3, 0(r29)
/* 80497EB8  38 A0 00 00 */	li r5, 0
/* 80497EBC  38 80 00 FF */	li r4, 0xff
/* 80497EC0  7C 09 03 A6 */	mtctr r0
lbl_80497EC4:
/* 80497EC4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80497EC8  7C 83 29 AE */	stbx r4, r3, r5
/* 80497ECC  38 A5 00 01 */	addi r5, r5, 1
/* 80497ED0  42 00 FF F4 */	bdnz lbl_80497EC4
/* 80497ED4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80497ED8  7F C4 F3 78 */	mr r4, r30
/* 80497EDC  4B F0 7A 99 */	bl mEvMN_GetNpcJointEv
/* 80497EE0  48 00 00 0C */	b lbl_80497EEC
lbl_80497EE4:
/* 80497EE4  7F C4 F3 78 */	mr r4, r30
/* 80497EE8  4B F0 7D 9D */	bl mEvMN_SetNpcJointEv
lbl_80497EEC:
/* 80497EEC  3B E0 00 01 */	li r31, 1
lbl_80497EF0:
/* 80497EF0  7F E3 FB 78 */	mr r3, r31
/* 80497EF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80497EF8  4B C0 30 29 */	bl func_8009AF20
/* 80497EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80497F00  7C 08 03 A6 */	mtlr r0
/* 80497F04  38 21 00 20 */	addi r1, r1, 0x20
/* 80497F08  4E 80 00 20 */	blr 
