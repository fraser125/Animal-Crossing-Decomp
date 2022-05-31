lbl_8038C8FC:
/* 8038C8FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8038C900  7C 08 02 A6 */	mflr r0
/* 8038C904  90 01 00 44 */	stw r0, 0x44(r1)
/* 8038C908  39 61 00 40 */	addi r11, r1, 0x40
/* 8038C90C  4B D0 E5 B5 */	bl func_8009AEC0
/* 8038C910  7C 80 07 35 */	extsh. r0, r4
/* 8038C914  41 82 01 80 */	beq lbl_8038CA94
/* 8038C918  88 03 00 03 */	lbz r0, 3(r3)
/* 8038C91C  28 00 00 00 */	cmplwi r0, 0
/* 8038C920  41 82 01 74 */	beq lbl_8038CA94
/* 8038C924  3C 60 81 13 */	lis r3, l_VecInf@ha /* 0x811355D0@ha */
/* 8038C928  3B 20 00 00 */	li r25, 0
/* 8038C92C  3B E3 55 D0 */	addi r31, r3, l_VecInf@l /* 0x811355D0@l */
/* 8038C930  3B DF 1A 08 */	addi r30, r31, 0x1a08
/* 8038C934  83 7F 1A 04 */	lwz r27, 0x1a04(r31)
/* 8038C938  7F DD F3 78 */	mr r29, r30
/* 8038C93C  3B 5F 00 04 */	addi r26, r31, 4
/* 8038C940  48 00 01 4C */	b lbl_8038CA8C
lbl_8038C944:
/* 8038C944  7F DC F3 78 */	mr r28, r30
/* 8038C948  3B 00 00 00 */	li r24, 0
/* 8038C94C  48 00 01 30 */	b lbl_8038CA7C
lbl_8038C950:
/* 8038C950  7C 19 C0 00 */	cmpw r25, r24
/* 8038C954  41 82 01 20 */	beq lbl_8038CA74
/* 8038C958  81 1C 00 18 */	lwz r8, 0x18(r28)
/* 8038C95C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8038C960  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8038C964  38 C1 00 18 */	addi r6, r1, 0x18
/* 8038C968  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8038C96C  38 E1 00 09 */	addi r7, r1, 9
/* 8038C970  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 8038C974  7C 68 18 50 */	subf r3, r8, r3
/* 8038C978  39 01 00 0A */	addi r8, r1, 0xa
/* 8038C97C  39 21 00 10 */	addi r9, r1, 0x10
/* 8038C980  7C 84 00 50 */	subf r4, r4, r0
/* 8038C984  39 41 00 08 */	addi r10, r1, 8
/* 8038C988  4B FF FE ED */	bl mCoBG_CircleDefenceWallIdx
/* 8038C98C  2C 03 FF FF */	cmpwi r3, -1
/* 8038C990  41 82 00 E4 */	beq lbl_8038CA74
/* 8038C994  80 1F 00 00 */	lwz r0, 0(r31)
/* 8038C998  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038C99C  40 80 00 68 */	bge lbl_8038CA04
/* 8038C9A0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8038C9A4  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8038C9A8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8038C9AC  38 80 00 00 */	li r4, 0
/* 8038C9B0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8038C9B4  38 60 00 01 */	li r3, 1
/* 8038C9B8  7C DA 02 14 */	add r6, r26, r0
/* 8038C9BC  A8 A1 00 0C */	lha r5, 0xc(r1)
/* 8038C9C0  D0 46 00 00 */	stfs f2, 0(r6)
/* 8038C9C4  88 01 00 09 */	lbz r0, 9(r1)
/* 8038C9C8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8038C9CC  D0 46 00 04 */	stfs f2, 4(r6)
/* 8038C9D0  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8038C9D4  D0 46 00 08 */	stfs f2, 8(r6)
/* 8038C9D8  C0 5C 00 08 */	lfs f2, 8(r28)
/* 8038C9DC  D0 46 00 0C */	stfs f2, 0xc(r6)
/* 8038C9E0  D0 26 00 20 */	stfs f1, 0x20(r6)
/* 8038C9E4  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 8038C9E8  B0 A6 00 28 */	sth r5, 0x28(r6)
/* 8038C9EC  90 86 00 2C */	stw r4, 0x2c(r6)
/* 8038C9F0  98 66 00 30 */	stb r3, 0x30(r6)
/* 8038C9F4  98 06 00 2A */	stb r0, 0x2a(r6)
/* 8038C9F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8038C9FC  38 03 00 01 */	addi r0, r3, 1
/* 8038CA00  90 1F 00 00 */	stw r0, 0(r31)
lbl_8038CA04:
/* 8038CA04  80 1F 00 00 */	lwz r0, 0(r31)
/* 8038CA08  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038CA0C  40 80 00 68 */	bge lbl_8038CA74
/* 8038CA10  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8038CA14  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8038CA18  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038CA1C  38 80 00 00 */	li r4, 0
/* 8038CA20  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038CA24  38 60 00 01 */	li r3, 1
/* 8038CA28  7C DA 02 14 */	add r6, r26, r0
/* 8038CA2C  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8038CA30  D0 46 00 00 */	stfs f2, 0(r6)
/* 8038CA34  88 01 00 08 */	lbz r0, 8(r1)
/* 8038CA38  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8038CA3C  D0 46 00 04 */	stfs f2, 4(r6)
/* 8038CA40  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8038CA44  D0 46 00 08 */	stfs f2, 8(r6)
/* 8038CA48  C0 5C 00 08 */	lfs f2, 8(r28)
/* 8038CA4C  D0 46 00 0C */	stfs f2, 0xc(r6)
/* 8038CA50  D0 26 00 20 */	stfs f1, 0x20(r6)
/* 8038CA54  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 8038CA58  B0 A6 00 28 */	sth r5, 0x28(r6)
/* 8038CA5C  90 86 00 2C */	stw r4, 0x2c(r6)
/* 8038CA60  98 66 00 30 */	stb r3, 0x30(r6)
/* 8038CA64  98 06 00 2A */	stb r0, 0x2a(r6)
/* 8038CA68  80 7F 00 00 */	lwz r3, 0(r31)
/* 8038CA6C  38 03 00 01 */	addi r0, r3, 1
/* 8038CA70  90 1F 00 00 */	stw r0, 0(r31)
lbl_8038CA74:
/* 8038CA74  3B 9C 00 20 */	addi r28, r28, 0x20
/* 8038CA78  3B 18 00 01 */	addi r24, r24, 1
lbl_8038CA7C:
/* 8038CA7C  7C 18 D8 00 */	cmpw r24, r27
/* 8038CA80  41 80 FE D0 */	blt lbl_8038C950
/* 8038CA84  3B BD 00 20 */	addi r29, r29, 0x20
/* 8038CA88  3B 39 00 01 */	addi r25, r25, 1
lbl_8038CA8C:
/* 8038CA8C  7C 19 D8 00 */	cmpw r25, r27
/* 8038CA90  41 80 FE B4 */	blt lbl_8038C944
lbl_8038CA94:
/* 8038CA94  39 61 00 40 */	addi r11, r1, 0x40
/* 8038CA98  4B D0 E4 75 */	bl func_8009AF0C
/* 8038CA9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8038CAA0  7C 08 03 A6 */	mtlr r0
/* 8038CAA4  38 21 00 40 */	addi r1, r1, 0x40
/* 8038CAA8  4E 80 00 20 */	blr 
