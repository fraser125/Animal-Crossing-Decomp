lbl_803DD9B4:
/* 803DD9B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD9B8  7C 08 02 A6 */	mflr r0
/* 803DD9BC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DD9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD9C4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DD9C8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD9CC  4B FF BC 75 */	bl get_player_actor_withoutCheck
/* 803DD9D0  88 63 11 2B */	lbz r3, 0x112b(r3)
/* 803DD9D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DD9D8  7C 63 07 74 */	extsb r3, r3
/* 803DD9DC  7C 08 03 A6 */	mtlr r0
/* 803DD9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DD9E4  4E 80 00 20 */	blr 
