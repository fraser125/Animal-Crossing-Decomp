lbl_80531500:
/* 80531500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80531504  7C 08 02 A6 */	mflr r0
/* 80531508  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053150C  39 61 00 20 */	addi r11, r1, 0x20
/* 80531510  4B B6 99 BD */	bl func_8009AECC
/* 80531514  7C 7E 1B 78 */	mr r30, r3
/* 80531518  7C 9F 23 78 */	mr r31, r4
/* 8053151C  88 A3 08 08 */	lbz r5, 0x808(r3)
/* 80531520  88 03 07 F4 */	lbz r0, 0x7f4(r3)
/* 80531524  7C 05 00 40 */	cmplw r5, r0
/* 80531528  41 80 00 B4 */	blt lbl_805315DC
/* 8053152C  28 05 00 00 */	cmplwi r5, 0
/* 80531530  41 82 00 AC */	beq lbl_805315DC
/* 80531534  8B BE 07 F5 */	lbz r29, 0x7f5(r30)
/* 80531538  3C A0 80 6A */	lis r5, aNPC_act_proc@ha /* 0x806A2790@ha */
/* 8053153C  8B 9E 07 FD */	lbz r28, 0x7fd(r30)
/* 80531540  38 C5 27 90 */	addi r6, r5, aNPC_act_proc@l /* 0x806A2790@l */
/* 80531544  A3 7E 07 FE */	lhz r27, 0x7fe(r30)
/* 80531548  38 A0 00 01 */	li r5, 1
/* 8053154C  9B BE 07 F8 */	stb r29, 0x7f8(r30)
/* 80531550  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80531554  98 1E 07 F9 */	stb r0, 0x7f9(r30)
/* 80531558  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 8053155C  98 1E 07 F4 */	stb r0, 0x7f4(r30)
/* 80531560  88 1E 08 09 */	lbz r0, 0x809(r30)
/* 80531564  98 1E 07 F5 */	stb r0, 0x7f5(r30)
/* 80531568  88 1E 08 0A */	lbz r0, 0x80a(r30)
/* 8053156C  98 1E 07 F7 */	stb r0, 0x7f7(r30)
/* 80531570  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 80531574  54 00 10 3A */	slwi r0, r0, 2
/* 80531578  7D 86 00 2E */	lwzx r12, r6, r0
/* 8053157C  7D 89 03 A6 */	mtctr r12
/* 80531580  4E 80 04 21 */	bctrl 
/* 80531584  88 1E 07 FD */	lbz r0, 0x7fd(r30)
/* 80531588  7C 00 E0 40 */	cmplw r0, r28
/* 8053158C  40 82 00 10 */	bne lbl_8053159C
/* 80531590  A0 1E 07 FE */	lhz r0, 0x7fe(r30)
/* 80531594  7C 00 D8 40 */	cmplw r0, r27
/* 80531598  41 82 00 10 */	beq lbl_805315A8
lbl_8053159C:
/* 8053159C  7F C3 F3 78 */	mr r3, r30
/* 805315A0  7F E4 FB 78 */	mr r4, r31
/* 805315A4  4B FF F7 85 */	bl aNPC_set_act_obj
lbl_805315A8:
/* 805315A8  88 1E 08 09 */	lbz r0, 0x809(r30)
/* 805315AC  7C 00 E8 40 */	cmplw r0, r29
/* 805315B0  41 82 00 2C */	beq lbl_805315DC
/* 805315B4  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 805315B8  3C 60 80 6A */	lis r3, aNPC_act_proc@ha /* 0x806A2790@ha */
/* 805315BC  38 A3 27 90 */	addi r5, r3, aNPC_act_proc@l /* 0x806A2790@l */
/* 805315C0  7F C3 F3 78 */	mr r3, r30
/* 805315C4  54 00 10 3A */	slwi r0, r0, 2
/* 805315C8  7F E4 FB 78 */	mr r4, r31
/* 805315CC  7D 85 00 2E */	lwzx r12, r5, r0
/* 805315D0  38 A0 00 00 */	li r5, 0
/* 805315D4  7D 89 03 A6 */	mtctr r12
/* 805315D8  4E 80 04 21 */	bctrl 
lbl_805315DC:
/* 805315DC  38 00 00 00 */	li r0, 0
/* 805315E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805315E4  98 1E 08 08 */	stb r0, 0x808(r30)
/* 805315E8  4B B6 99 31 */	bl func_8009AF18
/* 805315EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805315F0  7C 08 03 A6 */	mtlr r0
/* 805315F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805315F8  4E 80 00 20 */	blr 