lbl_8054AEC4:
/* 8054AEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AEC8  7C 08 02 A6 */	mflr r0
/* 8054AECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AED0  4B E7 47 D9 */	bl func_803BF6A8
/* 8054AED4  4B E7 5E 85 */	bl mMsg_Set_idling_req
/* 8054AED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AEDC  7C 08 03 A6 */	mtlr r0
/* 8054AEE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AEE4  4E 80 00 20 */	blr 
