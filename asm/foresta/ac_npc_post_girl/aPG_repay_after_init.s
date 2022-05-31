lbl_8056D660:
/* 8056D660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D664  7C 08 02 A6 */	mflr r0
/* 8056D668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D670  7C 7F 1B 78 */	mr r31, r3
/* 8056D674  4B FF EF B5 */	bl aPG_set_post_status
/* 8056D678  88 1F 09 A4 */	lbz r0, 0x9a4(r31)
/* 8056D67C  3C 60 80 6C */	lis r3, msg_no_804@ha /* 0x806BE9D8@ha */
/* 8056D680  38 83 E9 D8 */	addi r4, r3, msg_no_804@l /* 0x806BE9D8@l */
/* 8056D684  7F E3 FB 78 */	mr r3, r31
/* 8056D688  54 00 10 3A */	slwi r0, r0, 2
/* 8056D68C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8056D690  4B FF ED D5 */	bl func_8056C464
/* 8056D694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D69C  7C 08 03 A6 */	mtlr r0
/* 8056D6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D6A4  4E 80 00 20 */	blr 
