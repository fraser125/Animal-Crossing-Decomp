lbl_8056E158:
/* 8056E158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E15C  7C 08 02 A6 */	mflr r0
/* 8056E160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056E168  93 C1 00 08 */	stw r30, 8(r1)
/* 8056E16C  7C 7E 1B 78 */	mr r30, r3
/* 8056E170  3C 60 80 6C */	lis r3, aPMAN_move_pos@ha /* 0x806BEBC4@ha */
/* 8056E174  88 9E 09 9C */	lbz r4, 0x99c(r30)
/* 8056E178  38 03 EB C4 */	addi r0, r3, aPMAN_move_pos@l /* 0x806BEBC4@l */
/* 8056E17C  38 7E 00 28 */	addi r3, r30, 0x28
/* 8056E180  7C 84 07 74 */	extsb r4, r4
/* 8056E184  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8056E188  7C 80 22 14 */	add r4, r0, r4
/* 8056E18C  4B E4 CF A5 */	bl search_position_angleY
/* 8056E190  7C 60 1B 78 */	mr r0, r3
/* 8056E194  3B FE 00 DE */	addi r31, r30, 0xde
/* 8056E198  7F E3 FB 78 */	mr r3, r31
/* 8056E19C  38 A0 04 00 */	li r5, 0x400
/* 8056E1A0  7C 04 07 34 */	extsh r4, r0
/* 8056E1A4  4B E4 C9 A1 */	bl chase_angle
/* 8056E1A8  A8 1F 00 00 */	lha r0, 0(r31)
/* 8056E1AC  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8056E1B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E1B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056E1B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056E1BC  7C 08 03 A6 */	mtlr r0
/* 8056E1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E1C4  4E 80 00 20 */	blr 
