lbl_804F08B8:
/* 804F08B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F08BC  7C 08 02 A6 */	mflr r0
/* 804F08C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F08C4  4B FE 73 D5 */	bl Player_actor_BGcheck_common_type1
/* 804F08C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F08CC  7C 08 03 A6 */	mtlr r0
/* 804F08D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F08D4  4E 80 00 20 */	blr 
