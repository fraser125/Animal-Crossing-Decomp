lbl_80559B2C:
/* 80559B2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80559B30  7C 08 02 A6 */	mflr r0
/* 80559B34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80559B38  39 61 00 20 */	addi r11, r1, 0x20
/* 80559B3C  4B B4 13 99 */	bl func_8009AED4
/* 80559B40  7C 7D 1B 78 */	mr r29, r3
/* 80559B44  7C 9E 23 78 */	mr r30, r4
/* 80559B48  38 60 00 47 */	li r3, 0x47
/* 80559B4C  38 80 00 0A */	li r4, 0xa
/* 80559B50  4B E4 42 7D */	bl mEv_get_save_area
/* 80559B54  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80559B58  7C 7F 1B 78 */	mr r31, r3
/* 80559B5C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80559B60  7F A3 EB 78 */	mr r3, r29
/* 80559B64  3C A4 00 02 */	addis r5, r4, 2
/* 80559B68  7F C4 F3 78 */	mr r4, r30
/* 80559B6C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80559B70  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80559B74  7D 89 03 A6 */	mtctr r12
/* 80559B78  4E 80 04 21 */	bctrl 
/* 80559B7C  38 00 79 18 */	li r0, 0x7918
/* 80559B80  28 1F 00 00 */	cmplwi r31, 0
/* 80559B84  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 80559B88  41 82 00 20 */	beq lbl_80559BA8
/* 80559B8C  A0 7F 00 02 */	lhz r3, 2(r31)
/* 80559B90  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80559B94  41 82 00 14 */	beq lbl_80559BA8
/* 80559B98  54 60 04 E2 */	rlwinm r0, r3, 0, 0x13, 0x11
/* 80559B9C  7F A3 EB 78 */	mr r3, r29
/* 80559BA0  B0 1F 00 02 */	sth r0, 2(r31)
/* 80559BA4  4B E1 A8 9D */	bl Actor_delete
lbl_80559BA8:
/* 80559BA8  38 00 00 00 */	li r0, 0
/* 80559BAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80559BB0  98 1D 01 08 */	stb r0, 0x108(r29)
/* 80559BB4  4B B4 13 6D */	bl func_8009AF20
/* 80559BB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80559BBC  7C 08 03 A6 */	mtlr r0
/* 80559BC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80559BC4  4E 80 00 20 */	blr 
