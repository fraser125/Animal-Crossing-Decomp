lbl_803B52A4:
/* 803B52A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B52A8  7C 08 02 A6 */	mflr r0
/* 803B52AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B52B0  39 61 00 20 */	addi r11, r1, 0x20
/* 803B52B4  4B CE 5C 19 */	bl func_8009AECC
/* 803B52B8  7C 7B 1B 78 */	mr r27, r3
/* 803B52BC  7C 9C 23 78 */	mr r28, r4
/* 803B52C0  4B FF F8 F5 */	bl mIS_gc_to_agb_anmpersonal
/* 803B52C4  3B A0 00 00 */	li r29, 0
/* 803B52C8  3B E0 00 00 */	li r31, 0
/* 803B52CC  3B C0 00 00 */	li r30, 0
lbl_803B52D0:
/* 803B52D0  38 7E 00 10 */	addi r3, r30, 0x10
/* 803B52D4  38 9F 00 10 */	addi r4, r31, 0x10
/* 803B52D8  7C 7B 1A 14 */	add r3, r27, r3
/* 803B52DC  7C 9C 22 14 */	add r4, r28, r4
/* 803B52E0  4B FF FB 99 */	bl mISL_gc_to_agb_memory
/* 803B52E4  3B BD 00 01 */	addi r29, r29, 1
/* 803B52E8  3B DE 01 40 */	addi r30, r30, 0x140
/* 803B52EC  2C 1D 00 07 */	cmpwi r29, 7
/* 803B52F0  3B FF 01 38 */	addi r31, r31, 0x138
/* 803B52F4  41 80 FF DC */	blt lbl_803B52D0
/* 803B52F8  38 7C 08 98 */	addi r3, r28, 0x898
/* 803B52FC  38 9B 08 D0 */	addi r4, r27, 0x8d0
/* 803B5300  38 A0 00 05 */	li r5, 5
/* 803B5304  4B CA 7D 19 */	bl func_8005D01C
/* 803B5308  38 7C 08 9D */	addi r3, r28, 0x89d
/* 803B530C  38 9B 08 D8 */	addi r4, r27, 0x8d8
/* 803B5310  38 A0 00 0A */	li r5, 0xa
/* 803B5314  4B CA 7D 09 */	bl func_8005D01C
/* 803B5318  38 7B 08 E4 */	addi r3, r27, 0x8e4
/* 803B531C  38 9C 08 A8 */	addi r4, r28, 0x8a8
/* 803B5320  4B FF FD DD */	bl mISL_gc_to_agb_quest
/* 803B5324  38 7C 08 D0 */	addi r3, r28, 0x8d0
/* 803B5328  38 9B 09 10 */	addi r4, r27, 0x910
/* 803B532C  38 A0 00 08 */	li r5, 8
/* 803B5330  4B CA 7C ED */	bl func_8005D01C
/* 803B5334  38 7B 09 1C */	addi r3, r27, 0x91c
/* 803B5338  38 9C 08 D8 */	addi r4, r28, 0x8d8
/* 803B533C  4B FF FE 91 */	bl mISL_gc_to_agb_anmuni
/* 803B5340  88 1C 08 E2 */	lbz r0, 0x8e2(r28)
/* 803B5344  38 7B 09 2A */	addi r3, r27, 0x92a
/* 803B5348  38 9C 08 E4 */	addi r4, r28, 0x8e4
/* 803B534C  38 A0 00 01 */	li r5, 1
/* 803B5350  98 1B 09 28 */	stb r0, 0x928(r27)
/* 803B5354  88 1C 08 E3 */	lbz r0, 0x8e3(r28)
/* 803B5358  98 1B 09 29 */	stb r0, 0x929(r27)
/* 803B535C  4B FF ED C1 */	bl mISL_short
/* 803B5360  38 7B 09 2C */	addi r3, r27, 0x92c
/* 803B5364  38 9C 08 E6 */	addi r4, r28, 0x8e6
/* 803B5368  38 A0 00 01 */	li r5, 1
/* 803B536C  4B FF ED B1 */	bl mISL_short
/* 803B5370  88 1C 08 E8 */	lbz r0, 0x8e8(r28)
/* 803B5374  38 7B 09 34 */	addi r3, r27, 0x934
/* 803B5378  38 9C 08 EE */	addi r4, r28, 0x8ee
/* 803B537C  38 A0 00 01 */	li r5, 1
/* 803B5380  98 1B 09 2E */	stb r0, 0x92e(r27)
/* 803B5384  88 1C 08 E9 */	lbz r0, 0x8e9(r28)
/* 803B5388  98 1B 09 2F */	stb r0, 0x92f(r27)
/* 803B538C  88 1C 08 EA */	lbz r0, 0x8ea(r28)
/* 803B5390  98 1B 09 30 */	stb r0, 0x930(r27)
/* 803B5394  88 1C 08 EB */	lbz r0, 0x8eb(r28)
/* 803B5398  98 1B 09 31 */	stb r0, 0x931(r27)
/* 803B539C  88 1C 08 EC */	lbz r0, 0x8ec(r28)
/* 803B53A0  98 1B 09 32 */	stb r0, 0x932(r27)
/* 803B53A4  88 1C 08 ED */	lbz r0, 0x8ed(r28)
/* 803B53A8  98 1B 09 33 */	stb r0, 0x933(r27)
/* 803B53AC  4B FF ED 71 */	bl mISL_short
/* 803B53B0  38 7C 08 F0 */	addi r3, r28, 0x8f0
/* 803B53B4  38 9B 09 3C */	addi r4, r27, 0x93c
/* 803B53B8  38 A0 00 0F */	li r5, 0xf
/* 803B53BC  4B CA 7C 61 */	bl func_8005D01C
/* 803B53C0  3B C0 00 00 */	li r30, 0
/* 803B53C4  3B E0 00 00 */	li r31, 0
lbl_803B53C8:
/* 803B53C8  38 7F 09 50 */	addi r3, r31, 0x950
/* 803B53CC  38 9F 09 00 */	addi r4, r31, 0x900
/* 803B53D0  7C 7B 1A 14 */	add r3, r27, r3
/* 803B53D4  7C 9C 22 14 */	add r4, r28, r4
/* 803B53D8  4B FF FE 3D */	bl mISL_gc_to_agb_hp_mail
/* 803B53DC  3B DE 00 01 */	addi r30, r30, 1
/* 803B53E0  3B FF 00 1C */	addi r31, r31, 0x1c
/* 803B53E4  2C 1E 00 04 */	cmpwi r30, 4
/* 803B53E8  41 80 FF E0 */	blt lbl_803B53C8
/* 803B53EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803B53F0  4B CE 5B 29 */	bl func_8009AF18
/* 803B53F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B53F8  7C 08 03 A6 */	mtlr r0
/* 803B53FC  38 21 00 20 */	addi r1, r1, 0x20
/* 803B5400  4E 80 00 20 */	blr 
