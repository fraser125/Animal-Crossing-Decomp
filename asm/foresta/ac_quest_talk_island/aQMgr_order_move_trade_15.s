lbl_8048F6EC:
/* 8048F6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F6F0  7C 08 02 A6 */	mflr r0
/* 8048F6F4  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F6F8  38 80 00 02 */	li r4, 2
/* 8048F6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F700  38 A5 EB F0 */	addi r5, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F704  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 8048F708  4B FF F1 51 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 8048F70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F710  7C 08 03 A6 */	mtlr r0
/* 8048F714  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F718  4E 80 00 20 */	blr 
