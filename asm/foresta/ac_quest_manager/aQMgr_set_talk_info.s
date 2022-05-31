lbl_804855FC:
/* 804855FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80485600  7C 08 02 A6 */	mflr r0
/* 80485604  90 01 00 24 */	stw r0, 0x24(r1)
/* 80485608  39 61 00 20 */	addi r11, r1, 0x20
/* 8048560C  4B C1 58 C9 */	bl func_8009AED4
/* 80485610  7C 7D 1B 78 */	mr r29, r3
/* 80485614  3C 60 81 1D */	lis r3, l_quest_actor_p@ha /* 0x811CEA64@ha */
/* 80485618  38 83 EA 64 */	addi r4, r3, l_quest_actor_p@l /* 0x811CEA64@l */
/* 8048561C  3C 60 81 1D */	lis r3, data_811CEA58@ha /* 0x811CEA58@ha */
/* 80485620  83 E4 00 00 */	lwz r31, 0(r4)
/* 80485624  38 83 EA 58 */	addi r4, r3, data_811CEA58@l /* 0x811CEA58@l */
/* 80485628  83 DD 01 7C */	lwz r30, 0x17c(r29)
/* 8048562C  7F E3 FB 78 */	mr r3, r31
/* 80485630  93 A4 00 00 */	stw r29, 0(r4)
/* 80485634  4B FF FF 25 */	bl aQMgr_take_hello_msg_no
/* 80485638  4B F1 2E DD */	bl mDemo_Set_msg_num
/* 8048563C  88 1E 08 E2 */	lbz r0, 0x8e2(r30)
/* 80485640  28 00 00 04 */	cmplwi r0, 4
/* 80485644  40 82 00 10 */	bne lbl_80485654
/* 80485648  38 00 00 00 */	li r0, 0
/* 8048564C  98 1E 08 E2 */	stb r0, 0x8e2(r30)
/* 80485650  90 1D 08 38 */	stw r0, 0x838(r29)
lbl_80485654:
/* 80485654  88 1E 08 E2 */	lbz r0, 0x8e2(r30)
/* 80485658  7F C3 F3 78 */	mr r3, r30
/* 8048565C  98 1D 09 7C */	stb r0, 0x97c(r29)
/* 80485660  4B FF FE 55 */	bl aQMgr_actor_set_hello_free_str
/* 80485664  28 1E 00 00 */	cmplwi r30, 0
/* 80485668  41 82 00 0C */	beq lbl_80485674
/* 8048566C  A0 1E 08 E4 */	lhz r0, 0x8e4(r30)
/* 80485670  B0 1F 09 58 */	sth r0, 0x958(r31)
lbl_80485674:
/* 80485674  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80485678  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 8048567C  2C 00 00 02 */	cmpwi r0, 2
/* 80485680  41 80 00 0C */	blt lbl_8048568C
/* 80485684  7F C3 F3 78 */	mr r3, r30
/* 80485688  4B F5 1C 31 */	bl mNpc_SetTalkAnimalIdx_fdebug
lbl_8048568C:
/* 8048568C  39 61 00 20 */	addi r11, r1, 0x20
/* 80485690  4B C1 58 91 */	bl func_8009AF20
/* 80485694  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80485698  7C 08 03 A6 */	mtlr r0
/* 8048569C  38 21 00 20 */	addi r1, r1, 0x20
/* 804856A0  4E 80 00 20 */	blr 
