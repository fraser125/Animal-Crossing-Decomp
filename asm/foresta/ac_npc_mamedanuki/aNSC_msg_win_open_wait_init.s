lbl_8055E674:
/* 8055E674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E678  7C 08 02 A6 */	mflr r0
/* 8055E67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E680  4B E6 10 29 */	bl func_803BF6A8
/* 8055E684  4B E6 15 05 */	bl mMsg_request_main_appear_wait_type1
/* 8055E688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E68C  7C 08 03 A6 */	mtlr r0
/* 8055E690  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E694  4E 80 00 20 */	blr 
