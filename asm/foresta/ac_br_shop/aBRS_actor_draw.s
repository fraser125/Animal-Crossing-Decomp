lbl_805A9294:
/* 805A9294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A9298  7C 08 02 A6 */	mflr r0
/* 805A929C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A92A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805A92A4  4B AF 1C 25 */	bl func_8009AEC8
/* 805A92A8  7C 7C 1B 78 */	mr r28, r3
/* 805A92AC  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805A92B0  83 E4 00 00 */	lwz r31, 0(r4)
/* 805A92B4  7C 9D 23 78 */	mr r29, r4
/* 805A92B8  88 63 00 01 */	lbz r3, 1(r3)
/* 805A92BC  3B DC 01 78 */	addi r30, r28, 0x178
/* 805A92C0  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805A92C4  54 63 30 32 */	slwi r3, r3, 6
/* 805A92C8  7C 03 00 51 */	subf. r0, r3, r0
/* 805A92CC  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805A92D0  7C 1A 03 78 */	mr r26, r0
/* 805A92D4  41 82 00 A0 */	beq lbl_805A9374
/* 805A92D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A92DC  38 60 00 40 */	li r3, 0x40
/* 805A92E0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A92E4  3C 84 00 02 */	addis r4, r4, 2
/* 805A92E8  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805A92EC  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805A92F0  7D 89 03 A6 */	mtctr r12
/* 805A92F4  4E 80 04 21 */	bctrl 
/* 805A92F8  7C 7B 1B 78 */	mr r27, r3
/* 805A92FC  7F E3 FB 78 */	mr r3, r31
/* 805A9300  4B E3 BE 09 */	bl _texture_z_light_fog_prim
/* 805A9304  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805A9308  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805A930C  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805A9310  3C 80 80 5B */	lis r4, func_805A90D8@ha /* 0x805A90D8@ha */
/* 805A9314  90 08 00 00 */	stw r0, 0(r8)
/* 805A9318  7D 09 43 78 */	mr r9, r8
/* 805A931C  3C 60 80 5B */	lis r3, aBRS_actor_draw_after@ha /* 0x805A9178@ha */
/* 805A9320  38 C4 90 D8 */	addi r6, r4, func_805A90D8@l /* 0x805A90D8@l */
/* 805A9324  93 69 00 04 */	stw r27, 4(r9)
/* 805A9328  39 08 00 08 */	addi r8, r8, 8
/* 805A932C  38 E3 91 78 */	addi r7, r3, aBRS_actor_draw_after@l /* 0x805A9178@l */
/* 805A9330  7F A3 EB 78 */	mr r3, r29
/* 805A9334  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805A9338  7F C4 F3 78 */	mr r4, r30
/* 805A933C  7F 45 D3 78 */	mr r5, r26
/* 805A9340  7F 88 E3 78 */	mr r8, r28
/* 805A9344  4B DC 83 F5 */	bl cKF_Si3_draw_R_SV
/* 805A9348  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805A934C  3C C0 80 6C */	lis r6, aBRS_shadow_data@ha /* 0x806C448C@ha */
/* 805A9350  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805A9354  3C A4 00 02 */	addis r5, r4, 2
/* 805A9358  7F A3 EB 78 */	mr r3, r29
/* 805A935C  38 86 44 8C */	addi r4, r6, aBRS_shadow_data@l /* 0x806C448C@l */
/* 805A9360  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805A9364  38 A0 00 00 */	li r5, 0
/* 805A9368  81 86 00 04 */	lwz r12, 4(r6)
/* 805A936C  7D 89 03 A6 */	mtctr r12
/* 805A9370  4E 80 04 21 */	bctrl 
lbl_805A9374:
/* 805A9374  39 61 00 20 */	addi r11, r1, 0x20
/* 805A9378  4B AF 1B 9D */	bl func_8009AF14
/* 805A937C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A9380  7C 08 03 A6 */	mtlr r0
/* 805A9384  38 21 00 20 */	addi r1, r1, 0x20
/* 805A9388  4E 80 00 20 */	blr 
