lbl_804D45F8:
/* 804D45F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D45FC  7C 08 02 A6 */	mflr r0
/* 804D4600  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4604  4B F0 50 3D */	bl get_player_actor_withoutCheck
/* 804D4608  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D460C  48 00 C3 99 */	bl Player_actor_Get_ItemKind
/* 804D4610  7C 60 07 74 */	extsb r0, r3
/* 804D4614  38 60 00 00 */	li r3, 0
/* 804D4618  2C 00 00 09 */	cmpwi r0, 9
/* 804D461C  41 80 00 10 */	blt lbl_804D462C
/* 804D4620  2C 00 00 0B */	cmpwi r0, 0xb
/* 804D4624  40 80 00 08 */	bge lbl_804D462C
/* 804D4628  38 60 00 01 */	li r3, 1
lbl_804D462C:
/* 804D462C  2C 03 00 00 */	cmpwi r3, 0
/* 804D4630  41 82 00 30 */	beq lbl_804D4660
/* 804D4634  4B EC 68 85 */	bl mEv_CheckTitleDemo
/* 804D4638  2C 03 00 00 */	cmpwi r3, 0
/* 804D463C  40 81 00 14 */	ble lbl_804D4650
/* 804D4640  4B F0 97 55 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4644  88 63 00 39 */	lbz r3, 0x39(r3)
/* 804D4648  7C 63 07 74 */	extsb r3, r3
/* 804D464C  48 00 00 18 */	b lbl_804D4664
lbl_804D4650:
/* 804D4650  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D4654  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804D4658  4B EC 18 19 */	bl chkButton
/* 804D465C  48 00 00 08 */	b lbl_804D4664
lbl_804D4660:
/* 804D4660  38 60 00 00 */	li r3, 0
lbl_804D4664:
/* 804D4664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4668  7C 08 03 A6 */	mtlr r0
/* 804D466C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4670  4E 80 00 20 */	blr 
