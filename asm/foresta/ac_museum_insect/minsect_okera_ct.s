lbl_8046D6A8:
/* 8046D6A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046D6AC  7C 08 02 A6 */	mflr r0
/* 8046D6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046D6B4  48 00 0A 89 */	bl okera_dig_wait_process_init
/* 8046D6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046D6BC  7C 08 03 A6 */	mtlr r0
/* 8046D6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046D6C4  4E 80 00 20 */	blr 
