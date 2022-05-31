lbl_8057FA68:
/* 8057FA68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057FA6C  7C 08 02 A6 */	mflr r0
/* 8057FA70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057FA74  39 61 00 20 */	addi r11, r1, 0x20
/* 8057FA78  4B B1 B4 5D */	bl func_8009AED4
/* 8057FA7C  7C 7D 1B 78 */	mr r29, r3
/* 8057FA80  7C 9E 23 78 */	mr r30, r4
/* 8057FA84  3B E0 00 09 */	li r31, 9
/* 8057FA88  4B E1 B3 ED */	bl mEv_UnSetGateway
/* 8057FA8C  4B E1 B2 A1 */	bl mEv_CheckFirstIntro
/* 8057FA90  2C 03 00 01 */	cmpwi r3, 1
/* 8057FA94  40 82 00 0C */	bne lbl_8057FAA0
/* 8057FA98  3B E0 00 04 */	li r31, 4
/* 8057FA9C  48 00 00 20 */	b lbl_8057FABC
lbl_8057FAA0:
/* 8057FAA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057FAA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057FAA8  3C 63 00 02 */	addis r3, r3, 2
/* 8057FAAC  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8057FAB0  28 00 00 04 */	cmplwi r0, 4
/* 8057FAB4  40 80 00 08 */	bge lbl_8057FABC
/* 8057FAB8  3B E0 00 08 */	li r31, 8
lbl_8057FABC:
/* 8057FABC  38 00 00 00 */	li r0, 0
/* 8057FAC0  7F A3 EB 78 */	mr r3, r29
/* 8057FAC4  90 1D 08 40 */	stw r0, 0x840(r29)
/* 8057FAC8  7F C4 F3 78 */	mr r4, r30
/* 8057FACC  7F E5 FB 78 */	mr r5, r31
/* 8057FAD0  98 1E 1F 51 */	stb r0, 0x1f51(r30)
/* 8057FAD4  48 00 08 D1 */	bl aSTM_setup_think_proc
/* 8057FAD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057FADC  4B B1 B4 45 */	bl func_8009AF20
/* 8057FAE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057FAE4  7C 08 03 A6 */	mtlr r0
/* 8057FAE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057FAEC  4E 80 00 20 */	blr 
