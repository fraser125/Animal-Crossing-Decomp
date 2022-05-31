lbl_80423E84:
/* 80423E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80423E88  7C 08 02 A6 */	mflr r0
/* 80423E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80423E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80423E94  7C 7F 1B 78 */	mr r31, r3
/* 80423E98  4B F9 B8 11 */	bl func_803BF6A8
/* 80423E9C  4B F9 B8 A5 */	bl mMsg_Check_main_wait
/* 80423EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80423EA4  41 82 00 14 */	beq lbl_80423EB8
/* 80423EA8  4B F9 BA 2D */	bl mMsg_request_main_forceoff
/* 80423EAC  7F E3 FB 78 */	mr r3, r31
/* 80423EB0  38 80 00 00 */	li r4, 0
/* 80423EB4  48 00 09 65 */	bl aFLAG_setup_action
lbl_80423EB8:
/* 80423EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80423EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80423EC0  7C 08 03 A6 */	mtlr r0
/* 80423EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80423EC8  4E 80 00 20 */	blr 
