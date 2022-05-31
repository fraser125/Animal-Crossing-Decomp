lbl_805894FC:
/* 805894FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589500  7C 08 02 A6 */	mflr r0
/* 80589504  3C 80 81 1F */	lis r4, aTS0_failure_actor_p@ha /* 0x811ED3D8@ha */
/* 80589508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058950C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80589510  7C 7F 1B 78 */	mr r31, r3
/* 80589514  38 64 D3 D8 */	addi r3, r4, aTS0_failure_actor_p@l /* 0x811ED3D8@l */
/* 80589518  80 03 00 00 */	lwz r0, 0(r3)
/* 8058951C  7C 00 F8 40 */	cmplw r0, r31
/* 80589520  40 82 00 0C */	bne lbl_8058952C
/* 80589524  38 00 00 00 */	li r0, 0
/* 80589528  90 03 00 00 */	stw r0, 0(r3)
lbl_8058952C:
/* 8058952C  4B E1 0E 89 */	bl mDemo_Set_ListenAble
/* 80589530  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80589534  28 00 D0 78 */	cmplwi r0, 0xd078
/* 80589538  40 82 00 64 */	bne lbl_8058959C
/* 8058953C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80589540  88 DF 09 B4 */	lbz r6, 0x9b4(r31)
/* 80589544  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80589548  3C A3 00 02 */	addis r5, r3, 2
/* 8058954C  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 80589550  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 80589554  88 A5 61 23 */	lbz r5, 0x6123(r5)
/* 80589558  4B DF 41 09 */	bl mCD_calendar_event_on
/* 8058955C  88 1F 09 B2 */	lbz r0, 0x9b2(r31)
/* 80589560  28 00 00 07 */	cmplwi r0, 7
/* 80589564  40 82 00 14 */	bne lbl_80589578
/* 80589568  88 7F 09 B4 */	lbz r3, 0x9b4(r31)
/* 8058956C  4B E6 2F 71 */	bl mSC_trophy_item
/* 80589570  38 80 00 00 */	li r4, 0
/* 80589574  4B E6 30 5D */	bl mSC_item_string_set
lbl_80589578:
/* 80589578  88 1F 09 B2 */	lbz r0, 0x9b2(r31)
/* 8058957C  28 00 00 08 */	cmplwi r0, 8
/* 80589580  40 82 00 1C */	bne lbl_8058959C
/* 80589584  88 7F 09 B4 */	lbz r3, 0x9b4(r31)
/* 80589588  4B E6 2F 55 */	bl mSC_trophy_item
/* 8058958C  38 80 00 00 */	li r4, 0
/* 80589590  4B E6 30 41 */	bl mSC_item_string_set
/* 80589594  88 7F 09 B4 */	lbz r3, 0x9b4(r31)
/* 80589598  4B E6 30 D5 */	bl mSC_event_name_set
lbl_8058959C:
/* 8058959C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805895A0  38 60 00 01 */	li r3, 1
/* 805895A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805895A8  7C 08 03 A6 */	mtlr r0
/* 805895AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805895B0  4E 80 00 20 */	blr 
