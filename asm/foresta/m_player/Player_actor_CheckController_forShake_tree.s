lbl_804D489C:
/* 804D489C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D48A0  7C 08 02 A6 */	mflr r0
/* 804D48A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D48A8  4B F0 4D 99 */	bl get_player_actor_withoutCheck
/* 804D48AC  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D48B0  48 00 C0 F5 */	bl Player_actor_Get_ItemKind
/* 804D48B4  7C 60 07 75 */	extsb. r0, r3
/* 804D48B8  41 80 00 6C */	blt lbl_804D4924
/* 804D48BC  7C 60 07 74 */	extsb r0, r3
/* 804D48C0  2C 00 00 50 */	cmpwi r0, 0x50
/* 804D48C4  40 80 00 60 */	bge lbl_804D4924
/* 804D48C8  2C 00 00 0B */	cmpwi r0, 0xb
/* 804D48CC  38 80 00 00 */	li r4, 0
/* 804D48D0  41 80 00 0C */	blt lbl_804D48DC
/* 804D48D4  2C 00 00 33 */	cmpwi r0, 0x33
/* 804D48D8  41 80 00 40 */	blt lbl_804D4918
lbl_804D48DC:
/* 804D48DC  7C 60 07 74 */	extsb r0, r3
/* 804D48E0  2C 00 00 37 */	cmpwi r0, 0x37
/* 804D48E4  41 80 00 0C */	blt lbl_804D48F0
/* 804D48E8  2C 00 00 3F */	cmpwi r0, 0x3f
/* 804D48EC  41 80 00 2C */	blt lbl_804D4918
lbl_804D48F0:
/* 804D48F0  7C 60 07 74 */	extsb r0, r3
/* 804D48F4  2C 00 00 3F */	cmpwi r0, 0x3f
/* 804D48F8  41 80 00 0C */	blt lbl_804D4904
/* 804D48FC  2C 00 00 47 */	cmpwi r0, 0x47
/* 804D4900  41 80 00 18 */	blt lbl_804D4918
lbl_804D4904:
/* 804D4904  7C 60 07 74 */	extsb r0, r3
/* 804D4908  2C 00 00 47 */	cmpwi r0, 0x47
/* 804D490C  41 80 00 10 */	blt lbl_804D491C
/* 804D4910  2C 00 00 4F */	cmpwi r0, 0x4f
/* 804D4914  40 80 00 08 */	bge lbl_804D491C
lbl_804D4918:
/* 804D4918  38 80 00 01 */	li r4, 1
lbl_804D491C:
/* 804D491C  2C 04 00 00 */	cmpwi r4, 0
/* 804D4920  41 82 00 4C */	beq lbl_804D496C
lbl_804D4924:
/* 804D4924  4B EC 65 95 */	bl mEv_CheckTitleDemo
/* 804D4928  2C 03 00 00 */	cmpwi r3, 0
/* 804D492C  40 81 00 30 */	ble lbl_804D495C
/* 804D4930  4B F0 94 65 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4934  88 03 00 38 */	lbz r0, 0x38(r3)
/* 804D4938  38 80 00 00 */	li r4, 0
/* 804D493C  7C 00 07 75 */	extsb. r0, r0
/* 804D4940  41 82 00 14 */	beq lbl_804D4954
/* 804D4944  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 804D4948  7C 00 07 75 */	extsb. r0, r0
/* 804D494C  40 82 00 08 */	bne lbl_804D4954
/* 804D4950  38 80 00 01 */	li r4, 1
lbl_804D4954:
/* 804D4954  7C 83 23 78 */	mr r3, r4
/* 804D4958  48 00 00 18 */	b lbl_804D4970
lbl_804D495C:
/* 804D495C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D4960  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804D4964  4B EC 15 AD */	bl chkTrigger
/* 804D4968  48 00 00 08 */	b lbl_804D4970
lbl_804D496C:
/* 804D496C  38 60 00 00 */	li r3, 0
lbl_804D4970:
/* 804D4970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4974  7C 08 03 A6 */	mtlr r0
/* 804D4978  38 21 00 10 */	addi r1, r1, 0x10
/* 804D497C  4E 80 00 20 */	blr 
