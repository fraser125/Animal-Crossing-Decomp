lbl_803DC250:
/* 803DC250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DC254  7C 08 02 A6 */	mflr r0
/* 803DC258  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DC260  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC264  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC268  4B FF D3 D9 */	bl get_player_actor_withoutCheck
/* 803DC26C  88 63 11 98 */	lbz r3, 0x1198(r3)
/* 803DC270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DC274  7C 63 07 74 */	extsb r3, r3
/* 803DC278  7C 08 03 A6 */	mtlr r0
/* 803DC27C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DC280  4E 80 00 20 */	blr 
