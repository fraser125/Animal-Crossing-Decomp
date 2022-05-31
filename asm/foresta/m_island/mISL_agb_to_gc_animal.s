lbl_803B5404:
/* 803B5404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B5408  7C 08 02 A6 */	mflr r0
/* 803B540C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B5410  39 61 00 20 */	addi r11, r1, 0x20
/* 803B5414  4B CE 5A B9 */	bl func_8009AECC
/* 803B5418  7C 7B 1B 78 */	mr r27, r3
/* 803B541C  7C 9C 23 78 */	mr r28, r4
/* 803B5420  4B FF F8 01 */	bl mIS_agb_to_gc_anmpersonal
/* 803B5424  3B A0 00 00 */	li r29, 0
/* 803B5428  3B E0 00 00 */	li r31, 0
/* 803B542C  3B C0 00 00 */	li r30, 0
lbl_803B5430:
/* 803B5430  38 7E 00 10 */	addi r3, r30, 0x10
/* 803B5434  38 9F 00 10 */	addi r4, r31, 0x10
/* 803B5438  7C 7B 1A 14 */	add r3, r27, r3
/* 803B543C  7C 9C 22 14 */	add r4, r28, r4
/* 803B5440  4B FF FA A9 */	bl mISL_agb_to_gc_memory
/* 803B5444  3B BD 00 01 */	addi r29, r29, 1
/* 803B5448  3B DE 01 38 */	addi r30, r30, 0x138
/* 803B544C  2C 1D 00 07 */	cmpwi r29, 7
/* 803B5450  3B FF 01 40 */	addi r31, r31, 0x140
/* 803B5454  41 80 FF DC */	blt lbl_803B5430
/* 803B5458  38 7C 08 D0 */	addi r3, r28, 0x8d0
/* 803B545C  38 9B 08 98 */	addi r4, r27, 0x898
/* 803B5460  38 A0 00 05 */	li r5, 5
/* 803B5464  4B CA 7B B9 */	bl func_8005D01C
/* 803B5468  38 7C 08 D8 */	addi r3, r28, 0x8d8
/* 803B546C  38 9B 08 9D */	addi r4, r27, 0x89d
/* 803B5470  38 A0 00 0A */	li r5, 0xa
/* 803B5474  4B CA 7B A9 */	bl func_8005D01C
/* 803B5478  38 7B 08 A8 */	addi r3, r27, 0x8a8
/* 803B547C  38 9C 08 E4 */	addi r4, r28, 0x8e4
/* 803B5480  4B FF FC E5 */	bl mISL_agb_to_gc_quest
/* 803B5484  38 7C 09 10 */	addi r3, r28, 0x910
/* 803B5488  38 9B 08 D0 */	addi r4, r27, 0x8d0
/* 803B548C  38 A0 00 08 */	li r5, 8
/* 803B5490  4B CA 7B 8D */	bl func_8005D01C
/* 803B5494  38 7B 08 D8 */	addi r3, r27, 0x8d8
/* 803B5498  38 9C 09 1C */	addi r4, r28, 0x91c
/* 803B549C  4B FF FD 55 */	bl mISL_agb_to_gc_anmuni
/* 803B54A0  88 1C 09 28 */	lbz r0, 0x928(r28)
/* 803B54A4  38 7B 08 E4 */	addi r3, r27, 0x8e4
/* 803B54A8  38 9C 09 2A */	addi r4, r28, 0x92a
/* 803B54AC  38 A0 00 01 */	li r5, 1
/* 803B54B0  98 1B 08 E2 */	stb r0, 0x8e2(r27)
/* 803B54B4  88 1C 09 29 */	lbz r0, 0x929(r28)
/* 803B54B8  98 1B 08 E3 */	stb r0, 0x8e3(r27)
/* 803B54BC  4B FF EC 61 */	bl mISL_short
/* 803B54C0  38 7B 08 E6 */	addi r3, r27, 0x8e6
/* 803B54C4  38 9C 09 2C */	addi r4, r28, 0x92c
/* 803B54C8  38 A0 00 01 */	li r5, 1
/* 803B54CC  4B FF EC 51 */	bl mISL_short
/* 803B54D0  88 1C 09 2E */	lbz r0, 0x92e(r28)
/* 803B54D4  38 7B 08 EE */	addi r3, r27, 0x8ee
/* 803B54D8  38 9C 09 34 */	addi r4, r28, 0x934
/* 803B54DC  38 A0 00 01 */	li r5, 1
/* 803B54E0  98 1B 08 E8 */	stb r0, 0x8e8(r27)
/* 803B54E4  88 1C 09 2F */	lbz r0, 0x92f(r28)
/* 803B54E8  98 1B 08 E9 */	stb r0, 0x8e9(r27)
/* 803B54EC  88 1C 09 30 */	lbz r0, 0x930(r28)
/* 803B54F0  98 1B 08 EA */	stb r0, 0x8ea(r27)
/* 803B54F4  88 1C 09 31 */	lbz r0, 0x931(r28)
/* 803B54F8  98 1B 08 EB */	stb r0, 0x8eb(r27)
/* 803B54FC  88 1C 09 32 */	lbz r0, 0x932(r28)
/* 803B5500  98 1B 08 EC */	stb r0, 0x8ec(r27)
/* 803B5504  88 1C 09 33 */	lbz r0, 0x933(r28)
/* 803B5508  98 1B 08 ED */	stb r0, 0x8ed(r27)
/* 803B550C  4B FF EC 11 */	bl mISL_short
/* 803B5510  38 7C 09 3C */	addi r3, r28, 0x93c
/* 803B5514  38 9B 08 F0 */	addi r4, r27, 0x8f0
/* 803B5518  38 A0 00 0F */	li r5, 0xf
/* 803B551C  4B CA 7B 01 */	bl func_8005D01C
/* 803B5520  3B C0 00 00 */	li r30, 0
/* 803B5524  3B E0 00 00 */	li r31, 0
lbl_803B5528:
/* 803B5528  38 7F 09 00 */	addi r3, r31, 0x900
/* 803B552C  38 9F 09 50 */	addi r4, r31, 0x950
/* 803B5530  7C 7B 1A 14 */	add r3, r27, r3
/* 803B5534  7C 9C 22 14 */	add r4, r28, r4
/* 803B5538  4B FF FD 25 */	bl mISL_agb_to_gc_hp_mail
/* 803B553C  3B DE 00 01 */	addi r30, r30, 1
/* 803B5540  3B FF 00 1C */	addi r31, r31, 0x1c
/* 803B5544  2C 1E 00 04 */	cmpwi r30, 4
/* 803B5548  41 80 FF E0 */	blt lbl_803B5528
/* 803B554C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B5550  4B CE 59 C9 */	bl func_8009AF18
/* 803B5554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B5558  7C 08 03 A6 */	mtlr r0
/* 803B555C  38 21 00 20 */	addi r1, r1, 0x20
/* 803B5560  4E 80 00 20 */	blr 
