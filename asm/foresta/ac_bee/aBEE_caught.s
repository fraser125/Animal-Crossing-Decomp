lbl_8050D3B8:
/* 8050D3B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050D3BC  7C 08 02 A6 */	mflr r0
/* 8050D3C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050D3C4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8050D3C8  7C 7F 1B 78 */	mr r31, r3
/* 8050D3CC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8050D3D0  7C 9E 23 78 */	mr r30, r4
/* 8050D3D4  80 03 04 4C */	lwz r0, 0x44c(r3)
/* 8050D3D8  28 00 00 00 */	cmplwi r0, 0
/* 8050D3DC  40 82 00 4C */	bne lbl_8050D428
/* 8050D3E0  38 00 00 08 */	li r0, 8
/* 8050D3E4  38 61 00 0C */	addi r3, r1, 0xc
/* 8050D3E8  90 01 00 08 */	stw r0, 8(r1)
/* 8050D3EC  38 9F 00 28 */	addi r4, r31, 0x28
/* 8050D3F0  4B EA DA CD */	bl xyz_t_move
/* 8050D3F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050D3F8  38 00 00 00 */	li r0, 0
/* 8050D3FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050D400  90 01 00 18 */	stw r0, 0x18(r1)
/* 8050D404  3C A3 00 02 */	addis r5, r3, 2
/* 8050D408  38 61 00 08 */	addi r3, r1, 8
/* 8050D40C  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 8050D410  38 80 00 01 */	li r4, 1
/* 8050D414  80 A5 60 88 */	lwz r5, 0x6088(r5)
/* 8050D418  81 85 00 00 */	lwz r12, 0(r5)
/* 8050D41C  7D 89 03 A6 */	mtctr r12
/* 8050D420  4E 80 04 21 */	bctrl 
/* 8050D424  90 7F 04 4C */	stw r3, 0x44c(r31)
lbl_8050D428:
/* 8050D428  80 7F 04 4C */	lwz r3, 0x44c(r31)
/* 8050D42C  28 03 00 00 */	cmplwi r3, 0
/* 8050D430  41 82 00 28 */	beq lbl_8050D458
/* 8050D434  38 80 00 00 */	li r4, 0
/* 8050D438  4B EC EC D9 */	bl mPlib_Change_item_net_catch_label
/* 8050D43C  2C 03 00 00 */	cmpwi r3, 0
/* 8050D440  41 82 00 44 */	beq lbl_8050D484
/* 8050D444  7F E3 FB 78 */	mr r3, r31
/* 8050D448  7F C5 F3 78 */	mr r5, r30
/* 8050D44C  38 80 00 05 */	li r4, 5
/* 8050D450  48 00 02 71 */	bl aBEE_setupAction
/* 8050D454  48 00 00 3C */	b lbl_8050D490
lbl_8050D458:
/* 8050D458  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8050D45C  38 03 00 01 */	addi r0, r3, 1
/* 8050D460  90 1F 04 50 */	stw r0, 0x450(r31)
/* 8050D464  80 1F 04 50 */	lwz r0, 0x450(r31)
/* 8050D468  2C 00 00 01 */	cmpwi r0, 1
/* 8050D46C  40 81 00 18 */	ble lbl_8050D484
/* 8050D470  7F E3 FB 78 */	mr r3, r31
/* 8050D474  7F C5 F3 78 */	mr r5, r30
/* 8050D478  38 80 00 05 */	li r4, 5
/* 8050D47C  48 00 02 45 */	bl aBEE_setupAction
/* 8050D480  48 00 00 10 */	b lbl_8050D490
lbl_8050D484:
/* 8050D484  7F E3 FB 78 */	mr r3, r31
/* 8050D488  7F C4 F3 78 */	mr r4, r30
/* 8050D48C  4B FF F5 F9 */	bl aBEE_fly_move_common
lbl_8050D490:
/* 8050D490  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050D494  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8050D498  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8050D49C  7C 08 03 A6 */	mtlr r0
/* 8050D4A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8050D4A4  4E 80 00 20 */	blr 
