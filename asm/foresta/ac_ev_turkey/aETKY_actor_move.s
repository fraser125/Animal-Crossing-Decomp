lbl_805941B4:
/* 805941B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805941B8  7C 08 02 A6 */	mflr r0
/* 805941BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805941C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805941C4  7C 9F 23 78 */	mr r31, r4
/* 805941C8  93 C1 00 08 */	stw r30, 8(r1)
/* 805941CC  7C 7E 1B 78 */	mr r30, r3
/* 805941D0  7F E3 FB 78 */	mr r3, r31
/* 805941D4  4B E4 54 6D */	bl get_player_actor_withoutCheck
/* 805941D8  38 00 FF FF */	li r0, -1
/* 805941DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805941E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805941E4  90 1E 08 F4 */	stw r0, 0x8f4(r30)
/* 805941E8  3C 83 00 02 */	addis r4, r3, 2
/* 805941EC  7F C3 F3 78 */	mr r3, r30
/* 805941F0  80 A4 60 4C */	lwz r5, 0x604c(r4)
/* 805941F4  7F E4 FB 78 */	mr r4, r31
/* 805941F8  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 805941FC  7D 89 03 A6 */	mtctr r12
/* 80594200  4E 80 04 21 */	bctrl 
/* 80594204  38 00 FF FF */	li r0, -1
/* 80594208  90 1E 08 F4 */	stw r0, 0x8f4(r30)
/* 8059420C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594214  83 C1 00 08 */	lwz r30, 8(r1)
/* 80594218  7C 08 03 A6 */	mtlr r0
/* 8059421C  38 21 00 10 */	addi r1, r1, 0x10
/* 80594220  4E 80 00 20 */	blr 