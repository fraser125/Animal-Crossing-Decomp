lbl_8054A9E4:
/* 8054A9E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A9E8  7C 08 02 A6 */	mflr r0
/* 8054A9EC  38 A0 00 00 */	li r5, 0
/* 8054A9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A9F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A9F8  7C 7F 1B 78 */	mr r31, r3
/* 8054A9FC  38 60 00 04 */	li r3, 4
/* 8054AA00  93 C1 00 08 */	stw r30, 8(r1)
/* 8054AA04  7C 9E 23 78 */	mr r30, r4
/* 8054AA08  38 80 00 09 */	li r4, 9
/* 8054AA0C  4B E4 DA 2D */	bl mDemo_Set_OrderValue
/* 8054AA10  88 1F 09 B8 */	lbz r0, 0x9b8(r31)
/* 8054AA14  28 00 00 01 */	cmplwi r0, 1
/* 8054AA18  40 82 00 CC */	bne lbl_8054AAE4
/* 8054AA1C  A0 1F 09 B4 */	lhz r0, 0x9b4(r31)
/* 8054AA20  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8054AA24  2C 00 00 05 */	cmpwi r0, 5
/* 8054AA28  41 82 00 BC */	beq lbl_8054AAE4
/* 8054AA2C  40 80 00 10 */	bge lbl_8054AA3C
/* 8054AA30  2C 00 00 04 */	cmpwi r0, 4
/* 8054AA34  40 80 00 48 */	bge lbl_8054AA7C
/* 8054AA38  48 00 00 AC */	b lbl_8054AAE4
lbl_8054AA3C:
/* 8054AA3C  2C 00 00 08 */	cmpwi r0, 8
/* 8054AA40  40 80 00 A4 */	bge lbl_8054AAE4
/* 8054AA44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054AA48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054AA4C  3C 63 00 02 */	addis r3, r3, 2
/* 8054AA50  80 63 60 7C */	lwz r3, 0x607c(r3)
/* 8054AA54  28 03 00 00 */	cmplwi r3, 0
/* 8054AA58  41 82 00 8C */	beq lbl_8054AAE4
/* 8054AA5C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8054AA60  7D 89 03 A6 */	mtctr r12
/* 8054AA64  4E 80 04 21 */	bctrl 
/* 8054AA68  7F C3 F3 78 */	mr r3, r30
/* 8054AA6C  4B E3 79 31 */	bl Camera2_Inter_set_reverse_mode
/* 8054AA70  38 00 00 00 */	li r0, 0
/* 8054AA74  98 1F 09 B8 */	stb r0, 0x9b8(r31)
/* 8054AA78  48 00 00 6C */	b lbl_8054AAE4
lbl_8054AA7C:
/* 8054AA7C  80 7F 09 AC */	lwz r3, 0x9ac(r31)
/* 8054AA80  4B FF BC F9 */	bl aNSC_money_check
/* 8054AA84  2C 03 00 00 */	cmpwi r3, 0
/* 8054AA88  41 82 00 30 */	beq lbl_8054AAB8
/* 8054AA8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054AA90  38 80 00 00 */	li r4, 0
/* 8054AA94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054AA98  3C 63 00 02 */	addis r3, r3, 2
/* 8054AA9C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8054AAA0  4B E9 5E F1 */	bl mPr_GetPossessionItemSum
/* 8054AAA4  28 03 00 00 */	cmplwi r3, 0
/* 8054AAA8  41 82 00 10 */	beq lbl_8054AAB8
/* 8054AAAC  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8054AAB0  2C 00 00 21 */	cmpwi r0, 0x21
/* 8054AAB4  40 82 00 28 */	bne lbl_8054AADC
lbl_8054AAB8:
/* 8054AAB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054AABC  88 7F 09 B6 */	lbz r3, 0x9b6(r31)
/* 8054AAC0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8054AAC4  88 9F 09 B7 */	lbz r4, 0x9b7(r31)
/* 8054AAC8  3C A5 00 02 */	addis r5, r5, 2
/* 8054AACC  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 8054AAD0  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8054AAD4  7D 89 03 A6 */	mtctr r12
/* 8054AAD8  4E 80 04 21 */	bctrl 
lbl_8054AADC:
/* 8054AADC  38 00 00 00 */	li r0, 0
/* 8054AAE0  98 1F 09 B8 */	stb r0, 0x9b8(r31)
lbl_8054AAE4:
/* 8054AAE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AAE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054AAEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054AAF0  7C 08 03 A6 */	mtlr r0
/* 8054AAF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AAF8  4E 80 00 20 */	blr 
