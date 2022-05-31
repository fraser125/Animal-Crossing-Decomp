lbl_803ED378:
/* 803ED378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED37C  7C 08 02 A6 */	mflr r0
/* 803ED380  38 80 00 01 */	li r4, 1
/* 803ED384  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED38C  93 C1 00 08 */	stw r30, 8(r1)
/* 803ED390  7C 7E 1B 78 */	mr r30, r3
/* 803ED394  38 60 00 04 */	li r3, 4
/* 803ED398  4B FA B0 E5 */	bl mDemo_Get_OrderValue
/* 803ED39C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 803ED3A0  4B FD 23 09 */	bl func_803BF6A8
/* 803ED3A4  2C 1F 00 02 */	cmpwi r31, 2
/* 803ED3A8  7C 7F 1B 78 */	mr r31, r3
/* 803ED3AC  40 82 00 70 */	bne lbl_803ED41C
/* 803ED3B0  A0 BE 09 B0 */	lhz r5, 0x9b0(r30)
/* 803ED3B4  38 60 00 05 */	li r3, 5
/* 803ED3B8  38 80 00 00 */	li r4, 0
/* 803ED3BC  4B FA B0 7D */	bl mDemo_Set_OrderValue
/* 803ED3C0  38 60 00 05 */	li r3, 5
/* 803ED3C4  38 80 00 01 */	li r4, 1
/* 803ED3C8  38 A0 00 07 */	li r5, 7
/* 803ED3CC  4B FA B0 6D */	bl mDemo_Set_OrderValue
/* 803ED3D0  38 60 00 05 */	li r3, 5
/* 803ED3D4  38 80 00 02 */	li r4, 2
/* 803ED3D8  38 A0 00 00 */	li r5, 0
/* 803ED3DC  4B FA B0 5D */	bl mDemo_Set_OrderValue
/* 803ED3E0  88 9E 09 B3 */	lbz r4, 0x9b3(r30)
/* 803ED3E4  28 04 00 1C */	cmplwi r4, 0x1c
/* 803ED3E8  40 82 00 14 */	bne lbl_803ED3FC
/* 803ED3EC  7F E3 FB 78 */	mr r3, r31
/* 803ED3F0  38 80 34 2D */	li r4, 0x342d
/* 803ED3F4  4B FD 2B D1 */	bl mMsg_Set_continue_msg_num
/* 803ED3F8  48 00 00 1C */	b lbl_803ED414
lbl_803ED3FC:
/* 803ED3FC  7F E3 FB 78 */	mr r3, r31
/* 803ED400  38 84 34 22 */	addi r4, r4, 0x3422
/* 803ED404  4B FD 2B C1 */	bl mMsg_Set_continue_msg_num
/* 803ED408  88 7E 09 B3 */	lbz r3, 0x9b3(r30)
/* 803ED40C  38 03 00 01 */	addi r0, r3, 1
/* 803ED410  98 1E 09 B3 */	stb r0, 0x9b3(r30)
lbl_803ED414:
/* 803ED414  38 00 00 09 */	li r0, 9
/* 803ED418  98 1E 09 B2 */	stb r0, 0x9b2(r30)
lbl_803ED41C:
/* 803ED41C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED424  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ED428  7C 08 03 A6 */	mtlr r0
/* 803ED42C  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED430  4E 80 00 20 */	blr 
