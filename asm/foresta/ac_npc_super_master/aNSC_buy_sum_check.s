lbl_80583B38:
/* 80583B38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80583B3C  7C 08 02 A6 */	mflr r0
/* 80583B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583B44  39 61 00 20 */	addi r11, r1, 0x20
/* 80583B48  4B B1 73 8D */	bl func_8009AED4
/* 80583B4C  7C 7D 1B 78 */	mr r29, r3
/* 80583B50  7C 9E 23 78 */	mr r30, r4
/* 80583B54  38 60 00 04 */	li r3, 4
/* 80583B58  38 80 00 09 */	li r4, 9
/* 80583B5C  4B E1 49 21 */	bl mDemo_Get_OrderValue
/* 80583B60  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80583B64  41 82 00 B8 */	beq lbl_80583C1C
/* 80583B68  3B E0 FF FF */	li r31, -1
/* 80583B6C  4B DF F9 D5 */	bl func_80383540
/* 80583B70  4B DF FF FD */	bl mChoice_Get_ChoseNum
/* 80583B74  2C 03 00 01 */	cmpwi r3, 1
/* 80583B78  41 82 00 1C */	beq lbl_80583B94
/* 80583B7C  40 80 00 24 */	bge lbl_80583BA0
/* 80583B80  2C 03 00 00 */	cmpwi r3, 0
/* 80583B84  40 80 00 08 */	bge lbl_80583B8C
/* 80583B88  48 00 00 18 */	b lbl_80583BA0
lbl_80583B8C:
/* 80583B8C  3B E0 00 00 */	li r31, 0
/* 80583B90  48 00 00 10 */	b lbl_80583BA0
lbl_80583B94:
/* 80583B94  38 00 00 01 */	li r0, 1
/* 80583B98  3B E0 00 01 */	li r31, 1
/* 80583B9C  90 1D 09 B0 */	stw r0, 0x9b0(r29)
lbl_80583BA0:
/* 80583BA0  2C 1F FF FF */	cmpwi r31, -1
/* 80583BA4  41 82 00 78 */	beq lbl_80583C1C
/* 80583BA8  80 9E 1F 60 */	lwz r4, 0x1f60(r30)
/* 80583BAC  A0 64 00 00 */	lhz r3, 0(r4)
/* 80583BB0  28 03 20 00 */	cmplwi r3, 0x2000
/* 80583BB4  41 80 00 2C */	blt lbl_80583BE0
/* 80583BB8  28 03 20 FF */	cmplwi r3, 0x20ff
/* 80583BBC  41 81 00 24 */	bgt lbl_80583BE0
/* 80583BC0  38 63 E0 00 */	addi r3, r3, -8192
/* 80583BC4  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 80583BC8  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80583BCC  7C 03 00 50 */	subf r0, r3, r0
/* 80583BD0  54 00 30 3E */	rotlwi r0, r0, 6
/* 80583BD4  7C 60 1A 14 */	add r3, r0, r3
/* 80583BD8  38 03 20 00 */	addi r0, r3, 0x2000
/* 80583BDC  B0 04 00 00 */	sth r0, 0(r4)
lbl_80583BE0:
/* 80583BE0  38 60 00 04 */	li r3, 4
/* 80583BE4  38 80 00 09 */	li r4, 9
/* 80583BE8  38 A0 00 00 */	li r5, 0
/* 80583BEC  4B E1 48 4D */	bl mDemo_Set_OrderValue
/* 80583BF0  38 60 00 1B */	li r3, 0x1b
/* 80583BF4  4B FF E1 95 */	bl aNSC_get_msg_no
/* 80583BF8  7C 7F 1B 78 */	mr r31, r3
/* 80583BFC  4B E3 BA AD */	bl func_803BF6A8
/* 80583C00  7F A4 EB 78 */	mr r4, r29
/* 80583C04  7F E5 FB 78 */	mr r5, r31
/* 80583C08  4B FF E1 C9 */	bl aNSC_Set_continue_msg_num
/* 80583C0C  7F A3 EB 78 */	mr r3, r29
/* 80583C10  7F C4 F3 78 */	mr r4, r30
/* 80583C14  38 A0 00 15 */	li r5, 0x15
/* 80583C18  48 00 23 A9 */	bl aNSC_setupAction
lbl_80583C1C:
/* 80583C1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80583C20  4B B1 73 01 */	bl func_8009AF20
/* 80583C24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80583C28  7C 08 03 A6 */	mtlr r0
/* 80583C2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80583C30  4E 80 00 20 */	blr 
