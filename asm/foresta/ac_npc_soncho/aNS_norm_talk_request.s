lbl_8057EC50:
/* 8057EC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EC54  7C 08 02 A6 */	mflr r0
/* 8057EC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EC5C  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 8057EC60  28 00 00 00 */	cmplwi r0, 0
/* 8057EC64  40 82 00 1C */	bne lbl_8057EC80
/* 8057EC68  3C A0 80 58 */	lis r5, aNS_set_norm_talk_info@ha /* 0x8057EBB8@ha */
/* 8057EC6C  7C 64 1B 78 */	mr r4, r3
/* 8057EC70  38 A5 EB B8 */	addi r5, r5, aNS_set_norm_talk_info@l /* 0x8057EBB8@l */
/* 8057EC74  38 60 00 07 */	li r3, 7
/* 8057EC78  4B E1 B4 E5 */	bl mDemo_Request
/* 8057EC7C  48 00 00 0C */	b lbl_8057EC88
lbl_8057EC80:
/* 8057EC80  38 00 00 00 */	li r0, 0
/* 8057EC84  98 03 09 A2 */	stb r0, 0x9a2(r3)
lbl_8057EC88:
/* 8057EC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EC8C  7C 08 03 A6 */	mtlr r0
/* 8057EC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EC94  4E 80 00 20 */	blr 
