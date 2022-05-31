lbl_8048813C:
/* 8048813C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80488140  7C 08 02 A6 */	mflr r0
/* 80488144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80488148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048814C  7C 7F 1B 78 */	mr r31, r3
/* 80488150  4B F3 75 59 */	bl func_803BF6A8
/* 80488154  4B F3 79 15 */	bl mMsg_request_main_disappear_wait_type2
/* 80488158  4B F3 75 51 */	bl func_803BF6A8
/* 8048815C  4B F3 8B E5 */	bl mMsg_Set_LockContinue
/* 80488160  38 60 00 01 */	li r3, 1
/* 80488164  38 00 00 09 */	li r0, 9
/* 80488168  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8048816C  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80488170  4B F3 75 39 */	bl func_803BF6A8
/* 80488174  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 80488178  4B F3 7E 4D */	bl mMsg_Set_continue_msg_num
/* 8048817C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80488180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80488184  7C 08 03 A6 */	mtlr r0
/* 80488188  38 21 00 10 */	addi r1, r1, 0x10
/* 8048818C  4E 80 00 20 */	blr 
