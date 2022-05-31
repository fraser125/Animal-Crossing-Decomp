lbl_8053C8E0:
/* 8053C8E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053C8E4  7C 08 02 A6 */	mflr r0
/* 8053C8E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8053C8EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053C8F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053C8F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8053C8F8  7C 7E 1B 78 */	mr r30, r3
/* 8053C8FC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8053C900  3C 63 00 02 */	addis r3, r3, 2
/* 8053C904  83 E3 60 4C */	lwz r31, 0x604c(r3)
/* 8053C908  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 8053C90C  28 00 00 00 */	cmplwi r0, 0
/* 8053C910  41 82 00 A0 */	beq lbl_8053C9B0
/* 8053C914  28 00 00 01 */	cmplwi r0, 1
/* 8053C918  40 82 00 20 */	bne lbl_8053C938
/* 8053C91C  80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 8053C920  7C 04 F0 40 */	cmplw r4, r30
/* 8053C924  41 82 00 8C */	beq lbl_8053C9B0
/* 8053C928  38 61 00 08 */	addi r3, r1, 8
/* 8053C92C  38 84 00 28 */	addi r4, r4, 0x28
/* 8053C930  4B E7 E5 8D */	bl xyz_t_move
/* 8053C934  48 00 00 10 */	b lbl_8053C944
lbl_8053C938:
/* 8053C938  38 61 00 08 */	addi r3, r1, 8
/* 8053C93C  38 9F 00 C0 */	addi r4, r31, 0xc0
/* 8053C940  4B E7 E5 7D */	bl xyz_t_move
lbl_8053C944:
/* 8053C944  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D08D@ha */
/* 8053C948  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8053C94C  38 03 D0 8D */	addi r0, r3, 0xD08D /* 0x0000D08D@l */
/* 8053C950  7C 04 00 00 */	cmpw r4, r0
/* 8053C954  40 80 00 30 */	bge lbl_8053C984
/* 8053C958  38 03 D0 87 */	addi r0, r3, -12153
/* 8053C95C  7C 04 00 00 */	cmpw r4, r0
/* 8053C960  40 80 00 08 */	bge lbl_8053C968
/* 8053C964  48 00 00 20 */	b lbl_8053C984
lbl_8053C968:
/* 8053C968  88 BF 00 B8 */	lbz r5, 0xb8(r31)
/* 8053C96C  7F C3 F3 78 */	mr r3, r30
/* 8053C970  80 DF 00 BC */	lwz r6, 0xbc(r31)
/* 8053C974  38 FF 00 C0 */	addi r7, r31, 0xc0
/* 8053C978  38 80 00 02 */	li r4, 2
/* 8053C97C  48 00 03 7D */	bl aNPC_set_head_request
/* 8053C980  48 00 00 30 */	b lbl_8053C9B0
lbl_8053C984:
/* 8053C984  7F C3 F3 78 */	mr r3, r30
/* 8053C988  38 81 00 08 */	addi r4, r1, 8
/* 8053C98C  4B FF FE 55 */	bl func_8053C7E0
/* 8053C990  2C 03 00 01 */	cmpwi r3, 1
/* 8053C994  40 82 00 1C */	bne lbl_8053C9B0
/* 8053C998  88 BF 00 B8 */	lbz r5, 0xb8(r31)
/* 8053C99C  7F C3 F3 78 */	mr r3, r30
/* 8053C9A0  80 DF 00 BC */	lwz r6, 0xbc(r31)
/* 8053C9A4  38 FF 00 C0 */	addi r7, r31, 0xc0
/* 8053C9A8  38 80 00 02 */	li r4, 2
/* 8053C9AC  48 00 03 4D */	bl aNPC_set_head_request
lbl_8053C9B0:
/* 8053C9B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053C9B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053C9B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8053C9BC  7C 08 03 A6 */	mtlr r0
/* 8053C9C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8053C9C4  4E 80 00 20 */	blr 
