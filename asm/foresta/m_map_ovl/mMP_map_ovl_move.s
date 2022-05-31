lbl_805E6958:
/* 805E6958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E695C  7C 08 02 A6 */	mflr r0
/* 805E6960  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E6964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E6968  93 C1 00 08 */	stw r30, 8(r1)
/* 805E696C  7C 7E 1B 78 */	mr r30, r3
/* 805E6970  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E6974  81 84 01 C8 */	lwz r12, 0x1c8(r4)
/* 805E6978  3B E4 01 BC */	addi r31, r4, 0x1bc
/* 805E697C  7D 89 03 A6 */	mtctr r12
/* 805E6980  4E 80 04 21 */	bctrl 
/* 805E6984  80 1F 00 04 */	lwz r0, 4(r31)
/* 805E6988  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CDE40@ha */
/* 805E698C  38 A3 DE 40 */	addi r5, r3, ovl_move_proc@l /* 0x806CDE40@l */
/* 805E6990  7F C3 F3 78 */	mr r3, r30
/* 805E6994  54 00 10 3A */	slwi r0, r0, 2
/* 805E6998  7F E4 FB 78 */	mr r4, r31
/* 805E699C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E69A0  7D 89 03 A6 */	mtctr r12
/* 805E69A4  4E 80 04 21 */	bctrl 
/* 805E69A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E69AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E69B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E69B4  7C 08 03 A6 */	mtlr r0
/* 805E69B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805E69BC  4E 80 00 20 */	blr 
