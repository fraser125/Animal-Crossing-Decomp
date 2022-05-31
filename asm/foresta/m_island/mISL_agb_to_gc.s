lbl_803B5860:
/* 803B5860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B5864  7C 08 02 A6 */	mflr r0
/* 803B5868  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B586C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B5870  4B CE 56 65 */	bl func_8009AED4
/* 803B5874  7C 9E 23 79 */	or. r30, r4, r4
/* 803B5878  7C 7D 1B 78 */	mr r29, r3
/* 803B587C  41 82 00 EC */	beq lbl_803B5968
/* 803B5880  7F A4 EB 78 */	mr r4, r29
/* 803B5884  38 7E 00 08 */	addi r3, r30, 8
/* 803B5888  38 A0 00 08 */	li r5, 8
/* 803B588C  4B CA 77 91 */	bl func_8005D01C
/* 803B5890  38 7D 00 08 */	addi r3, r29, 8
/* 803B5894  38 9E 00 14 */	addi r4, r30, 0x14
/* 803B5898  4B FF EB 65 */	bl mISL_agb_to_gc_iandinfo
/* 803B589C  38 7D 00 14 */	addi r3, r29, 0x14
/* 803B58A0  38 9E 00 24 */	addi r4, r30, 0x24
/* 803B58A4  4B FF ED 3D */	bl mISL_agb_to_gc_fgblock
/* 803B58A8  38 7D 04 18 */	addi r3, r29, 0x418
/* 803B58AC  38 9E 04 28 */	addi r4, r30, 0x428
/* 803B58B0  4B FF F1 59 */	bl mISL_agb_to_gc_cottage
/* 803B58B4  38 7E 0D 00 */	addi r3, r30, 0xd00
/* 803B58B8  38 9D 0C E0 */	addi r4, r29, 0xce0
/* 803B58BC  38 A0 02 20 */	li r5, 0x220
/* 803B58C0  4B CA 77 5D */	bl func_8005D01C
/* 803B58C4  38 7D 0F 00 */	addi r3, r29, 0xf00
/* 803B58C8  38 9E 0F 20 */	addi r4, r30, 0xf20
/* 803B58CC  4B FF FB 39 */	bl mISL_agb_to_gc_animal
/* 803B58D0  38 7D 18 88 */	addi r3, r29, 0x1888
/* 803B58D4  38 9E 18 F8 */	addi r4, r30, 0x18f8
/* 803B58D8  38 A0 00 20 */	li r5, 0x20
/* 803B58DC  4B FF E8 41 */	bl mISL_short
/* 803B58E0  38 7E 19 38 */	addi r3, r30, 0x1938
/* 803B58E4  38 9D 18 C8 */	addi r4, r29, 0x18c8
/* 803B58E8  38 A0 00 02 */	li r5, 2
/* 803B58EC  4B CA 77 31 */	bl func_8005D01C
/* 803B58F0  38 7D 18 CA */	addi r3, r29, 0x18ca
/* 803B58F4  38 9E 19 3C */	addi r4, r30, 0x193c
/* 803B58F8  4B FF EF A1 */	bl mISL_gc_to_agb_time
/* 803B58FC  88 1E 39 7D */	lbz r0, 0x397d(r30)
/* 803B5900  98 1D 18 E1 */	stb r0, 0x18e1(r29)
/* 803B5904  88 1E 39 7E */	lbz r0, 0x397e(r30)
/* 803B5908  98 1D 18 E2 */	stb r0, 0x18e2(r29)
/* 803B590C  4B FE F3 85 */	bl mFI_CheckFieldData
/* 803B5910  2C 03 00 01 */	cmpwi r3, 1
/* 803B5914  40 82 00 54 */	bne lbl_803B5968
/* 803B5918  38 61 00 08 */	addi r3, r1, 8
/* 803B591C  38 80 00 08 */	li r4, 8
/* 803B5920  4B CA 77 49 */	bl bzero
/* 803B5924  38 61 00 08 */	addi r3, r1, 8
/* 803B5928  4B FF 0B B1 */	bl mFI_GetIslandBlockNumX
/* 803B592C  3B C0 00 00 */	li r30, 0
/* 803B5930  3B E0 00 00 */	li r31, 0
lbl_803B5934:
/* 803B5934  57 C4 28 34 */	slwi r4, r30, 5
/* 803B5938  80 01 00 08 */	lwz r0, 8(r1)
/* 803B593C  38 7F 00 14 */	addi r3, r31, 0x14
/* 803B5940  38 C0 00 08 */	li r6, 8
/* 803B5944  38 84 18 88 */	addi r4, r4, 0x1888
/* 803B5948  7C BE 02 14 */	add r5, r30, r0
/* 803B594C  7C 7D 1A 14 */	add r3, r29, r3
/* 803B5950  7C 9D 22 14 */	add r4, r29, r4
/* 803B5954  4B FF FE 49 */	bl mISL_toHole
/* 803B5958  3B DE 00 01 */	addi r30, r30, 1
/* 803B595C  3B FF 02 00 */	addi r31, r31, 0x200
/* 803B5960  2C 1E 00 02 */	cmpwi r30, 2
/* 803B5964  41 80 FF D0 */	blt lbl_803B5934
lbl_803B5968:
/* 803B5968  39 61 00 20 */	addi r11, r1, 0x20
/* 803B596C  4B CE 55 B5 */	bl func_8009AF20
/* 803B5970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B5974  7C 08 03 A6 */	mtlr r0
/* 803B5978  38 21 00 20 */	addi r1, r1, 0x20
/* 803B597C  4E 80 00 20 */	blr 
