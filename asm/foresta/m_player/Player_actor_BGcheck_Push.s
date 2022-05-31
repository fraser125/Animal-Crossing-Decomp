lbl_804EA828:
/* 804EA828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA82C  7C 08 02 A6 */	mflr r0
/* 804EA830  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA834  4B FE D5 01 */	bl Player_actor_BGcheck_common_type3
/* 804EA838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA83C  7C 08 03 A6 */	mtlr r0
/* 804EA840  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA844  4E 80 00 20 */	blr 
