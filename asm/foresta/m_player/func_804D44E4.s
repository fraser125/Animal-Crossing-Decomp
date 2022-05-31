lbl_804D44E4:
/* 804D44E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D44E8  7C 08 02 A6 */	mflr r0
/* 804D44EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D44F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D44F4  93 C1 00 08 */	stw r30, 8(r1)
/* 804D44F8  7C 7E 1B 78 */	mr r30, r3
/* 804D44FC  4B EC 69 BD */	bl mEv_CheckTitleDemo
/* 804D4500  2C 03 00 00 */	cmpwi r3, 0
/* 804D4504  40 81 00 58 */	ble lbl_804D455C
/* 804D4508  4B F0 98 8D */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D450C  7C 7F 1B 78 */	mr r31, r3
/* 804D4510  7F C3 F3 78 */	mr r3, r30
/* 804D4514  4B F0 51 2D */	bl get_player_actor_withoutCheck
/* 804D4518  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D451C  48 00 C4 89 */	bl Player_actor_Get_ItemKind
/* 804D4520  7C 60 07 75 */	extsb. r0, r3
/* 804D4524  38 80 00 00 */	li r4, 0
/* 804D4528  41 80 00 10 */	blt lbl_804D4538
/* 804D452C  7C 60 07 74 */	extsb r0, r3
/* 804D4530  2C 00 00 50 */	cmpwi r0, 0x50
/* 804D4534  41 80 00 20 */	blt lbl_804D4554
lbl_804D4538:
/* 804D4538  88 1F 00 38 */	lbz r0, 0x38(r31)
/* 804D453C  7C 00 07 75 */	extsb. r0, r0
/* 804D4540  41 82 00 14 */	beq lbl_804D4554
/* 804D4544  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 804D4548  7C 00 07 75 */	extsb. r0, r0
/* 804D454C  41 82 00 08 */	beq lbl_804D4554
/* 804D4550  38 80 00 01 */	li r4, 1
lbl_804D4554:
/* 804D4554  7C 83 23 78 */	mr r3, r4
/* 804D4558  48 00 00 0C */	b lbl_804D4564
lbl_804D455C:
/* 804D455C  38 60 40 00 */	li r3, 0x4000
/* 804D4560  4B EC 19 B1 */	bl chkTrigger
lbl_804D4564:
/* 804D4564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D456C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D4570  7C 08 03 A6 */	mtlr r0
/* 804D4574  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4578  4E 80 00 20 */	blr 
