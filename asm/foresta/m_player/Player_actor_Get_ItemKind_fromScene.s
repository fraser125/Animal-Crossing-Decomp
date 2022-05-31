lbl_804E0964:
/* 804E0964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0968  7C 08 02 A6 */	mflr r0
/* 804E096C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E0970  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0974  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E0978  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804E097C  4B FF 77 9D */	bl Player_actor_CheckScene_AbleOutItem
/* 804E0980  2C 03 00 00 */	cmpwi r3, 0
/* 804E0984  41 82 00 0C */	beq lbl_804E0990
/* 804E0988  4B FF FF B9 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804E098C  48 00 00 08 */	b lbl_804E0994
lbl_804E0990:
/* 804E0990  38 60 FF FF */	li r3, -1
lbl_804E0994:
/* 804E0994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0998  7C 08 03 A6 */	mtlr r0
/* 804E099C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E09A0  4E 80 00 20 */	blr 
