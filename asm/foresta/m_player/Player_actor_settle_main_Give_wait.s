lbl_804FC170:
/* 804FC170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC174  7C 08 02 A6 */	mflr r0
/* 804FC178  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC17C  80 03 0D 24 */	lwz r0, 0xd24(r3)
/* 804FC180  2C 00 00 00 */	cmpwi r0, 0
/* 804FC184  40 82 00 08 */	bne lbl_804FC18C
/* 804FC188  4B FD B5 19 */	bl Player_actor_Unset_item_matrix_set
lbl_804FC18C:
/* 804FC18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC190  7C 08 03 A6 */	mtlr r0
/* 804FC194  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC198  4E 80 00 20 */	blr 
