lbl_8052D8D0:
/* 8052D8D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052D8D4  7C 08 02 A6 */	mflr r0
/* 8052D8D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052D8DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052D8E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052D8E4  3B E0 00 00 */	li r31, 0
/* 8052D8E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052D8EC  7C 7E 1B 78 */	mr r30, r3
/* 8052D8F0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8052D8F4  3C 63 00 02 */	addis r3, r3, 2
/* 8052D8F8  80 83 60 A0 */	lwz r4, 0x60a0(r3)
/* 8052D8FC  28 04 00 00 */	cmplwi r4, 0
/* 8052D900  41 82 00 5C */	beq lbl_8052D95C
/* 8052D904  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8052D908  81 84 00 00 */	lwz r12, 0(r4)
/* 8052D90C  38 83 52 F0 */	addi r4, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8052D910  7F C5 F3 78 */	mr r5, r30
/* 8052D914  39 01 00 08 */	addi r8, r1, 8
/* 8052D918  88 7E 08 9F */	lbz r3, 0x89f(r30)
/* 8052D91C  80 C4 00 00 */	lwz r6, 0(r4)
/* 8052D920  38 80 00 04 */	li r4, 4
/* 8052D924  38 E0 FF FF */	li r7, -1
/* 8052D928  7D 89 03 A6 */	mtctr r12
/* 8052D92C  4E 80 04 21 */	bctrl 
/* 8052D930  7C 66 1B 79 */	or. r6, r3, r3
/* 8052D934  41 82 00 28 */	beq lbl_8052D95C
/* 8052D938  80 BE 08 A0 */	lwz r5, 0x8a0(r30)
/* 8052D93C  38 00 00 01 */	li r0, 1
/* 8052D940  38 66 00 28 */	addi r3, r6, 0x28
/* 8052D944  38 9E 00 28 */	addi r4, r30, 0x28
/* 8052D948  90 BE 08 A4 */	stw r5, 0x8a4(r30)
/* 8052D94C  90 DE 08 A0 */	stw r6, 0x8a0(r30)
/* 8052D950  98 1E 07 51 */	stb r0, 0x751(r30)
/* 8052D954  4B E8 D5 69 */	bl xyz_t_move
/* 8052D958  3B E0 00 01 */	li r31, 1
lbl_8052D95C:
/* 8052D95C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052D960  7F E3 FB 78 */	mr r3, r31
/* 8052D964  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052D968  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052D96C  7C 08 03 A6 */	mtlr r0
/* 8052D970  38 21 00 20 */	addi r1, r1, 0x20
/* 8052D974  4E 80 00 20 */	blr 
