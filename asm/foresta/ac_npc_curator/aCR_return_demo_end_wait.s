lbl_8054C558:
/* 8054C558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C55C  7C 08 02 A6 */	mflr r0
/* 8054C560  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C564  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C568  4B B4 E9 6D */	bl func_8009AED4
/* 8054C56C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054C570  7C 7D 1B 78 */	mr r29, r3
/* 8054C574  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8054C578  7C 9E 23 78 */	mr r30, r4
/* 8054C57C  3C 63 00 02 */	addis r3, r3, 2
/* 8054C580  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8054C584  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8054C588  28 00 00 00 */	cmplwi r0, 0
/* 8054C58C  40 82 00 40 */	bne lbl_8054C5CC
/* 8054C590  4B E7 31 19 */	bl func_803BF6A8
/* 8054C594  80 1D 09 A0 */	lwz r0, 0x9a0(r29)
/* 8054C598  3B E0 00 0F */	li r31, 0xf
/* 8054C59C  2C 00 00 0D */	cmpwi r0, 0xd
/* 8054C5A0  41 82 00 08 */	beq lbl_8054C5A8
/* 8054C5A4  3B E0 00 10 */	li r31, 0x10
lbl_8054C5A8:
/* 8054C5A8  38 00 FF FF */	li r0, -1
/* 8054C5AC  B0 1D 09 74 */	sth r0, 0x974(r29)
/* 8054C5B0  4B E7 47 9D */	bl mMsg_Unset_LockContinue
/* 8054C5B4  81 9D 09 A8 */	lwz r12, 0x9a8(r29)
/* 8054C5B8  7F A3 EB 78 */	mr r3, r29
/* 8054C5BC  7F C4 F3 78 */	mr r4, r30
/* 8054C5C0  7F E5 FB 78 */	mr r5, r31
/* 8054C5C4  7D 89 03 A6 */	mtctr r12
/* 8054C5C8  4E 80 04 21 */	bctrl 
lbl_8054C5CC:
/* 8054C5CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C5D0  4B B4 E9 51 */	bl func_8009AF20
/* 8054C5D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C5D8  7C 08 03 A6 */	mtlr r0
/* 8054C5DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C5E0  4E 80 00 20 */	blr 
