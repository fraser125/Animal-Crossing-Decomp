lbl_805835CC:
/* 805835CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805835D0  7C 08 02 A6 */	mflr r0
/* 805835D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805835D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805835DC  7C 7F 1B 78 */	mr r31, r3
/* 805835E0  38 60 00 07 */	li r3, 7
/* 805835E4  93 C1 00 08 */	stw r30, 8(r1)
/* 805835E8  7C 9E 23 78 */	mr r30, r4
/* 805835EC  7F E4 FB 78 */	mr r4, r31
/* 805835F0  4B E1 6C 75 */	bl mDemo_Check
/* 805835F4  2C 03 00 01 */	cmpwi r3, 1
/* 805835F8  40 82 00 2C */	bne lbl_80583624
/* 805835FC  4B E1 6E 15 */	bl mDemo_Check_ListenAble
/* 80583600  2C 03 00 00 */	cmpwi r3, 0
/* 80583604  40 82 00 34 */	bne lbl_80583638
/* 80583608  7F E3 FB 78 */	mr r3, r31
/* 8058360C  4B FF D6 C9 */	bl aNSC_Set_ListenAble
/* 80583610  7F E3 FB 78 */	mr r3, r31
/* 80583614  7F C4 F3 78 */	mr r4, r30
/* 80583618  38 A0 00 0D */	li r5, 0xd
/* 8058361C  48 00 29 A5 */	bl aNSC_setupAction
/* 80583620  48 00 00 18 */	b lbl_80583638
lbl_80583624:
/* 80583624  3C 60 80 58 */	lis r3, aNSC_set_talk_info_request_Q_start_wait@ha /* 0x8058359C@ha */
/* 80583628  7F E4 FB 78 */	mr r4, r31
/* 8058362C  38 A3 35 9C */	addi r5, r3, aNSC_set_talk_info_request_Q_start_wait@l /* 0x8058359C@l */
/* 80583630  38 60 00 07 */	li r3, 7
/* 80583634  4B E1 6B 29 */	bl mDemo_Request
lbl_80583638:
/* 80583638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058363C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80583640  83 C1 00 08 */	lwz r30, 8(r1)
/* 80583644  7C 08 03 A6 */	mtlr r0
/* 80583648  38 21 00 10 */	addi r1, r1, 0x10
/* 8058364C  4E 80 00 20 */	blr 
