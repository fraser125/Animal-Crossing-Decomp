lbl_804B8A28:
/* 804B8A28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804B8A2C  7C 08 02 A6 */	mflr r0
/* 804B8A30  90 01 00 74 */	stw r0, 0x74(r1)
/* 804B8A34  39 61 00 70 */	addi r11, r1, 0x70
/* 804B8A38  4B BE 24 9D */	bl func_8009AED4
/* 804B8A3C  7C DE 33 78 */	mr r30, r6
/* 804B8A40  7C 7D 1B 78 */	mr r29, r3
/* 804B8A44  7C BF 2B 78 */	mr r31, r5
/* 804B8A48  38 C1 00 08 */	addi r6, r1, 8
/* 804B8A4C  4B FF FD ED */	bl bIT_common_bury_after
/* 804B8A50  2C 1E 00 01 */	cmpwi r30, 1
/* 804B8A54  41 82 00 D8 */	beq lbl_804B8B2C
/* 804B8A58  2C 03 00 01 */	cmpwi r3, 1
/* 804B8A5C  41 82 00 6C */	beq lbl_804B8AC8
/* 804B8A60  40 80 00 08 */	bge lbl_804B8A68
/* 804B8A64  48 00 00 10 */	b lbl_804B8A74
lbl_804B8A68:
/* 804B8A68  2C 03 00 03 */	cmpwi r3, 3
/* 804B8A6C  40 80 00 08 */	bge lbl_804B8A74
/* 804B8A70  48 00 00 90 */	b lbl_804B8B00
lbl_804B8A74:
/* 804B8A74  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B8A78  38 81 00 48 */	addi r4, r1, 0x48
/* 804B8A7C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B8A80  38 A0 00 01 */	li r5, 1
/* 804B8A84  A0 61 00 08 */	lhz r3, 8(r1)
/* 804B8A88  90 C1 00 48 */	stw r6, 0x48(r1)
/* 804B8A8C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804B8A90  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B8A94  90 01 00 50 */	stw r0, 0x50(r1)
/* 804B8A98  4B EE ED 99 */	bl mFI_SetFG_common
/* 804B8A9C  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 804B8AA0  41 82 01 20 */	beq lbl_804B8BC0
/* 804B8AA4  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B8AA8  38 61 00 3C */	addi r3, r1, 0x3c
/* 804B8AAC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B8AB0  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804B8AB4  90 01 00 40 */	stw r0, 0x40(r1)
/* 804B8AB8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B8ABC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B8AC0  4B EF 05 19 */	bl mFI_Wpos2DepositON
/* 804B8AC4  48 00 00 FC */	b lbl_804B8BC0
lbl_804B8AC8:
/* 804B8AC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B8ACC  A0 81 00 08 */	lhz r4, 8(r1)
/* 804B8AD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B8AD4  7F E5 FB 78 */	mr r5, r31
/* 804B8AD8  3C 63 00 02 */	addis r3, r3, 2
/* 804B8ADC  7F E6 FB 78 */	mr r6, r31
/* 804B8AE0  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804B8AE4  38 E0 00 83 */	li r7, 0x83
/* 804B8AE8  39 00 00 00 */	li r8, 0
/* 804B8AEC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B8AF0  3C 63 00 01 */	addis r3, r3, 1
/* 804B8AF4  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804B8AF8  48 00 1A C9 */	bl bIT_actor_drop_entry
/* 804B8AFC  48 00 00 C4 */	b lbl_804B8BC0
lbl_804B8B00:
/* 804B8B00  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B8B04  38 81 00 30 */	addi r4, r1, 0x30
/* 804B8B08  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B8B0C  38 A0 00 01 */	li r5, 1
/* 804B8B10  A0 61 00 08 */	lhz r3, 8(r1)
/* 804B8B14  90 C1 00 30 */	stw r6, 0x30(r1)
/* 804B8B18  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B8B1C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B8B20  90 01 00 38 */	stw r0, 0x38(r1)
/* 804B8B24  4B EE ED 0D */	bl mFI_SetFG_common
/* 804B8B28  48 00 00 98 */	b lbl_804B8BC0
lbl_804B8B2C:
/* 804B8B2C  2C 03 00 00 */	cmpwi r3, 0
/* 804B8B30  41 82 00 14 */	beq lbl_804B8B44
/* 804B8B34  41 80 00 10 */	blt lbl_804B8B44
/* 804B8B38  2C 03 00 03 */	cmpwi r3, 3
/* 804B8B3C  40 80 00 08 */	bge lbl_804B8B44
/* 804B8B40  48 00 00 58 */	b lbl_804B8B98
lbl_804B8B44:
/* 804B8B44  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B8B48  7F A3 EB 78 */	mr r3, r29
/* 804B8B4C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B8B50  38 81 00 24 */	addi r4, r1, 0x24
/* 804B8B54  38 A0 00 01 */	li r5, 1
/* 804B8B58  90 C1 00 24 */	stw r6, 0x24(r1)
/* 804B8B5C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B8B60  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B8B64  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804B8B68  4B EE EC C9 */	bl mFI_SetFG_common
/* 804B8B6C  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 804B8B70  41 82 00 50 */	beq lbl_804B8BC0
/* 804B8B74  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B8B78  38 61 00 18 */	addi r3, r1, 0x18
/* 804B8B7C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B8B80  90 81 00 18 */	stw r4, 0x18(r1)
/* 804B8B84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B8B88  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B8B8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B8B90  4B EF 04 49 */	bl mFI_Wpos2DepositON
/* 804B8B94  48 00 00 2C */	b lbl_804B8BC0
lbl_804B8B98:
/* 804B8B98  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B8B9C  38 81 00 0C */	addi r4, r1, 0xc
/* 804B8BA0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B8BA4  38 A0 00 01 */	li r5, 1
/* 804B8BA8  A0 61 00 08 */	lhz r3, 8(r1)
/* 804B8BAC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804B8BB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B8BB4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B8BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B8BBC  4B EE EC 75 */	bl mFI_SetFG_common
lbl_804B8BC0:
/* 804B8BC0  39 61 00 70 */	addi r11, r1, 0x70
/* 804B8BC4  4B BE 23 5D */	bl func_8009AF20
/* 804B8BC8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804B8BCC  7C 08 03 A6 */	mtlr r0
/* 804B8BD0  38 21 00 70 */	addi r1, r1, 0x70
/* 804B8BD4  4E 80 00 20 */	blr 
