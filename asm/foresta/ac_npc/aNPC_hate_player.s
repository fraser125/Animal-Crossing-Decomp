lbl_805360C0:
/* 805360C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805360C4  7C 08 02 A6 */	mflr r0
/* 805360C8  38 80 00 0C */	li r4, 0xc
/* 805360CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805360D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805360D4  3B E0 00 00 */	li r31, 0
/* 805360D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805360DC  7C 7E 1B 78 */	mr r30, r3
/* 805360E0  38 61 00 08 */	addi r3, r1, 8
/* 805360E4  4B B2 6F 85 */	bl bzero
/* 805360E8  38 00 00 01 */	li r0, 1
/* 805360EC  3C 60 80 65 */	lis r3, lit_1151@ha /* 0x806492A4@ha */
/* 805360F0  B0 01 00 08 */	sth r0, 8(r1)
/* 805360F4  C0 03 92 A4 */	lfs f0, lit_1151@l(r3)  /* 0x806492A4@l */
/* 805360F8  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 805360FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80536100  40 80 00 24 */	bge lbl_80536124
/* 80536104  7F C3 F3 78 */	mr r3, r30
/* 80536108  38 E1 00 08 */	addi r7, r1, 8
/* 8053610C  38 80 00 01 */	li r4, 1
/* 80536110  38 A0 00 02 */	li r5, 2
/* 80536114  38 C0 00 01 */	li r6, 1
/* 80536118  4B FF B4 E5 */	bl aNPC_set_request_act
/* 8053611C  3B E0 00 01 */	li r31, 1
/* 80536120  48 00 00 30 */	b lbl_80536150
lbl_80536124:
/* 80536124  3C 60 80 65 */	lis r3, lit_3816@ha /* 0x80649348@ha */
/* 80536128  C0 03 93 48 */	lfs f0, lit_3816@l(r3)  /* 0x80649348@l */
/* 8053612C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80536130  40 80 00 20 */	bge lbl_80536150
/* 80536134  7F C3 F3 78 */	mr r3, r30
/* 80536138  38 E1 00 08 */	addi r7, r1, 8
/* 8053613C  38 80 00 01 */	li r4, 1
/* 80536140  38 A0 00 01 */	li r5, 1
/* 80536144  38 C0 00 01 */	li r6, 1
/* 80536148  4B FF B4 B5 */	bl aNPC_set_request_act
/* 8053614C  3B E0 00 01 */	li r31, 1
lbl_80536150:
/* 80536150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80536154  7F E3 FB 78 */	mr r3, r31
/* 80536158  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053615C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80536160  7C 08 03 A6 */	mtlr r0
/* 80536164  38 21 00 20 */	addi r1, r1, 0x20
/* 80536168  4E 80 00 20 */	blr 
