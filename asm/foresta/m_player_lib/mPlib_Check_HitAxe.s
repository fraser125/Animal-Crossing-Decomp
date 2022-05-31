lbl_803DBF80:
/* 803DBF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DBF84  7C 08 02 A6 */	mflr r0
/* 803DBF88  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DBF90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DBF94  93 C1 00 08 */	stw r30, 8(r1)
/* 803DBF98  7C 7E 1B 78 */	mr r30, r3
/* 803DBF9C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBFA0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBFA4  4B FF D6 9D */	bl get_player_actor_withoutCheck
/* 803DBFA8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBFAC  7C 7F 1B 78 */	mr r31, r3
/* 803DBFB0  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DBFB4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DBFB8  4B FF D6 89 */	bl get_player_actor_withoutCheck
/* 803DBFBC  81 83 13 40 */	lwz r12, 0x1340(r3)
/* 803DBFC0  7F E3 FB 78 */	mr r3, r31
/* 803DBFC4  7F C4 F3 78 */	mr r4, r30
/* 803DBFC8  7D 89 03 A6 */	mtctr r12
/* 803DBFCC  4E 80 04 21 */	bctrl 
/* 803DBFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DBFD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DBFD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DBFDC  7C 08 03 A6 */	mtlr r0
/* 803DBFE0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DBFE4  4E 80 00 20 */	blr 
