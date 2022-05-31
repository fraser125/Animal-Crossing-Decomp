lbl_804D773C:
/* 804D773C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7740  7C 08 02 A6 */	mflr r0
/* 804D7744  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804D7748  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D774C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D7750  7C 7F 1B 78 */	mr r31, r3
/* 804D7754  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804D7758  3C 63 00 02 */	addis r3, r3, 2
/* 804D775C  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 804D7760  28 03 00 00 */	cmplwi r3, 0
/* 804D7764  41 82 00 34 */	beq lbl_804D7798
/* 804D7768  81 83 00 00 */	lwz r12, 0(r3)
/* 804D776C  7C 83 23 78 */	mr r3, r4
/* 804D7770  7C A4 2B 78 */	mr r4, r5
/* 804D7774  7C C5 33 78 */	mr r5, r6
/* 804D7778  7F E6 FB 78 */	mr r6, r31
/* 804D777C  7D 89 03 A6 */	mtctr r12
/* 804D7780  4E 80 04 21 */	bctrl 
/* 804D7784  28 03 00 00 */	cmplwi r3, 0
/* 804D7788  41 82 00 10 */	beq lbl_804D7798
/* 804D778C  7F E3 FB 78 */	mr r3, r31
/* 804D7790  38 80 00 01 */	li r4, 1
/* 804D7794  4B FF FE C5 */	bl Player_actor_CHange_TradingItemMode
lbl_804D7798:
/* 804D7798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D779C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D77A0  7C 08 03 A6 */	mtlr r0
/* 804D77A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D77A8  4E 80 00 20 */	blr 
