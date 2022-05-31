lbl_804DC8A4:
/* 804DC8A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DC8A8  7C 08 02 A6 */	mflr r0
/* 804DC8AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DC8B0  39 61 00 40 */	addi r11, r1, 0x40
/* 804DC8B4  4B BB E6 21 */	bl func_8009AED4
/* 804DC8B8  7C 7D 1B 78 */	mr r29, r3
/* 804DC8BC  80 03 11 F0 */	lwz r0, 0x11f0(r3)
/* 804DC8C0  2C 00 00 00 */	cmpwi r0, 0
/* 804DC8C4  41 82 00 BC */	beq lbl_804DC980
/* 804DC8C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DC8CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DC8D0  3F E3 00 02 */	addis r31, r3, 2
/* 804DC8D4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804DC8D8  28 03 00 00 */	cmplwi r3, 0
/* 804DC8DC  41 82 00 9C */	beq lbl_804DC978
/* 804DC8E0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 804DC8E4  28 00 00 00 */	cmplwi r0, 0
/* 804DC8E8  41 82 00 90 */	beq lbl_804DC978
/* 804DC8EC  80 9D 11 E4 */	lwz r4, 0x11e4(r29)
/* 804DC8F0  38 61 00 1C */	addi r3, r1, 0x1c
/* 804DC8F4  80 1D 11 E8 */	lwz r0, 0x11e8(r29)
/* 804DC8F8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804DC8FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 804DC900  80 1D 11 EC */	lwz r0, 0x11ec(r29)
/* 804DC904  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DC908  4B EC AB 29 */	bl mFI_GetUnitFG
/* 804DC90C  28 03 00 00 */	cmplwi r3, 0
/* 804DC910  41 82 00 68 */	beq lbl_804DC978
/* 804DC914  A3 C3 00 00 */	lhz r30, 0(r3)
/* 804DC918  28 1E 00 43 */	cmplwi r30, 0x43
/* 804DC91C  41 80 00 5C */	blt lbl_804DC978
/* 804DC920  28 1E 00 5B */	cmplwi r30, 0x5b
/* 804DC924  41 81 00 54 */	bgt lbl_804DC978
/* 804DC928  80 DD 11 E4 */	lwz r6, 0x11e4(r29)
/* 804DC92C  38 61 00 0C */	addi r3, r1, 0xc
/* 804DC930  80 1D 11 E8 */	lwz r0, 0x11e8(r29)
/* 804DC934  38 81 00 08 */	addi r4, r1, 8
/* 804DC938  38 A1 00 10 */	addi r5, r1, 0x10
/* 804DC93C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804DC940  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DC944  80 1D 11 EC */	lwz r0, 0x11ec(r29)
/* 804DC948  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DC94C  4B EC 8A 1D */	bl mFI_Wpos2UtNum
/* 804DC950  2C 03 00 00 */	cmpwi r3, 0
/* 804DC954  41 82 00 24 */	beq lbl_804DC978
/* 804DC958  80 BF 60 80 */	lwz r5, 0x6080(r31)
/* 804DC95C  7F C3 F3 78 */	mr r3, r30
/* 804DC960  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804DC964  38 C0 00 00 */	li r6, 0
/* 804DC968  81 85 00 1C */	lwz r12, 0x1c(r5)
/* 804DC96C  80 A1 00 08 */	lwz r5, 8(r1)
/* 804DC970  7D 89 03 A6 */	mtctr r12
/* 804DC974  4E 80 04 21 */	bctrl 
lbl_804DC978:
/* 804DC978  38 00 00 00 */	li r0, 0
/* 804DC97C  90 1D 11 F0 */	stw r0, 0x11f0(r29)
lbl_804DC980:
/* 804DC980  39 61 00 40 */	addi r11, r1, 0x40
/* 804DC984  4B BB E5 9D */	bl func_8009AF20
/* 804DC988  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DC98C  7C 08 03 A6 */	mtlr r0
/* 804DC990  38 21 00 40 */	addi r1, r1, 0x40
/* 804DC994  4E 80 00 20 */	blr 
