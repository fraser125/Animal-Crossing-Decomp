lbl_80477278:
/* 80477278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047727C  7C 08 02 A6 */	mflr r0
/* 80477280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80477284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80477288  7C 7F 1B 78 */	mr r31, r3
/* 8047728C  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80477290  2C 00 00 00 */	cmpwi r0, 0
/* 80477294  41 82 00 4C */	beq lbl_804772E0
/* 80477298  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8047729C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804772A0  80 63 00 00 */	lwz r3, 0(r3)
/* 804772A4  4B F6 23 CD */	bl mPlib_get_player_actor_main_index
/* 804772A8  2C 03 00 63 */	cmpwi r3, 0x63
/* 804772AC  41 82 00 2C */	beq lbl_804772D8
/* 804772B0  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804772B4  3C 60 80 64 */	lis r3, lit_884@ha /* 0x806449F0@ha */
/* 804772B8  38 C4 52 F0 */	addi r6, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804772BC  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 804772C0  38 A3 49 F0 */	addi r5, r3, lit_884@l /* 0x806449F0@l */
/* 804772C4  80 66 00 00 */	lwz r3, 0(r6)
/* 804772C8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804772CC  38 A0 00 00 */	li r5, 0
/* 804772D0  4B F6 39 2D */	bl mPlib_request_main_shock_type1
/* 804772D4  48 00 00 0C */	b lbl_804772E0
lbl_804772D8:
/* 804772D8  38 00 00 00 */	li r0, 0
/* 804772DC  90 1F 04 E4 */	stw r0, 0x4e4(r31)
lbl_804772E0:
/* 804772E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804772E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804772E8  7C 08 03 A6 */	mtlr r0
/* 804772EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804772F0  4E 80 00 20 */	blr 
