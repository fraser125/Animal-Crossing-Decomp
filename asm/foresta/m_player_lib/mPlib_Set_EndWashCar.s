lbl_803DD8F8:
/* 803DD8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD8FC  7C 08 02 A6 */	mflr r0
/* 803DD900  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DD904  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD908  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DD90C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD910  4B FF BD 61 */	bl mPlib_get_player_actor_main_index
/* 803DD914  2C 03 00 54 */	cmpwi r3, 0x54
/* 803DD918  40 82 00 24 */	bne lbl_803DD93C
/* 803DD91C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DD920  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DD924  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD928  4B FF BD 19 */	bl get_player_actor_withoutCheck
/* 803DD92C  38 00 00 01 */	li r0, 1
/* 803DD930  90 03 0D 38 */	stw r0, 0xd38(r3)
/* 803DD934  38 60 00 01 */	li r3, 1
/* 803DD938  48 00 00 08 */	b lbl_803DD940
lbl_803DD93C:
/* 803DD93C  38 60 00 00 */	li r3, 0
lbl_803DD940:
/* 803DD940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DD944  7C 08 03 A6 */	mtlr r0
/* 803DD948  38 21 00 10 */	addi r1, r1, 0x10
/* 803DD94C  4E 80 00 20 */	blr 
