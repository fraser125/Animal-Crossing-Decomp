lbl_8055E60C:
/* 8055E60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E610  7C 08 02 A6 */	mflr r0
/* 8055E614  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E618  4B E6 10 91 */	bl func_803BF6A8
/* 8055E61C  4B E6 14 29 */	bl mMsg_request_main_disappear_wait_type1
/* 8055E620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E624  7C 08 03 A6 */	mtlr r0
/* 8055E628  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E62C  4E 80 00 20 */	blr 
