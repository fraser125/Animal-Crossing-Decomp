lbl_803E30D0:
/* 803E30D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E30D4  7C 08 02 A6 */	mflr r0
/* 803E30D8  3C 60 81 17 */	lis r3, l_mqst_grab@ha /* 0x811713E8@ha */
/* 803E30DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E30E0  38 63 13 E8 */	addi r3, r3, l_mqst_grab@l /* 0x811713E8@l */
/* 803E30E4  4B FF FF A5 */	bl mQst_ClearGrabItemInfo_common
/* 803E30E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E30EC  7C 08 03 A6 */	mtlr r0
/* 803E30F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E30F4  4E 80 00 20 */	blr 
