lbl_80485844:
/* 80485844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485848  7C 08 02 A6 */	mflr r0
/* 8048584C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485854  3B E0 00 00 */	li r31, 0
/* 80485858  93 C1 00 08 */	stw r30, 8(r1)
/* 8048585C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80485860  41 82 00 48 */	beq lbl_804858A8
/* 80485864  3C 60 81 1D */	lis r3, data_811CEA58@ha /* 0x811CEA58@ha */
/* 80485868  80 03 EA 58 */	lwz r0, data_811CEA58@l(r3)  /* 0x811CEA58@l */
/* 8048586C  7C 00 F0 40 */	cmplw r0, r30
/* 80485870  40 82 00 38 */	bne lbl_804858A8
/* 80485874  3C 60 81 1D */	lis r3, l_quest_manager_mode@ha /* 0x811CEA5C@ha */
/* 80485878  88 03 EA 5C */	lbz r0, l_quest_manager_mode@l(r3)  /* 0x811CEA5C@l */
/* 8048587C  28 00 00 03 */	cmplwi r0, 3
/* 80485880  40 82 00 28 */	bne lbl_804858A8
/* 80485884  4B F1 2B 75 */	bl mDemo_Get_talk_actor
/* 80485888  7C 03 F0 40 */	cmplw r3, r30
/* 8048588C  41 82 00 1C */	beq lbl_804858A8
/* 80485890  3C 80 81 1D */	lis r4, data_811CEA58@ha /* 0x811CEA58@ha */
/* 80485894  38 00 00 00 */	li r0, 0
/* 80485898  3C 60 81 1D */	lis r3, l_quest_manager_mode@ha /* 0x811CEA5C@ha */
/* 8048589C  90 04 EA 58 */	stw r0, data_811CEA58@l(r4)  /* 0x811CEA58@l */
/* 804858A0  3B E0 00 01 */	li r31, 1
/* 804858A4  98 03 EA 5C */	stb r0, l_quest_manager_mode@l(r3)  /* 0x811CEA5C@l */
lbl_804858A8:
/* 804858A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804858AC  7F E3 FB 78 */	mr r3, r31
/* 804858B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804858B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804858B8  7C 08 03 A6 */	mtlr r0
/* 804858BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804858C0  4E 80 00 20 */	blr 
