lbl_804FE754:
/* 804FE754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE758  7C 08 02 A6 */	mflr r0
/* 804FE75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE760  4B FD 95 91 */	bl Player_actor_BGcheck_common_type2
/* 804FE764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE768  7C 08 03 A6 */	mtlr r0
/* 804FE76C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE770  4E 80 00 20 */	blr 
