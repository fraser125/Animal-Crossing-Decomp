lbl_80485558:
/* 80485558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048555C  7C 08 02 A6 */	mflr r0
/* 80485560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485568  93 C1 00 08 */	stw r30, 8(r1)
/* 8048556C  7C 7E 1B 78 */	mr r30, r3
/* 80485570  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80485574  80 9E 01 78 */	lwz r4, 0x178(r30)
/* 80485578  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048557C  3C 63 00 02 */	addis r3, r3, 2
/* 80485580  83 E4 00 00 */	lwz r31, 0(r4)
/* 80485584  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80485588  80 9F 01 7C */	lwz r4, 0x17c(r31)
/* 8048558C  28 04 00 00 */	cmplwi r4, 0
/* 80485590  41 82 00 38 */	beq lbl_804855C8
/* 80485594  38 84 00 10 */	addi r4, r4, 0x10
/* 80485598  38 A0 00 07 */	li r5, 7
/* 8048559C  4B F4 67 DD */	bl mNpc_GetAnimalMemoryIdx
/* 804855A0  2C 03 FF FF */	cmpwi r3, -1
/* 804855A4  40 82 00 14 */	bne lbl_804855B8
/* 804855A8  3C 60 81 1D */	lis r3, l_quest_manager_hello@ha /* 0x811CEA68@ha */
/* 804855AC  38 00 00 01 */	li r0, 1
/* 804855B0  90 03 EA 68 */	stw r0, l_quest_manager_hello@l(r3)  /* 0x811CEA68@l */
/* 804855B4  48 00 00 20 */	b lbl_804855D4
lbl_804855B8:
/* 804855B8  3C 60 81 1D */	lis r3, l_quest_manager_hello@ha /* 0x811CEA68@ha */
/* 804855BC  38 00 00 00 */	li r0, 0
/* 804855C0  90 03 EA 68 */	stw r0, l_quest_manager_hello@l(r3)  /* 0x811CEA68@l */
/* 804855C4  48 00 00 10 */	b lbl_804855D4
lbl_804855C8:
/* 804855C8  3C 60 81 1D */	lis r3, l_quest_manager_hello@ha /* 0x811CEA68@ha */
/* 804855CC  38 00 00 01 */	li r0, 1
/* 804855D0  90 03 EA 68 */	stw r0, l_quest_manager_hello@l(r3)  /* 0x811CEA68@l */
lbl_804855D4:
/* 804855D4  80 9E 09 54 */	lwz r4, 0x954(r30)
/* 804855D8  7F E3 FB 78 */	mr r3, r31
/* 804855DC  A0 BE 0A 98 */	lhz r5, 0xa98(r30)
/* 804855E0  48 00 42 59 */	bl aQMgr_get_hello_msg_no
/* 804855E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804855E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804855EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804855F0  7C 08 03 A6 */	mtlr r0
/* 804855F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804855F8  4E 80 00 20 */	blr 
