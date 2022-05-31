lbl_8051C564:
/* 8051C564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C568  7C 08 02 A6 */	mflr r0
/* 8051C56C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051C570  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C578  7C 9F 23 78 */	mr r31, r4
/* 8051C57C  93 C1 00 08 */	stw r30, 8(r1)
/* 8051C580  7C 7E 1B 78 */	mr r30, r3
/* 8051C584  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8051C588  3C 63 00 02 */	addis r3, r3, 2
/* 8051C58C  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8051C590  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8051C594  28 00 00 00 */	cmplwi r0, 0
/* 8051C598  40 82 00 2C */	bne lbl_8051C5C4
/* 8051C59C  4B EA 31 0D */	bl func_803BF6A8
/* 8051C5A0  4B EA 46 F9 */	bl mMsg_Check_MainNormalContinue
/* 8051C5A4  2C 03 00 01 */	cmpwi r3, 1
/* 8051C5A8  40 82 00 1C */	bne lbl_8051C5C4
/* 8051C5AC  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051C5B0  7F C3 F3 78 */	mr r3, r30
/* 8051C5B4  7F E4 FB 78 */	mr r4, r31
/* 8051C5B8  38 A0 00 05 */	li r5, 5
/* 8051C5BC  7D 89 03 A6 */	mtctr r12
/* 8051C5C0  4E 80 04 21 */	bctrl 
lbl_8051C5C4:
/* 8051C5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C5CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C5D0  7C 08 03 A6 */	mtlr r0
/* 8051C5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C5D8  4E 80 00 20 */	blr 
