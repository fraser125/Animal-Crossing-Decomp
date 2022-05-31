lbl_804D47E8:
/* 804D47E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D47EC  7C 08 02 A6 */	mflr r0
/* 804D47F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D47F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D47F8  7C 9F 23 78 */	mr r31, r4
/* 804D47FC  4B F0 4E 45 */	bl get_player_actor_withoutCheck
/* 804D4800  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D4804  48 00 C1 A1 */	bl Player_actor_Get_ItemKind
/* 804D4808  7C 60 07 74 */	extsb r0, r3
/* 804D480C  38 60 00 00 */	li r3, 0
/* 804D4810  2C 00 00 47 */	cmpwi r0, 0x47
/* 804D4814  41 80 00 10 */	blt lbl_804D4824
/* 804D4818  2C 00 00 4F */	cmpwi r0, 0x4f
/* 804D481C  40 80 00 08 */	bge lbl_804D4824
/* 804D4820  38 60 00 01 */	li r3, 1
lbl_804D4824:
/* 804D4824  2C 03 00 00 */	cmpwi r3, 0
/* 804D4828  41 82 00 5C */	beq lbl_804D4884
/* 804D482C  4B EC 66 8D */	bl mEv_CheckTitleDemo
/* 804D4830  2C 03 00 00 */	cmpwi r3, 0
/* 804D4834  40 81 00 28 */	ble lbl_804D485C
/* 804D4838  4B F0 95 5D */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D483C  2C 1F 00 00 */	cmpwi r31, 0
/* 804D4840  41 82 00 10 */	beq lbl_804D4850
/* 804D4844  88 63 00 38 */	lbz r3, 0x38(r3)
/* 804D4848  7C 63 07 74 */	extsb r3, r3
/* 804D484C  48 00 00 3C */	b lbl_804D4888
lbl_804D4850:
/* 804D4850  88 63 00 39 */	lbz r3, 0x39(r3)
/* 804D4854  7C 63 07 74 */	extsb r3, r3
/* 804D4858  48 00 00 30 */	b lbl_804D4888
lbl_804D485C:
/* 804D485C  2C 1F 00 00 */	cmpwi r31, 0
/* 804D4860  41 82 00 14 */	beq lbl_804D4874
/* 804D4864  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D4868  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804D486C  4B EC 16 A5 */	bl chkTrigger
/* 804D4870  48 00 00 18 */	b lbl_804D4888
lbl_804D4874:
/* 804D4874  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D4878  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804D487C  4B EC 15 F5 */	bl chkButton
/* 804D4880  48 00 00 08 */	b lbl_804D4888
lbl_804D4884:
/* 804D4884  38 60 00 00 */	li r3, 0
lbl_804D4888:
/* 804D4888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D488C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D4890  7C 08 03 A6 */	mtlr r0
/* 804D4894  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4898  4E 80 00 20 */	blr 
