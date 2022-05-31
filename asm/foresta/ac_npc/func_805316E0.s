lbl_805316E0:
/* 805316E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805316E4  7C 08 02 A6 */	mflr r0
/* 805316E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805316EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805316F0  7C 7F 1B 78 */	mr r31, r3
/* 805316F4  80 03 01 98 */	lwz r0, 0x198(r3)
/* 805316F8  2C 00 00 02 */	cmpwi r0, 2
/* 805316FC  40 82 00 30 */	bne lbl_8053172C
/* 80531700  4B FF B1 41 */	bl func_8052C840
/* 80531704  88 1F 07 FC */	lbz r0, 0x7fc(r31)
/* 80531708  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8053170C  7C 00 28 40 */	cmplw r0, r5
/* 80531710  41 82 00 1C */	beq lbl_8053172C
/* 80531714  3C 60 80 6A */	lis r3, aNPC_wait_action@ha /* 0x806A2468@ha */
/* 80531718  98 BF 07 FC */	stb r5, 0x7fc(r31)
/* 8053171C  38 83 24 68 */	addi r4, r3, aNPC_wait_action@l /* 0x806A2468@l */
/* 80531720  7F E3 FB 78 */	mr r3, r31
/* 80531724  7C 84 28 AE */	lbzx r4, r4, r5
/* 80531728  4B FF E6 05 */	bl aNPC_setupAction
lbl_8053172C:
/* 8053172C  7F E3 FB 78 */	mr r3, r31
/* 80531730  4B FF F7 41 */	bl aNPC_act_wait
/* 80531734  2C 03 00 00 */	cmpwi r3, 0
/* 80531738  40 82 00 0C */	bne lbl_80531744
/* 8053173C  38 00 00 FF */	li r0, 0xff
/* 80531740  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_80531744:
/* 80531744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80531748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053174C  7C 08 03 A6 */	mtlr r0
/* 80531750  38 21 00 10 */	addi r1, r1, 0x10
/* 80531754  4E 80 00 20 */	blr 
