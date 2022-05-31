lbl_8056DF98:
/* 8056DF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056DF9C  7C 08 02 A6 */	mflr r0
/* 8056DFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056DFA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056DFA8  88 03 09 9F */	lbz r0, 0x99f(r3)
/* 8056DFAC  28 00 00 01 */	cmplwi r0, 1
/* 8056DFB0  40 82 00 30 */	bne lbl_8056DFE0
/* 8056DFB4  7C 7F 1B 78 */	mr r31, r3
/* 8056DFB8  38 60 00 07 */	li r3, 7
/* 8056DFBC  7F E4 FB 78 */	mr r4, r31
/* 8056DFC0  4B E2 C2 A5 */	bl mDemo_Check
/* 8056DFC4  2C 03 00 00 */	cmpwi r3, 0
/* 8056DFC8  40 82 00 18 */	bne lbl_8056DFE0
/* 8056DFCC  3C 60 80 57 */	lis r3, aPMAN_set_talk_info_talk_check@ha /* 0x8056DED8@ha */
/* 8056DFD0  7F E4 FB 78 */	mr r4, r31
/* 8056DFD4  38 A3 DE D8 */	addi r5, r3, aPMAN_set_talk_info_talk_check@l /* 0x8056DED8@l */
/* 8056DFD8  38 60 00 07 */	li r3, 7
/* 8056DFDC  4B E2 C1 81 */	bl mDemo_Request
lbl_8056DFE0:
/* 8056DFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056DFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056DFE8  7C 08 03 A6 */	mtlr r0
/* 8056DFEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056DFF0  4E 80 00 20 */	blr 
