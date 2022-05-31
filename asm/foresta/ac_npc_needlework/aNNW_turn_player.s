lbl_80561984:
/* 80561984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80561988  7C 08 02 A6 */	mflr r0
/* 8056198C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80561990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80561994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80561998  7C 7F 1B 78 */	mr r31, r3
/* 8056199C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805619A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805619A4  4B E7 7C 9D */	bl get_player_actor_withoutCheck
/* 805619A8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805619AC  7C 65 1B 78 */	mr r5, r3
/* 805619B0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805619B4  7F E3 FB 78 */	mr r3, r31
/* 805619B8  3C 84 00 02 */	addis r4, r4, 2
/* 805619BC  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 805619C0  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 805619C4  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 805619C8  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 805619CC  7D 89 03 A6 */	mtctr r12
/* 805619D0  4E 80 04 21 */	bctrl 
/* 805619D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805619D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805619DC  7C 08 03 A6 */	mtlr r0
/* 805619E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805619E4  4E 80 00 20 */	blr 
