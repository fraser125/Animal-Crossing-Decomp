lbl_8048B37C:
/* 8048B37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B380  7C 08 02 A6 */	mflr r0
/* 8048B384  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048B388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B38C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048B390  3C 63 00 02 */	addis r3, r3, 2
/* 8048B394  38 00 24 01 */	li r0, 0x2401
/* 8048B398  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8048B39C  B0 01 00 08 */	sth r0, 8(r1)
/* 8048B3A0  28 03 00 00 */	cmplwi r3, 0
/* 8048B3A4  41 82 00 10 */	beq lbl_8048B3B4
/* 8048B3A8  A0 83 10 8A */	lhz r4, 0x108a(r3)
/* 8048B3AC  38 61 00 08 */	addi r3, r1, 8
/* 8048B3B0  4B FF F0 CD */	bl aQMgr_actor_decide_cloth
lbl_8048B3B4:
/* 8048B3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B3B8  A0 61 00 08 */	lhz r3, 8(r1)
/* 8048B3BC  7C 08 03 A6 */	mtlr r0
/* 8048B3C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B3C4  4E 80 00 20 */	blr 
