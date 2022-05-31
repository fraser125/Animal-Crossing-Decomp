lbl_805DEC60:
/* 805DEC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DEC64  7C 08 02 A6 */	mflr r0
/* 805DEC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DEC6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DEC70  93 C1 00 08 */	stw r30, 8(r1)
/* 805DEC74  7C 7E 1B 78 */	mr r30, r3
/* 805DEC78  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DEC7C  83 E4 09 80 */	lwz r31, 0x980(r4)
/* 805DEC80  80 1F 00 00 */	lwz r0, 0(r31)
/* 805DEC84  2C 00 00 00 */	cmpwi r0, 0
/* 805DEC88  41 82 00 58 */	beq lbl_805DECE0
/* 805DEC8C  4B FF E4 79 */	bl mHD_hand_shape_move
/* 805DEC90  7F C3 F3 78 */	mr r3, r30
/* 805DEC94  4B FF E6 E5 */	bl mHD_hand_position_move
/* 805DEC98  7F C3 F3 78 */	mr r3, r30
/* 805DEC9C  4B FF E4 A1 */	bl mHD_calc_hand_offset
/* 805DECA0  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805DECA4  3C 60 80 6D */	lis r3, process@ha /* 0x806CD140@ha */
/* 805DECA8  38 83 D1 40 */	addi r4, r3, process@l /* 0x806CD140@l */
/* 805DECAC  7F C3 F3 78 */	mr r3, r30
/* 805DECB0  54 00 10 3A */	slwi r0, r0, 2
/* 805DECB4  7D 84 00 2E */	lwzx r12, r4, r0
/* 805DECB8  7D 89 03 A6 */	mtctr r12
/* 805DECBC  4E 80 04 21 */	bctrl 
/* 805DECC0  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805DECC4  A8 7F 02 32 */	lha r3, 0x232(r31)
/* 805DECC8  7C 00 18 00 */	cmpw r0, r3
/* 805DECCC  41 82 00 14 */	beq lbl_805DECE0
/* 805DECD0  B0 7F 02 30 */	sth r3, 0x230(r31)
/* 805DECD4  7F C3 F3 78 */	mr r3, r30
/* 805DECD8  38 9F 00 18 */	addi r4, r31, 0x18
/* 805DECDC  4B FF E3 41 */	bl func_805DD01C
lbl_805DECE0:
/* 805DECE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DECE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DECE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DECEC  7C 08 03 A6 */	mtlr r0
/* 805DECF0  38 21 00 10 */	addi r1, r1, 0x10
/* 805DECF4  4E 80 00 20 */	blr 
