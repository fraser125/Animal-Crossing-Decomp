lbl_8055295C:
/* 8055295C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552960  7C 08 02 A6 */	mflr r0
/* 80552964  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80552968  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055296C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552970  3C A5 00 02 */	addis r5, r5, 2
/* 80552974  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80552978  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 8055297C  7D 89 03 A6 */	mtctr r12
/* 80552980  4E 80 04 21 */	bctrl 
/* 80552984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552988  7C 08 03 A6 */	mtlr r0
/* 8055298C  38 21 00 10 */	addi r1, r1, 0x10
/* 80552990  4E 80 00 20 */	blr 
