lbl_805503AC:
/* 805503AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805503B0  7C 08 02 A6 */	mflr r0
/* 805503B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805503B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805503BC  4B B4 AB 19 */	bl func_8009AED4
/* 805503C0  7C 7D 1B 78 */	mr r29, r3
/* 805503C4  7C 9E 23 78 */	mr r30, r4
/* 805503C8  38 60 00 04 */	li r3, 4
/* 805503CC  38 80 00 09 */	li r4, 9
/* 805503D0  4B E4 80 AD */	bl mDemo_Get_OrderValue
/* 805503D4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805503D8  41 82 00 B8 */	beq lbl_80550490
/* 805503DC  3B E0 FF FF */	li r31, -1
/* 805503E0  4B E3 31 61 */	bl func_80383540
/* 805503E4  4B E3 37 89 */	bl mChoice_Get_ChoseNum
/* 805503E8  2C 03 00 01 */	cmpwi r3, 1
/* 805503EC  41 82 00 1C */	beq lbl_80550408
/* 805503F0  40 80 00 24 */	bge lbl_80550414
/* 805503F4  2C 03 00 00 */	cmpwi r3, 0
/* 805503F8  40 80 00 08 */	bge lbl_80550400
/* 805503FC  48 00 00 18 */	b lbl_80550414
lbl_80550400:
/* 80550400  3B E0 00 00 */	li r31, 0
/* 80550404  48 00 00 10 */	b lbl_80550414
lbl_80550408:
/* 80550408  38 00 00 01 */	li r0, 1
/* 8055040C  3B E0 00 01 */	li r31, 1
/* 80550410  90 1D 09 B0 */	stw r0, 0x9b0(r29)
lbl_80550414:
/* 80550414  2C 1F FF FF */	cmpwi r31, -1
/* 80550418  41 82 00 78 */	beq lbl_80550490
/* 8055041C  80 9E 1F 60 */	lwz r4, 0x1f60(r30)
/* 80550420  A0 64 00 00 */	lhz r3, 0(r4)
/* 80550424  28 03 20 00 */	cmplwi r3, 0x2000
/* 80550428  41 80 00 2C */	blt lbl_80550454
/* 8055042C  28 03 20 FF */	cmplwi r3, 0x20ff
/* 80550430  41 81 00 24 */	bgt lbl_80550454
/* 80550434  38 63 E0 00 */	addi r3, r3, -8192
/* 80550438  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 8055043C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80550440  7C 03 00 50 */	subf r0, r3, r0
/* 80550444  54 00 30 3E */	rotlwi r0, r0, 6
/* 80550448  7C 60 1A 14 */	add r3, r0, r3
/* 8055044C  38 03 20 00 */	addi r0, r3, 0x2000
/* 80550450  B0 04 00 00 */	sth r0, 0(r4)
lbl_80550454:
/* 80550454  38 60 00 04 */	li r3, 4
/* 80550458  38 80 00 09 */	li r4, 9
/* 8055045C  38 A0 00 00 */	li r5, 0
/* 80550460  4B E4 7F D9 */	bl mDemo_Set_OrderValue
/* 80550464  38 60 00 1B */	li r3, 0x1b
/* 80550468  4B FF E1 95 */	bl aNSC_get_msg_no
/* 8055046C  7C 7F 1B 78 */	mr r31, r3
/* 80550470  4B E6 F2 39 */	bl func_803BF6A8
/* 80550474  7F A4 EB 78 */	mr r4, r29
/* 80550478  7F E5 FB 78 */	mr r5, r31
/* 8055047C  4B FF E1 C9 */	bl aNSC_Set_continue_msg_num
/* 80550480  7F A3 EB 78 */	mr r3, r29
/* 80550484  7F C4 F3 78 */	mr r4, r30
/* 80550488  38 A0 00 15 */	li r5, 0x15
/* 8055048C  48 00 23 A9 */	bl aNSC_setupAction
lbl_80550490:
/* 80550490  39 61 00 20 */	addi r11, r1, 0x20
/* 80550494  4B B4 AA 8D */	bl func_8009AF20
/* 80550498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055049C  7C 08 03 A6 */	mtlr r0
/* 805504A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805504A4  4E 80 00 20 */	blr 
