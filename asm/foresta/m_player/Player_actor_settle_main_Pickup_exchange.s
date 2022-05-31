lbl_804EEB4C:
/* 804EEB4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EEB50  7C 08 02 A6 */	mflr r0
/* 804EEB54  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EEB58  39 61 00 30 */	addi r11, r1, 0x30
/* 804EEB5C  4B BA C3 79 */	bl func_8009AED4
/* 804EEB60  38 E3 0D 18 */	addi r7, r3, 0xd18
/* 804EEB64  7C 9D 23 78 */	mr r29, r4
/* 804EEB68  80 03 0D 2C */	lwz r0, 0xd2c(r3)
/* 804EEB6C  2C 00 00 00 */	cmpwi r0, 0
/* 804EEB70  40 82 00 98 */	bne lbl_804EEC08
/* 804EEB74  A3 C7 00 0C */	lhz r30, 0xc(r7)
/* 804EEB78  28 1E 25 1E */	cmplwi r30, 0x251e
/* 804EEB7C  40 82 00 14 */	bne lbl_804EEB90
/* 804EEB80  7F A3 EB 78 */	mr r3, r29
/* 804EEB84  7C E4 3B 78 */	mr r4, r7
/* 804EEB88  4B FB 31 41 */	bl aSIGN_set_white_sign
/* 804EEB8C  48 00 00 7C */	b lbl_804EEC08
lbl_804EEB90:
/* 804EEB90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EEB94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EEB98  3F E3 00 02 */	addis r31, r3, 2
/* 804EEB9C  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804EEBA0  28 03 00 00 */	cmplwi r3, 0
/* 804EEBA4  41 82 00 64 */	beq lbl_804EEC08
/* 804EEBA8  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 804EEBAC  28 00 00 00 */	cmplwi r0, 0
/* 804EEBB0  41 82 00 58 */	beq lbl_804EEC08
/* 804EEBB4  80 C7 00 00 */	lwz r6, 0(r7)
/* 804EEBB8  38 61 00 0C */	addi r3, r1, 0xc
/* 804EEBBC  80 07 00 04 */	lwz r0, 4(r7)
/* 804EEBC0  38 81 00 08 */	addi r4, r1, 8
/* 804EEBC4  38 A1 00 10 */	addi r5, r1, 0x10
/* 804EEBC8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804EEBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EEBD0  80 07 00 08 */	lwz r0, 8(r7)
/* 804EEBD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804EEBD8  4B EB 67 91 */	bl mFI_Wpos2UtNum
/* 804EEBDC  2C 03 00 00 */	cmpwi r3, 0
/* 804EEBE0  41 82 00 28 */	beq lbl_804EEC08
/* 804EEBE4  80 DF 60 80 */	lwz r6, 0x6080(r31)
/* 804EEBE8  7F A3 EB 78 */	mr r3, r29
/* 804EEBEC  7F C4 F3 78 */	mr r4, r30
/* 804EEBF0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804EEBF4  81 86 00 3C */	lwz r12, 0x3c(r6)
/* 804EEBF8  38 E0 00 00 */	li r7, 0
/* 804EEBFC  80 C1 00 08 */	lwz r6, 8(r1)
/* 804EEC00  7D 89 03 A6 */	mtctr r12
/* 804EEC04  4E 80 04 21 */	bctrl 
lbl_804EEC08:
/* 804EEC08  39 61 00 30 */	addi r11, r1, 0x30
/* 804EEC0C  4B BA C3 15 */	bl func_8009AF20
/* 804EEC10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EEC14  7C 08 03 A6 */	mtlr r0
/* 804EEC18  38 21 00 30 */	addi r1, r1, 0x30
/* 804EEC1C  4E 80 00 20 */	blr 
