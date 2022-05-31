lbl_803C051C:
/* 803C051C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0520  7C 08 02 A6 */	mflr r0
/* 803C0524  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0528  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C052C  38 63 00 20 */	addi r3, r3, 0x20
/* 803C0530  4B FF FF C1 */	bl mMsg_Get_MsgTimeEnd_time_forData
/* 803C0534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0538  7C 08 03 A6 */	mtlr r0
/* 803C053C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0540  4E 80 00 20 */	blr 
