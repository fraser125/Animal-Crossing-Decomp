lbl_804E13FC:
/* 804E13FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E1400  7C 08 02 A6 */	mflr r0
/* 804E1404  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E1408  39 61 00 20 */	addi r11, r1, 0x20
/* 804E140C  4B BB 9A C5 */	bl func_8009AED0
/* 804E1410  7C 7C 1B 78 */	mr r28, r3
/* 804E1414  7C 9D 23 78 */	mr r29, r4
/* 804E1418  4B F2 AD BD */	bl Matrix_push
/* 804E141C  3C 80 80 64 */	lis r4, lit_6133@ha /* 0x80647DD0@ha */
/* 804E1420  38 7C 0E 2C */	addi r3, r28, 0xe2c
/* 804E1424  C0 24 7D D0 */	lfs f1, lit_6133@l(r4)  /* 0x80647DD0@l */
/* 804E1428  4B F2 C1 09 */	bl Matrix_Position_VecZ
/* 804E142C  4B F2 AD E9 */	bl Matrix_pull
/* 804E1430  80 1C 0D F4 */	lwz r0, 0xdf4(r28)
/* 804E1434  54 00 10 3A */	slwi r0, r0, 2
/* 804E1438  7C 7C 02 14 */	add r3, r28, r0
/* 804E143C  80 63 0D E4 */	lwz r3, 0xde4(r3)
/* 804E1440  2C 03 00 00 */	cmpwi r3, 0
/* 804E1444  41 80 00 30 */	blt lbl_804E1474
/* 804E1448  2C 03 00 32 */	cmpwi r3, 0x32
/* 804E144C  40 80 00 28 */	bge lbl_804E1474
/* 804E1450  83 FD 00 00 */	lwz r31, 0(r29)
/* 804E1454  3C 00 DE 00 */	lis r0, 0xde00
/* 804E1458  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804E145C  90 1E 00 00 */	stw r0, 0(r30)
/* 804E1460  7F DD F3 78 */	mr r29, r30
/* 804E1464  3B DE 00 08 */	addi r30, r30, 8
/* 804E1468  4B EF 78 21 */	bl mPlib_Get_Item_DataPointer
/* 804E146C  90 7D 00 04 */	stw r3, 4(r29)
/* 804E1470  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804E1474:
/* 804E1474  38 00 00 00 */	li r0, 0
/* 804E1478  90 1C 0F 4C */	stw r0, 0xf4c(r28)
/* 804E147C  90 1C 11 70 */	stw r0, 0x1170(r28)
/* 804E1480  39 61 00 20 */	addi r11, r1, 0x20
/* 804E1484  4B BB 9A 99 */	bl func_8009AF1C
/* 804E1488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E148C  7C 08 03 A6 */	mtlr r0
/* 804E1490  38 21 00 20 */	addi r1, r1, 0x20
/* 804E1494  4E 80 00 20 */	blr 
