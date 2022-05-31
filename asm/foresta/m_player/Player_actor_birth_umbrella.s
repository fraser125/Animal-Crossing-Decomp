lbl_804E0AB8:
/* 804E0AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0ABC  7C 08 02 A6 */	mflr r0
/* 804E0AC0  7C 86 23 78 */	mr r6, r4
/* 804E0AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E0ACC  7C 7F 1B 78 */	mr r31, r3
/* 804E0AD0  80 03 0E 64 */	lwz r0, 0xe64(r3)
/* 804E0AD4  28 00 00 00 */	cmplwi r0, 0
/* 804E0AD8  40 82 00 B4 */	bne lbl_804E0B8C
/* 804E0ADC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E0AE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E0AE4  3C 63 00 02 */	addis r3, r3, 2
/* 804E0AE8  80 A3 60 A0 */	lwz r5, 0x60a0(r3)
/* 804E0AEC  28 05 00 00 */	cmplwi r5, 0
/* 804E0AF0  41 82 00 9C */	beq lbl_804E0B8C
/* 804E0AF4  80 9F 0E 68 */	lwz r4, 0xe68(r31)
/* 804E0AF8  2C 04 00 01 */	cmpwi r4, 1
/* 804E0AFC  41 82 00 14 */	beq lbl_804E0B10
/* 804E0B00  2C 04 00 04 */	cmpwi r4, 4
/* 804E0B04  41 82 00 0C */	beq lbl_804E0B10
/* 804E0B08  2C 04 00 02 */	cmpwi r4, 2
/* 804E0B0C  40 82 00 80 */	bne lbl_804E0B8C
lbl_804E0B10:
/* 804E0B10  88 FF 11 2B */	lbz r7, 0x112b(r31)
/* 804E0B14  38 60 00 00 */	li r3, 0
/* 804E0B18  7C E0 07 74 */	extsb r0, r7
/* 804E0B1C  2C 00 00 0B */	cmpwi r0, 0xb
/* 804E0B20  41 80 00 10 */	blt lbl_804E0B30
/* 804E0B24  2C 00 00 33 */	cmpwi r0, 0x33
/* 804E0B28  40 80 00 08 */	bge lbl_804E0B30
/* 804E0B2C  38 60 00 01 */	li r3, 1
lbl_804E0B30:
/* 804E0B30  2C 03 00 00 */	cmpwi r3, 0
/* 804E0B34  41 82 00 58 */	beq lbl_804E0B8C
/* 804E0B38  81 85 00 00 */	lwz r12, 0(r5)
/* 804E0B3C  7C E3 07 74 */	extsb r3, r7
/* 804E0B40  7F E5 FB 78 */	mr r5, r31
/* 804E0B44  38 E0 FF FF */	li r7, -1
/* 804E0B48  38 63 FF F5 */	addi r3, r3, -11
/* 804E0B4C  39 00 00 00 */	li r8, 0
/* 804E0B50  7D 89 03 A6 */	mtctr r12
/* 804E0B54  4E 80 04 21 */	bctrl 
/* 804E0B58  90 7F 0E 64 */	stw r3, 0xe64(r31)
/* 804E0B5C  80 BF 0E 64 */	lwz r5, 0xe64(r31)
/* 804E0B60  28 05 00 00 */	cmplwi r5, 0
/* 804E0B64  41 82 00 28 */	beq lbl_804E0B8C
/* 804E0B68  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804E0B6C  38 00 00 01 */	li r0, 1
/* 804E0B70  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804E0B74  90 85 00 28 */	stw r4, 0x28(r5)
/* 804E0B78  90 65 00 2C */	stw r3, 0x2c(r5)
/* 804E0B7C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 804E0B80  90 65 00 30 */	stw r3, 0x30(r5)
/* 804E0B84  80 7F 0E 64 */	lwz r3, 0xe64(r31)
/* 804E0B88  98 03 01 49 */	stb r0, 0x149(r3)
lbl_804E0B8C:
/* 804E0B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E0B94  7C 08 03 A6 */	mtlr r0
/* 804E0B98  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0B9C  4E 80 00 20 */	blr 
