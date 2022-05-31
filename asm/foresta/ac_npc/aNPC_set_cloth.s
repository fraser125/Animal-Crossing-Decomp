lbl_80532764:
/* 80532764  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80532768  7C 08 02 A6 */	mflr r0
/* 8053276C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80532770  39 61 00 20 */	addi r11, r1, 0x20
/* 80532774  4B B6 87 5D */	bl func_8009AED0
/* 80532778  7C 7C 1B 78 */	mr r28, r3
/* 8053277C  7C 9D 23 78 */	mr r29, r4
/* 80532780  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80532784  38 C1 00 08 */	addi r6, r1, 8
/* 80532788  38 60 00 00 */	li r3, 0
/* 8053278C  38 A0 00 01 */	li r5, 1
/* 80532790  A0 1F 08 E4 */	lhz r0, 0x8e4(r31)
/* 80532794  38 9F 08 E4 */	addi r4, r31, 0x8e4
/* 80532798  38 E0 00 01 */	li r7, 1
/* 8053279C  39 00 00 02 */	li r8, 2
/* 805327A0  B0 01 00 08 */	sth r0, 8(r1)
/* 805327A4  39 20 00 08 */	li r9, 8
/* 805327A8  39 40 00 00 */	li r10, 0
/* 805327AC  8B DF 08 EB */	lbz r30, 0x8eb(r31)
/* 805327B0  4B EB 5C 2D */	bl mSP_SelectRandomItem_New
/* 805327B4  A0 9F 08 E4 */	lhz r4, 0x8e4(r31)
/* 805327B8  7F 83 E3 78 */	mr r3, r28
/* 805327BC  38 A0 00 FF */	li r5, 0xff
/* 805327C0  4B FF A0 51 */	bl aNPC_setup_chg_cloth
/* 805327C4  A0 81 00 08 */	lhz r4, 8(r1)
/* 805327C8  7F 83 E3 78 */	mr r3, r28
/* 805327CC  7F C5 F3 78 */	mr r5, r30
/* 805327D0  4B FF A0 59 */	bl aNPC_setup_cloth
/* 805327D4  7F 83 E3 78 */	mr r3, r28
/* 805327D8  7F A4 EB 78 */	mr r4, r29
/* 805327DC  38 A0 FF FC */	li r5, -4
/* 805327E0  4B FF E4 79 */	bl aNPC_set_relation
/* 805327E4  7F 83 E3 78 */	mr r3, r28
/* 805327E8  38 80 00 03 */	li r4, 3
/* 805327EC  38 A0 00 01 */	li r5, 1
/* 805327F0  4B FF E4 DD */	bl aNPC_set_feel_info
/* 805327F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805327F8  4B B6 87 25 */	bl func_8009AF1C
/* 805327FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80532800  7C 08 03 A6 */	mtlr r0
/* 80532804  38 21 00 20 */	addi r1, r1, 0x20
/* 80532808  4E 80 00 20 */	blr 
