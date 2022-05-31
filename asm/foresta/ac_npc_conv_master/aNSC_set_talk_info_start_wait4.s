lbl_80547C04:
/* 80547C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80547C08  7C 08 02 A6 */	mflr r0
/* 80547C0C  38 60 FF FF */	li r3, -1
/* 80547C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80547C14  4B FF F0 D1 */	bl aNSC_get_msg_no
/* 80547C18  4B E5 08 FD */	bl mDemo_Set_msg_num
/* 80547C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80547C20  7C 08 03 A6 */	mtlr r0
/* 80547C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80547C28  4E 80 00 20 */	blr 
