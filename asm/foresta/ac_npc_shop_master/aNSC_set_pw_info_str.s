lbl_80577734:
/* 80577734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80577738  7C 08 02 A6 */	mflr r0
/* 8057773C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80577740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80577744  93 C1 00 08 */	stw r30, 8(r1)
/* 80577748  7C 7E 1B 78 */	mr r30, r3
/* 8057774C  4B E4 7F 5D */	bl func_803BF6A8
/* 80577750  38 BE 0A 07 */	addi r5, r30, 0xa07
/* 80577754  7C 7F 1B 78 */	mr r31, r3
/* 80577758  38 80 00 06 */	li r4, 6
/* 8057775C  38 C0 00 08 */	li r6, 8
/* 80577760  4B E4 84 F5 */	bl mMsg_Set_free_str
/* 80577764  7F E3 FB 78 */	mr r3, r31
/* 80577768  38 BE 09 FF */	addi r5, r30, 0x9ff
/* 8057776C  38 80 00 07 */	li r4, 7
/* 80577770  38 C0 00 08 */	li r6, 8
/* 80577774  4B E4 84 E1 */	bl mMsg_Set_free_str
/* 80577778  A0 7E 09 F8 */	lhz r3, 0x9f8(r30)
/* 8057777C  38 80 00 02 */	li r4, 2
/* 80577780  4B FF FE 99 */	bl aNSC_set_item_name_str
/* 80577784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057778C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80577790  7C 08 03 A6 */	mtlr r0
/* 80577794  38 21 00 10 */	addi r1, r1, 0x10
/* 80577798  4E 80 00 20 */	blr 
