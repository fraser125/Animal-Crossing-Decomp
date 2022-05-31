lbl_805177CC:
/* 805177CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805177D0  7C 08 02 A6 */	mflr r0
/* 805177D4  3C A0 80 6A */	lis r5, process@ha /* 0x8069FE70@ha */
/* 805177D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805177DC  38 00 00 00 */	li r0, 0
/* 805177E0  38 A5 FE 70 */	addi r5, r5, process@l /* 0x8069FE70@l */
/* 805177E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805177E8  7C 9F 23 78 */	mr r31, r4
/* 805177EC  93 C1 00 08 */	stw r30, 8(r1)
/* 805177F0  7C 7E 1B 78 */	mr r30, r3
/* 805177F4  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 805177F8  54 80 10 3A */	slwi r0, r4, 2
/* 805177FC  93 E3 09 94 */	stw r31, 0x994(r3)
/* 80517800  7C 05 00 2E */	lwzx r0, r5, r0
/* 80517804  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80517808  4B FF F8 F9 */	bl aCD1_set_animation
/* 8051780C  7F C3 F3 78 */	mr r3, r30
/* 80517810  7F E4 FB 78 */	mr r4, r31
/* 80517814  4B FF FF 45 */	bl aCD1_set_spd_info
/* 80517818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051781C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517820  83 C1 00 08 */	lwz r30, 8(r1)
/* 80517824  7C 08 03 A6 */	mtlr r0
/* 80517828  38 21 00 10 */	addi r1, r1, 0x10
/* 8051782C  4E 80 00 20 */	blr 
