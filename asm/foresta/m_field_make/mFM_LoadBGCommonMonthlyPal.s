lbl_803A37B4:
/* 803A37B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A37B8  7C 08 02 A6 */	mflr r0
/* 803A37BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A37C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A37C4  4B CF 77 05 */	bl func_8009AEC8
/* 803A37C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A37CC  3C 80 80 65 */	lis r4, data_80653520@ha /* 0x80653520@ha */
/* 803A37D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A37D4  3C 63 00 02 */	addis r3, r3, 2
/* 803A37D8  3B 84 35 20 */	addi r28, r4, data_80653520@l /* 0x80653520@l */
/* 803A37DC  80 83 61 14 */	lwz r4, 0x6114(r3)
/* 803A37E0  28 04 00 12 */	cmplwi r4, 0x12
/* 803A37E4  41 80 00 08 */	blt lbl_803A37EC
/* 803A37E8  38 80 00 00 */	li r4, 0
lbl_803A37EC:
/* 803A37EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A37F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A37F4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803A37F8  2C 00 00 26 */	cmpwi r0, 0x26
/* 803A37FC  40 82 00 08 */	bne lbl_803A3804
/* 803A3800  38 80 00 04 */	li r4, 4
lbl_803A3804:
/* 803A3804  54 80 10 3A */	slwi r0, r4, 2
/* 803A3808  38 7C 07 28 */	addi r3, r28, 0x728
/* 803A380C  7F 63 00 2E */	lwzx r27, r3, r0
/* 803A3810  3B BC 06 F8 */	addi r29, r28, 0x6f8
/* 803A3814  3B 40 00 00 */	li r26, 0
/* 803A3818  3B E0 00 00 */	li r31, 0
/* 803A381C  3B C0 00 00 */	li r30, 0
lbl_803A3820:
/* 803A3820  38 9C 04 30 */	addi r4, r28, 0x430
/* 803A3824  7C 7D F8 2E */	lwzx r3, r29, r31
/* 803A3828  7C 84 F2 14 */	add r4, r4, r30
/* 803A382C  80 A4 00 04 */	lwz r5, 4(r4)
/* 803A3830  80 84 00 00 */	lwz r4, 0(r4)
/* 803A3834  7C 1B 29 D6 */	mullw r0, r27, r5
/* 803A3838  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 803A383C  7C 63 02 14 */	add r3, r3, r0
/* 803A3840  4B CB 97 DD */	bl func_8005D01C
/* 803A3844  3B 5A 00 01 */	addi r26, r26, 1
/* 803A3848  3B DE 00 08 */	addi r30, r30, 8
/* 803A384C  2C 1A 00 05 */	cmpwi r26, 5
/* 803A3850  3B FF 00 04 */	addi r31, r31, 4
/* 803A3854  41 80 FF CC */	blt lbl_803A3820
/* 803A3858  39 61 00 20 */	addi r11, r1, 0x20
/* 803A385C  4B CF 76 B9 */	bl func_8009AF14
/* 803A3860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A3864  7C 08 03 A6 */	mtlr r0
/* 803A3868  38 21 00 20 */	addi r1, r1, 0x20
/* 803A386C  4E 80 00 20 */	blr 
