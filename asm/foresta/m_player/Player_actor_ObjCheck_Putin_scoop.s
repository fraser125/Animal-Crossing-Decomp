lbl_804F9980:
/* 804F9980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9984  7C 08 02 A6 */	mflr r0
/* 804F9988  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F998C  4B FF E8 79 */	bl Player_actor_ObjCheck_Fill_scoop
/* 804F9990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9994  7C 08 03 A6 */	mtlr r0
/* 804F9998  38 21 00 10 */	addi r1, r1, 0x10
/* 804F999C  4E 80 00 20 */	blr 
