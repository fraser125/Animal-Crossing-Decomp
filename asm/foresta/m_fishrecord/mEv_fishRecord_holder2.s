lbl_803ABC90:
/* 803ABC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803ABC94  7C 08 02 A6 */	mflr r0
/* 803ABC98  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803ABC9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803ABCA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803ABCA4  7C 9F 23 78 */	mr r31, r4
/* 803ABCA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803ABCAC  7C 7E 1B 78 */	mr r30, r3
/* 803ABCB0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803ABCB4  3C 83 00 02 */	addis r4, r3, 2
/* 803ABCB8  38 61 00 08 */	addi r3, r1, 8
/* 803ABCBC  38 84 61 20 */	addi r4, r4, 0x6120
/* 803ABCC0  48 05 B5 75 */	bl lbRTC_TimeCopy
/* 803ABCC4  38 00 00 00 */	li r0, 0
/* 803ABCC8  38 60 00 06 */	li r3, 6
/* 803ABCCC  98 61 00 0A */	stb r3, 0xa(r1)
/* 803ABCD0  7F C3 F3 78 */	mr r3, r30
/* 803ABCD4  7F E4 FB 78 */	mr r4, r31
/* 803ABCD8  38 A1 00 08 */	addi r5, r1, 8
/* 803ABCDC  98 01 00 09 */	stb r0, 9(r1)
/* 803ABCE0  38 C0 00 00 */	li r6, 0
/* 803ABCE4  98 01 00 08 */	stb r0, 8(r1)
/* 803ABCE8  4B FF FD D1 */	bl mEv_fishRecord_local
/* 803ABCEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ABCF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803ABCF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803ABCF8  7C 08 03 A6 */	mtlr r0
/* 803ABCFC  38 21 00 20 */	addi r1, r1, 0x20
/* 803ABD00  4E 80 00 20 */	blr 
