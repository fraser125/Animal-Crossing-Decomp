lbl_8051D404:
/* 8051D404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051D408  7C 08 02 A6 */	mflr r0
/* 8051D40C  38 80 00 01 */	li r4, 1
/* 8051D410  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051D414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051D418  7C 7F 1B 78 */	mr r31, r3
/* 8051D41C  38 60 00 04 */	li r3, 4
/* 8051D420  4B E7 B0 5D */	bl mDemo_Get_OrderValue
/* 8051D424  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8051D428  2C 00 00 02 */	cmpwi r0, 2
/* 8051D42C  40 82 00 64 */	bne lbl_8051D490
/* 8051D430  A0 BF 09 A0 */	lhz r5, 0x9a0(r31)
/* 8051D434  38 60 00 05 */	li r3, 5
/* 8051D438  38 80 00 00 */	li r4, 0
/* 8051D43C  4B E7 AF FD */	bl mDemo_Set_OrderValue
/* 8051D440  38 60 00 05 */	li r3, 5
/* 8051D444  38 80 00 01 */	li r4, 1
/* 8051D448  38 A0 00 07 */	li r5, 7
/* 8051D44C  4B E7 AF ED */	bl mDemo_Set_OrderValue
/* 8051D450  38 60 00 05 */	li r3, 5
/* 8051D454  38 80 00 02 */	li r4, 2
/* 8051D458  38 A0 00 01 */	li r5, 1
/* 8051D45C  4B E7 AF DD */	bl mDemo_Set_OrderValue
/* 8051D460  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051D464  A0 9F 09 A0 */	lhz r4, 0x9a0(r31)
/* 8051D468  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051D46C  38 A0 00 00 */	li r5, 0
/* 8051D470  3C 63 00 02 */	addis r3, r3, 2
/* 8051D474  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051D478  4B EC 3A 91 */	bl mPr_SetFreePossessionItem
/* 8051D47C  4B EA 22 2D */	bl func_803BF6A8
/* 8051D480  4B EA 25 C5 */	bl mMsg_request_main_disappear_wait_type1
/* 8051D484  7F E3 FB 78 */	mr r3, r31
/* 8051D488  38 80 00 04 */	li r4, 4
/* 8051D48C  48 00 01 0D */	bl aEDSN_change_talk_proc
lbl_8051D490:
/* 8051D490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051D498  7C 08 03 A6 */	mtlr r0
/* 8051D49C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051D4A0  4E 80 00 20 */	blr 
