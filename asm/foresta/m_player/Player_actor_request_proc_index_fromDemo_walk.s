lbl_804FD8EC:
/* 804FD8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD8F0  7C 08 02 A6 */	mflr r0
/* 804FD8F4  2C 05 00 00 */	cmpwi r5, 0
/* 804FD8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD8FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FD900  7C 9F 23 78 */	mr r31, r4
/* 804FD904  41 82 00 4C */	beq lbl_804FD950
/* 804FD908  38 60 00 01 */	li r3, 1
/* 804FD90C  4B ED E1 AD */	bl mPlib_Set_end_player_demo_walk
/* 804FD910  4B ED E1 7D */	bl mPlib_Get_continue_player_after_demo_walk
/* 804FD914  2C 03 00 00 */	cmpwi r3, 0
/* 804FD918  40 82 00 3C */	bne lbl_804FD954
/* 804FD91C  7F E3 FB 78 */	mr r3, r31
/* 804FD920  38 80 00 00 */	li r4, 0
/* 804FD924  38 A0 00 00 */	li r5, 0
/* 804FD928  38 C0 00 13 */	li r6, 0x13
/* 804FD92C  4B FF F4 15 */	bl func_804FCD40
/* 804FD930  2C 03 00 00 */	cmpwi r3, 0
/* 804FD934  41 82 00 20 */	beq lbl_804FD954
/* 804FD938  4B FD A6 21 */	bl Player_actor_Get_DemoOrder
/* 804FD93C  2C 03 00 01 */	cmpwi r3, 1
/* 804FD940  40 82 00 14 */	bne lbl_804FD954
/* 804FD944  38 60 00 00 */	li r3, 0
/* 804FD948  4B FD A6 3D */	bl Player_actor_Set_DemoOrder
/* 804FD94C  48 00 00 08 */	b lbl_804FD954
lbl_804FD950:
/* 804FD950  4B FD C1 E5 */	bl Player_actor_Set_ScrollDemo_forDemo_wade
lbl_804FD954:
/* 804FD954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FD95C  7C 08 03 A6 */	mtlr r0
/* 804FD960  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD964  4E 80 00 20 */	blr 
