lbl_805F0564:
/* 805F0564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F0568  7C 08 02 A6 */	mflr r0
/* 805F056C  3C A0 80 6D */	lis r5, str_happy_room@ha /* 0x806CFAE8@ha */
/* 805F0570  38 C0 00 07 */	li r6, 7
/* 805F0574  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F0578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F057C  7C 9F 23 78 */	mr r31, r4
/* 805F0580  38 85 FA E8 */	addi r4, r5, str_happy_room@l /* 0x806CFAE8@l */
/* 805F0584  38 A0 00 23 */	li r5, 0x23
/* 805F0588  93 C1 00 08 */	stw r30, 8(r1)
/* 805F058C  7C 7E 1B 78 */	mr r30, r3
/* 805F0590  38 7F 00 2C */	addi r3, r31, 0x2c
/* 805F0594  4B FF FB A5 */	bl mTG_strcpy
/* 805F0598  38 00 00 07 */	li r0, 7
/* 805F059C  38 80 00 02 */	li r4, 2
/* 805F05A0  90 1F 00 50 */	stw r0, 0x50(r31)
/* 805F05A4  38 00 00 0B */	li r0, 0xb
/* 805F05A8  38 60 00 01 */	li r3, 1
/* 805F05AC  90 9F 00 54 */	stw r4, 0x54(r31)
/* 805F05B0  98 1E 00 02 */	stb r0, 2(r30)
/* 805F05B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F05B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F05BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F05C0  7C 08 03 A6 */	mtlr r0
/* 805F05C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805F05C8  4E 80 00 20 */	blr 
