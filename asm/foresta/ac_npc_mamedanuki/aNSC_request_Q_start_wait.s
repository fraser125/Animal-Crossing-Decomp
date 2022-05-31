lbl_8055C538:
/* 8055C538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C53C  7C 08 02 A6 */	mflr r0
/* 8055C540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C548  7C 7F 1B 78 */	mr r31, r3
/* 8055C54C  38 60 00 07 */	li r3, 7
/* 8055C550  93 C1 00 08 */	stw r30, 8(r1)
/* 8055C554  7C 9E 23 78 */	mr r30, r4
/* 8055C558  7F E4 FB 78 */	mr r4, r31
/* 8055C55C  4B E3 DD 09 */	bl mDemo_Check
/* 8055C560  2C 03 00 01 */	cmpwi r3, 1
/* 8055C564  40 82 00 2C */	bne lbl_8055C590
/* 8055C568  4B E3 DE A9 */	bl mDemo_Check_ListenAble
/* 8055C56C  2C 03 00 00 */	cmpwi r3, 0
/* 8055C570  40 82 00 34 */	bne lbl_8055C5A4
/* 8055C574  7F E3 FB 78 */	mr r3, r31
/* 8055C578  4B FF DF BD */	bl aNSC_Set_ListenAble
/* 8055C57C  7F E3 FB 78 */	mr r3, r31
/* 8055C580  7F C4 F3 78 */	mr r4, r30
/* 8055C584  38 A0 00 0D */	li r5, 0xd
/* 8055C588  48 00 28 49 */	bl aNSC_setupAction
/* 8055C58C  48 00 00 18 */	b lbl_8055C5A4
lbl_8055C590:
/* 8055C590  3C 60 80 56 */	lis r3, aNSC_set_talk_info_request_Q_start_wait@ha /* 0x8055C508@ha */
/* 8055C594  7F E4 FB 78 */	mr r4, r31
/* 8055C598  38 A3 C5 08 */	addi r5, r3, aNSC_set_talk_info_request_Q_start_wait@l /* 0x8055C508@l */
/* 8055C59C  38 60 00 07 */	li r3, 7
/* 8055C5A0  4B E3 DB BD */	bl mDemo_Request
lbl_8055C5A4:
/* 8055C5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C5AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055C5B0  7C 08 03 A6 */	mtlr r0
/* 8055C5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C5B8  4E 80 00 20 */	blr 
