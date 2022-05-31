lbl_8052B7CC:
/* 8052B7CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B7D0  7C 08 02 A6 */	mflr r0
/* 8052B7D4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052B7D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B7DC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052B7E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B7E4  7C 9F 23 78 */	mr r31, r4
/* 8052B7E8  3C 85 00 02 */	addis r4, r5, 2
/* 8052B7EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B7F0  7C 7E 1B 78 */	mr r30, r3
/* 8052B7F4  80 84 60 D0 */	lwz r4, 0x60d0(r4)
/* 8052B7F8  81 84 00 10 */	lwz r12, 0x10(r4)
/* 8052B7FC  7D 89 03 A6 */	mtctr r12
/* 8052B800  4E 80 04 21 */	bctrl 
/* 8052B804  7F E3 FB 78 */	mr r3, r31
/* 8052B808  4B EA DE 69 */	bl mPlib_get_player_actor_main_index
/* 8052B80C  2C 03 00 4B */	cmpwi r3, 0x4b
/* 8052B810  41 82 00 1C */	beq lbl_8052B82C
/* 8052B814  88 BE 09 A2 */	lbz r5, 0x9a2(r30)
/* 8052B818  7F C3 F3 78 */	mr r3, r30
/* 8052B81C  7F E4 FB 78 */	mr r4, r31
/* 8052B820  38 A5 00 01 */	addi r5, r5, 1
/* 8052B824  98 BE 09 A2 */	stb r5, 0x9a2(r30)
/* 8052B828  48 00 02 21 */	bl aHN0_setup_think_proc
lbl_8052B82C:
/* 8052B82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B834  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B838  7C 08 03 A6 */	mtlr r0
/* 8052B83C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B840  4E 80 00 20 */	blr 
