lbl_8042B574:
/* 8042B574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042B578  7C 08 02 A6 */	mflr r0
/* 8042B57C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042B580  39 61 00 20 */	addi r11, r1, 0x20
/* 8042B584  4B C6 F9 4D */	bl func_8009AED0
/* 8042B588  3C 80 80 68 */	lis r4, mochi_pos@ha /* 0x80684214@ha */
/* 8042B58C  7C 7F 1B 78 */	mr r31, r3
/* 8042B590  3B 84 42 14 */	addi r28, r4, mochi_pos@l /* 0x80684214@l */
/* 8042B594  39 80 00 00 */	li r12, 0
/* 8042B598  80 DC 00 00 */	lwz r6, 0(r28)
/* 8042B59C  3C 80 80 64 */	lis r4, data_8064406C@ha /* 0x8064406C@ha */
/* 8042B5A0  80 1C 00 04 */	lwz r0, 4(r28)
/* 8042B5A4  38 A4 40 6C */	addi r5, r4, data_8064406C@l /* 0x8064406C@l */
/* 8042B5A8  3C 60 80 64 */	lis r3, lit_428@ha /* 0x80644070@ha */
/* 8042B5AC  C0 25 00 00 */	lfs f1, 0(r5)
/* 8042B5B0  90 DF 01 C0 */	stw r6, 0x1c0(r31)
/* 8042B5B4  38 83 40 70 */	addi r4, r3, lit_428@l /* 0x80644070@l */
/* 8042B5B8  3C 60 80 68 */	lis r3, aKI_mochi_collision_info@ha /* 0x80684204@ha */
/* 8042B5BC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8042B5C0  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 8042B5C4  38 E3 42 04 */	addi r7, r3, aKI_mochi_collision_info@l /* 0x80684204@l */
/* 8042B5C8  39 60 00 06 */	li r11, 6
/* 8042B5CC  38 00 00 07 */	li r0, 7
/* 8042B5D0  80 BC 00 08 */	lwz r5, 8(r28)
/* 8042B5D4  38 7F 01 98 */	addi r3, r31, 0x198
/* 8042B5D8  38 9F 01 C0 */	addi r4, r31, 0x1c0
/* 8042B5DC  38 DF 01 D8 */	addi r6, r31, 0x1d8
/* 8042B5E0  90 BF 01 C8 */	stw r5, 0x1c8(r31)
/* 8042B5E4  38 BF 01 CC */	addi r5, r31, 0x1cc
/* 8042B5E8  39 00 00 00 */	li r8, 0
/* 8042B5EC  39 20 00 00 */	li r9, 0
/* 8042B5F0  83 BC 00 00 */	lwz r29, 0(r28)
/* 8042B5F4  39 40 00 00 */	li r10, 0
/* 8042B5F8  83 DC 00 04 */	lwz r30, 4(r28)
/* 8042B5FC  93 BF 01 CC */	stw r29, 0x1cc(r31)
/* 8042B600  93 DF 01 D0 */	stw r30, 0x1d0(r31)
/* 8042B604  83 DC 00 08 */	lwz r30, 8(r28)
/* 8042B608  93 DF 01 D4 */	stw r30, 0x1d4(r31)
/* 8042B60C  B1 9F 01 D8 */	sth r12, 0x1d8(r31)
/* 8042B610  91 61 00 08 */	stw r11, 8(r1)
/* 8042B614  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042B618  4B F6 17 8D */	bl mCoBG_RegistMoveBg
/* 8042B61C  90 7F 01 94 */	stw r3, 0x194(r31)
/* 8042B620  39 61 00 20 */	addi r11, r1, 0x20
/* 8042B624  4B C6 F8 F9 */	bl func_8009AF1C
/* 8042B628  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042B62C  7C 08 03 A6 */	mtlr r0
/* 8042B630  38 21 00 20 */	addi r1, r1, 0x20
/* 8042B634  4E 80 00 20 */	blr 
