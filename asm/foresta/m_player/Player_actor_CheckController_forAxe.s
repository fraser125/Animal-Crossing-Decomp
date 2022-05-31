lbl_804D457C:
/* 804D457C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4580  7C 08 02 A6 */	mflr r0
/* 804D4584  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4588  4B F0 50 B9 */	bl get_player_actor_withoutCheck
/* 804D458C  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D4590  48 00 C4 15 */	bl Player_actor_Get_ItemKind
/* 804D4594  7C 60 07 75 */	extsb. r0, r3
/* 804D4598  38 80 00 00 */	li r4, 0
/* 804D459C  41 80 00 14 */	blt lbl_804D45B0
/* 804D45A0  7C 60 07 74 */	extsb r0, r3
/* 804D45A4  2C 00 00 09 */	cmpwi r0, 9
/* 804D45A8  40 80 00 08 */	bge lbl_804D45B0
/* 804D45AC  38 80 00 01 */	li r4, 1
lbl_804D45B0:
/* 804D45B0  2C 04 00 00 */	cmpwi r4, 0
/* 804D45B4  41 82 00 30 */	beq lbl_804D45E4
/* 804D45B8  4B EC 69 01 */	bl mEv_CheckTitleDemo
/* 804D45BC  2C 03 00 00 */	cmpwi r3, 0
/* 804D45C0  40 81 00 14 */	ble lbl_804D45D4
/* 804D45C4  4B F0 97 D1 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D45C8  88 63 00 38 */	lbz r3, 0x38(r3)
/* 804D45CC  7C 63 07 74 */	extsb r3, r3
/* 804D45D0  48 00 00 18 */	b lbl_804D45E8
lbl_804D45D4:
/* 804D45D4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D45D8  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804D45DC  4B EC 19 35 */	bl chkTrigger
/* 804D45E0  48 00 00 08 */	b lbl_804D45E8
lbl_804D45E4:
/* 804D45E4  38 60 00 00 */	li r3, 0
lbl_804D45E8:
/* 804D45E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D45EC  7C 08 03 A6 */	mtlr r0
/* 804D45F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D45F4  4E 80 00 20 */	blr 
