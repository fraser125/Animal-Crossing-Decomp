lbl_805F06A8:
/* 805F06A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F06AC  7C 08 02 A6 */	mflr r0
/* 805F06B0  3C A0 80 6D */	lis r5, postoffice_str@ha /* 0x806CFAF0@ha */
/* 805F06B4  38 C0 00 0F */	li r6, 0xf
/* 805F06B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F06BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F06C0  7C 9F 23 78 */	mr r31, r4
/* 805F06C4  38 85 FA F0 */	addi r4, r5, postoffice_str@l /* 0x806CFAF0@l */
/* 805F06C8  38 A0 00 23 */	li r5, 0x23
/* 805F06CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805F06D0  7C 7E 1B 78 */	mr r30, r3
/* 805F06D4  38 7F 00 2C */	addi r3, r31, 0x2c
/* 805F06D8  4B FF FA 61 */	bl mTG_strcpy
/* 805F06DC  38 00 00 0F */	li r0, 0xf
/* 805F06E0  38 80 00 02 */	li r4, 2
/* 805F06E4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 805F06E8  38 00 00 0A */	li r0, 0xa
/* 805F06EC  38 60 00 03 */	li r3, 3
/* 805F06F0  90 9F 00 54 */	stw r4, 0x54(r31)
/* 805F06F4  98 1E 00 02 */	stb r0, 2(r30)
/* 805F06F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F06FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F0700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F0704  7C 08 03 A6 */	mtlr r0
/* 805F0708  38 21 00 10 */	addi r1, r1, 0x10
/* 805F070C  4E 80 00 20 */	blr 
