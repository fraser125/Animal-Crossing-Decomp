lbl_8062A010:
/* 8062A010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062A014  7C 08 02 A6 */	mflr r0
/* 8062A018  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062A01C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062A020  7C 7F 1B 78 */	mr r31, r3
/* 8062A024  4B DD B2 45 */	bl game_goto_next_game_play
/* 8062A028  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062A02C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8062A030  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8062A034  3C 64 00 02 */	addis r3, r4, 2
/* 8062A038  90 03 60 04 */	stw r0, 0x6004(r3)
/* 8062A03C  80 1F 20 08 */	lwz r0, 0x2008(r31)
/* 8062A040  90 04 00 14 */	stw r0, 0x14(r4)
/* 8062A044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062A048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062A04C  7C 08 03 A6 */	mtlr r0
/* 8062A050  38 21 00 10 */	addi r1, r1, 0x10
/* 8062A054  4E 80 00 20 */	blr 
