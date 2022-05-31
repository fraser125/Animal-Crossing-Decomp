lbl_8056D3B0:
/* 8056D3B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056D3B4  7C 08 02 A6 */	mflr r0
/* 8056D3B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056D3BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8056D3C0  4B B2 DB 15 */	bl func_8009AED4
/* 8056D3C4  7C 7D 1B 78 */	mr r29, r3
/* 8056D3C8  7C 9E 23 78 */	mr r30, r4
/* 8056D3CC  38 60 00 04 */	li r3, 4
/* 8056D3D0  38 80 00 09 */	li r4, 9
/* 8056D3D4  4B E2 B0 A9 */	bl mDemo_Get_OrderValue
/* 8056D3D8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8056D3DC  41 82 00 80 */	beq lbl_8056D45C
/* 8056D3E0  4B E5 22 C9 */	bl func_803BF6A8
/* 8056D3E4  4B E5 38 B5 */	bl mMsg_Check_MainNormalContinue
/* 8056D3E8  2C 03 00 01 */	cmpwi r3, 1
/* 8056D3EC  40 82 00 70 */	bne lbl_8056D45C
/* 8056D3F0  3B E0 FF FF */	li r31, -1
/* 8056D3F4  4B E1 61 4D */	bl func_80383540
/* 8056D3F8  4B E1 67 75 */	bl mChoice_Get_ChoseNum
/* 8056D3FC  2C 03 00 01 */	cmpwi r3, 1
/* 8056D400  41 82 00 1C */	beq lbl_8056D41C
/* 8056D404  40 80 00 28 */	bge lbl_8056D42C
/* 8056D408  2C 03 00 00 */	cmpwi r3, 0
/* 8056D40C  40 80 00 08 */	bge lbl_8056D414
/* 8056D410  48 00 00 1C */	b lbl_8056D42C
lbl_8056D414:
/* 8056D414  3B E0 00 15 */	li r31, 0x15
/* 8056D418  48 00 00 14 */	b lbl_8056D42C
lbl_8056D41C:
/* 8056D41C  7F A3 EB 78 */	mr r3, r29
/* 8056D420  38 80 08 B3 */	li r4, 0x8b3
/* 8056D424  4B FF F0 41 */	bl func_8056C464
/* 8056D428  3B E0 00 01 */	li r31, 1
lbl_8056D42C:
/* 8056D42C  2C 1F FF FF */	cmpwi r31, -1
/* 8056D430  41 82 00 2C */	beq lbl_8056D45C
/* 8056D434  38 60 00 04 */	li r3, 4
/* 8056D438  38 80 00 09 */	li r4, 9
/* 8056D43C  38 A0 00 00 */	li r5, 0
/* 8056D440  4B E2 AF F9 */	bl mDemo_Set_OrderValue
/* 8056D444  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8056D448  7F A3 EB 78 */	mr r3, r29
/* 8056D44C  7F C4 F3 78 */	mr r4, r30
/* 8056D450  7F E5 FB 78 */	mr r5, r31
/* 8056D454  7D 89 03 A6 */	mtctr r12
/* 8056D458  4E 80 04 21 */	bctrl 
lbl_8056D45C:
/* 8056D45C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056D460  4B B2 DA C1 */	bl func_8009AF20
/* 8056D464  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056D468  7C 08 03 A6 */	mtlr r0
/* 8056D46C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056D470  4E 80 00 20 */	blr 
