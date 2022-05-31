lbl_803DA270:
/* 803DA270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA274  7C 08 02 A6 */	mflr r0
/* 803DA278  2C 04 00 00 */	cmpwi r4, 0
/* 803DA27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA284  7C 7F 1B 78 */	mr r31, r3
/* 803DA288  40 82 00 54 */	bne lbl_803DA2DC
/* 803DA28C  2C 05 00 00 */	cmpwi r5, 0
/* 803DA290  40 82 00 30 */	bne lbl_803DA2C0
/* 803DA294  4B FF F3 AD */	bl get_player_actor_withoutCheck
/* 803DA298  81 83 12 78 */	lwz r12, 0x1278(r3)
/* 803DA29C  3C 60 80 64 */	lis r3, lit_942@ha /* 0x80642FD8@ha */
/* 803DA2A0  38 83 2F D8 */	addi r4, r3, lit_942@l /* 0x80642FD8@l */
/* 803DA2A4  38 A0 00 13 */	li r5, 0x13
/* 803DA2A8  C0 24 00 00 */	lfs f1, 0(r4)
/* 803DA2AC  7F E3 FB 78 */	mr r3, r31
/* 803DA2B0  38 80 00 07 */	li r4, 7
/* 803DA2B4  7D 89 03 A6 */	mtctr r12
/* 803DA2B8  4E 80 04 21 */	bctrl 
/* 803DA2BC  48 00 00 2C */	b lbl_803DA2E8
lbl_803DA2C0:
/* 803DA2C0  4B FF F3 81 */	bl get_player_actor_withoutCheck
/* 803DA2C4  81 83 12 F8 */	lwz r12, 0x12f8(r3)
/* 803DA2C8  7F E3 FB 78 */	mr r3, r31
/* 803DA2CC  38 80 00 21 */	li r4, 0x21
/* 803DA2D0  7D 89 03 A6 */	mtctr r12
/* 803DA2D4  4E 80 04 21 */	bctrl 
/* 803DA2D8  48 00 00 10 */	b lbl_803DA2E8
lbl_803DA2DC:
/* 803DA2DC  38 80 00 00 */	li r4, 0
/* 803DA2E0  38 A0 00 00 */	li r5, 0
/* 803DA2E4  48 00 0A A1 */	bl mPlib_request_main_demo_wait_type1
lbl_803DA2E8:
/* 803DA2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA2EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA2F0  7C 08 03 A6 */	mtlr r0
/* 803DA2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA2F8  4E 80 00 20 */	blr 
