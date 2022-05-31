lbl_805721D0:
/* 805721D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805721D4  7C 08 02 A6 */	mflr r0
/* 805721D8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805721DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805721E0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805721E4  3C A5 00 02 */	addis r5, r5, 2
/* 805721E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805721EC  7C 9F 23 78 */	mr r31, r4
/* 805721F0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805721F4  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 805721F8  7D 89 03 A6 */	mtctr r12
/* 805721FC  4E 80 04 21 */	bctrl 
/* 80572200  7F E3 FB 78 */	mr r3, r31
/* 80572204  4B E7 BB 6D */	bl mSC_change_player_freeze
/* 80572208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057220C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80572210  7C 08 03 A6 */	mtlr r0
/* 80572214  38 21 00 10 */	addi r1, r1, 0x10
/* 80572218  4E 80 00 20 */	blr 
