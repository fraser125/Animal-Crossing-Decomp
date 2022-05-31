lbl_804D46F0:
/* 804D46F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D46F4  7C 08 02 A6 */	mflr r0
/* 804D46F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D46FC  4B F0 4F 45 */	bl get_player_actor_withoutCheck
/* 804D4700  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D4704  48 00 C2 A1 */	bl Player_actor_Get_ItemKind
/* 804D4708  7C 60 07 74 */	extsb r0, r3
/* 804D470C  38 60 00 00 */	li r3, 0
/* 804D4710  2C 00 00 35 */	cmpwi r0, 0x35
/* 804D4714  41 80 00 10 */	blt lbl_804D4724
/* 804D4718  2C 00 00 37 */	cmpwi r0, 0x37
/* 804D471C  40 80 00 08 */	bge lbl_804D4724
/* 804D4720  38 60 00 01 */	li r3, 1
lbl_804D4724:
/* 804D4724  2C 03 00 00 */	cmpwi r3, 0
/* 804D4728  41 82 00 30 */	beq lbl_804D4758
/* 804D472C  4B EC 67 8D */	bl mEv_CheckTitleDemo
/* 804D4730  2C 03 00 00 */	cmpwi r3, 0
/* 804D4734  40 81 00 14 */	ble lbl_804D4748
/* 804D4738  4B F0 96 5D */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D473C  88 63 00 38 */	lbz r3, 0x38(r3)
/* 804D4740  7C 63 07 74 */	extsb r3, r3
/* 804D4744  48 00 00 18 */	b lbl_804D475C
lbl_804D4748:
/* 804D4748  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D474C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804D4750  4B EC 17 C1 */	bl chkTrigger
/* 804D4754  48 00 00 08 */	b lbl_804D475C
lbl_804D4758:
/* 804D4758  38 60 00 00 */	li r3, 0
lbl_804D475C:
/* 804D475C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4760  7C 08 03 A6 */	mtlr r0
/* 804D4764  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4768  4E 80 00 20 */	blr 
