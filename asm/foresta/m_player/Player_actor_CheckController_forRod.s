lbl_804D4674:
/* 804D4674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4678  7C 08 02 A6 */	mflr r0
/* 804D467C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4680  4B F0 4F C1 */	bl get_player_actor_withoutCheck
/* 804D4684  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D4688  48 00 C3 1D */	bl Player_actor_Get_ItemKind
/* 804D468C  7C 60 07 74 */	extsb r0, r3
/* 804D4690  38 60 00 00 */	li r3, 0
/* 804D4694  2C 00 00 33 */	cmpwi r0, 0x33
/* 804D4698  41 80 00 10 */	blt lbl_804D46A8
/* 804D469C  2C 00 00 35 */	cmpwi r0, 0x35
/* 804D46A0  40 80 00 08 */	bge lbl_804D46A8
/* 804D46A4  38 60 00 01 */	li r3, 1
lbl_804D46A8:
/* 804D46A8  2C 03 00 00 */	cmpwi r3, 0
/* 804D46AC  41 82 00 30 */	beq lbl_804D46DC
/* 804D46B0  4B EC 68 09 */	bl mEv_CheckTitleDemo
/* 804D46B4  2C 03 00 00 */	cmpwi r3, 0
/* 804D46B8  40 81 00 14 */	ble lbl_804D46CC
/* 804D46BC  4B F0 96 D9 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D46C0  88 63 00 38 */	lbz r3, 0x38(r3)
/* 804D46C4  7C 63 07 74 */	extsb r3, r3
/* 804D46C8  48 00 00 18 */	b lbl_804D46E0
lbl_804D46CC:
/* 804D46CC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D46D0  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804D46D4  4B EC 18 3D */	bl chkTrigger
/* 804D46D8  48 00 00 08 */	b lbl_804D46E0
lbl_804D46DC:
/* 804D46DC  38 60 00 00 */	li r3, 0
lbl_804D46E0:
/* 804D46E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D46E4  7C 08 03 A6 */	mtlr r0
/* 804D46E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D46EC  4E 80 00 20 */	blr 
