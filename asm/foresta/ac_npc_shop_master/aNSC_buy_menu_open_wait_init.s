lbl_8057BCF0:
/* 8057BCF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BCF4  7C 08 02 A6 */	mflr r0
/* 8057BCF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BCFC  4B E4 39 AD */	bl func_803BF6A8
/* 8057BD00  4B E4 3D 45 */	bl mMsg_request_main_disappear_wait_type1
/* 8057BD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BD08  7C 08 03 A6 */	mtlr r0
/* 8057BD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BD10  4E 80 00 20 */	blr 
