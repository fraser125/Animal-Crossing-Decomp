lbl_804FC204:
/* 804FC204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC208  7C 08 02 A6 */	mflr r0
/* 804FC20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC210  80 03 0D 24 */	lwz r0, 0xd24(r3)
/* 804FC214  2C 00 00 00 */	cmpwi r0, 0
/* 804FC218  40 82 00 08 */	bne lbl_804FC220
/* 804FC21C  4B FD B4 79 */	bl Player_actor_Set_item_matrix_set
lbl_804FC220:
/* 804FC220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC224  7C 08 03 A6 */	mtlr r0
/* 804FC228  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC22C  4E 80 00 20 */	blr 
