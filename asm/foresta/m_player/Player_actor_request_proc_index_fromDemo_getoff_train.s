lbl_804FE124:
/* 804FE124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE128  7C 08 02 A6 */	mflr r0
/* 804FE12C  2C 05 00 00 */	cmpwi r5, 0
/* 804FE130  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE138  7C 9F 23 78 */	mr r31, r4
/* 804FE13C  41 82 00 38 */	beq lbl_804FE174
/* 804FE140  4B FD 72 2D */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FE144  7F E3 FB 78 */	mr r3, r31
/* 804FE148  38 80 00 00 */	li r4, 0
/* 804FE14C  38 A0 00 00 */	li r5, 0
/* 804FE150  38 C0 00 13 */	li r6, 0x13
/* 804FE154  4B FF EB ED */	bl func_804FCD40
/* 804FE158  2C 03 00 00 */	cmpwi r3, 0
/* 804FE15C  41 82 00 18 */	beq lbl_804FE174
/* 804FE160  4B FD 9D F9 */	bl Player_actor_Get_DemoOrder
/* 804FE164  2C 03 00 03 */	cmpwi r3, 3
/* 804FE168  40 82 00 0C */	bne lbl_804FE174
/* 804FE16C  38 60 00 00 */	li r3, 0
/* 804FE170  4B FD 9E 15 */	bl Player_actor_Set_DemoOrder
lbl_804FE174:
/* 804FE174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE17C  7C 08 03 A6 */	mtlr r0
/* 804FE180  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE184  4E 80 00 20 */	blr 
