lbl_804D476C:
/* 804D476C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4770  7C 08 02 A6 */	mflr r0
/* 804D4774  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4778  4B F0 4E C9 */	bl get_player_actor_withoutCheck
/* 804D477C  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D4780  48 00 C2 25 */	bl Player_actor_Get_ItemKind
/* 804D4784  7C 60 07 74 */	extsb r0, r3
/* 804D4788  38 60 00 00 */	li r3, 0
/* 804D478C  2C 00 00 0B */	cmpwi r0, 0xb
/* 804D4790  41 80 00 10 */	blt lbl_804D47A0
/* 804D4794  2C 00 00 33 */	cmpwi r0, 0x33
/* 804D4798  40 80 00 08 */	bge lbl_804D47A0
/* 804D479C  38 60 00 01 */	li r3, 1
lbl_804D47A0:
/* 804D47A0  2C 03 00 00 */	cmpwi r3, 0
/* 804D47A4  41 82 00 30 */	beq lbl_804D47D4
/* 804D47A8  4B EC 67 11 */	bl mEv_CheckTitleDemo
/* 804D47AC  2C 03 00 00 */	cmpwi r3, 0
/* 804D47B0  40 81 00 14 */	ble lbl_804D47C4
/* 804D47B4  4B F0 95 E1 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D47B8  88 63 00 38 */	lbz r3, 0x38(r3)
/* 804D47BC  7C 63 07 74 */	extsb r3, r3
/* 804D47C0  48 00 00 18 */	b lbl_804D47D8
lbl_804D47C4:
/* 804D47C4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D47C8  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804D47CC  4B EC 17 45 */	bl chkTrigger
/* 804D47D0  48 00 00 08 */	b lbl_804D47D8
lbl_804D47D4:
/* 804D47D4  38 60 00 00 */	li r3, 0
lbl_804D47D8:
/* 804D47D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D47DC  7C 08 03 A6 */	mtlr r0
/* 804D47E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D47E4  4E 80 00 20 */	blr 
