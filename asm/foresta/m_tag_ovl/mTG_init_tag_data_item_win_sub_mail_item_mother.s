lbl_805F0490:
/* 805F0490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F0494  7C 08 02 A6 */	mflr r0
/* 805F0498  3C A0 80 6D */	lis r5, mother_str@ha /* 0x806CFB00@ha */
/* 805F049C  38 C0 00 04 */	li r6, 4
/* 805F04A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F04A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F04A8  7C 9F 23 78 */	mr r31, r4
/* 805F04AC  38 85 FB 00 */	addi r4, r5, mother_str@l /* 0x806CFB00@l */
/* 805F04B0  38 A0 00 23 */	li r5, 0x23
/* 805F04B4  93 C1 00 08 */	stw r30, 8(r1)
/* 805F04B8  7C 7E 1B 78 */	mr r30, r3
/* 805F04BC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 805F04C0  4B FF FC 79 */	bl mTG_strcpy
/* 805F04C4  38 80 00 04 */	li r4, 4
/* 805F04C8  38 00 00 07 */	li r0, 7
/* 805F04CC  90 9F 00 50 */	stw r4, 0x50(r31)
/* 805F04D0  38 60 00 03 */	li r3, 3
/* 805F04D4  90 9F 00 54 */	stw r4, 0x54(r31)
/* 805F04D8  98 1E 00 02 */	stb r0, 2(r30)
/* 805F04DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F04E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F04E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F04E8  7C 08 03 A6 */	mtlr r0
/* 805F04EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F04F0  4E 80 00 20 */	blr 
