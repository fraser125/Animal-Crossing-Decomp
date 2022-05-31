lbl_804FFE08:
/* 804FFE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFE0C  7C 08 02 A6 */	mflr r0
/* 804FFE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFE14  4B FD 7E 85 */	bl Player_actor_BGcheck_common_type1
/* 804FFE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFE1C  7C 08 03 A6 */	mtlr r0
/* 804FFE20  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFE24  4E 80 00 20 */	blr 
