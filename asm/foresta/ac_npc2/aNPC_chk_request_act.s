lbl_8053F2A4:
/* 8053F2A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053F2A8  7C 08 02 A6 */	mflr r0
/* 8053F2AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053F2B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8053F2B4  4B B5 BC 19 */	bl func_8009AECC
/* 8053F2B8  7C 7E 1B 78 */	mr r30, r3
/* 8053F2BC  7C 9F 23 78 */	mr r31, r4
/* 8053F2C0  88 A3 08 08 */	lbz r5, 0x808(r3)
/* 8053F2C4  88 03 07 F4 */	lbz r0, 0x7f4(r3)
/* 8053F2C8  7C 05 00 40 */	cmplw r5, r0
/* 8053F2CC  41 80 00 B4 */	blt lbl_8053F380
/* 8053F2D0  28 05 00 00 */	cmplwi r5, 0
/* 8053F2D4  41 82 00 AC */	beq lbl_8053F380
/* 8053F2D8  8B BE 07 F5 */	lbz r29, 0x7f5(r30)
/* 8053F2DC  3C A0 80 6A */	lis r5, aNPC_act_proc@ha /* 0x806A3D0C@ha */
/* 8053F2E0  8B 9E 07 FD */	lbz r28, 0x7fd(r30)
/* 8053F2E4  38 C5 3D 0C */	addi r6, r5, aNPC_act_proc@l /* 0x806A3D0C@l */
/* 8053F2E8  A3 7E 07 FE */	lhz r27, 0x7fe(r30)
/* 8053F2EC  38 A0 00 01 */	li r5, 1
/* 8053F2F0  9B BE 07 F8 */	stb r29, 0x7f8(r30)
/* 8053F2F4  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 8053F2F8  98 1E 07 F9 */	stb r0, 0x7f9(r30)
/* 8053F2FC  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 8053F300  98 1E 07 F4 */	stb r0, 0x7f4(r30)
/* 8053F304  88 1E 08 09 */	lbz r0, 0x809(r30)
/* 8053F308  98 1E 07 F5 */	stb r0, 0x7f5(r30)
/* 8053F30C  88 1E 08 0A */	lbz r0, 0x80a(r30)
/* 8053F310  98 1E 07 F7 */	stb r0, 0x7f7(r30)
/* 8053F314  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8053F318  54 00 10 3A */	slwi r0, r0, 2
/* 8053F31C  7D 86 00 2E */	lwzx r12, r6, r0
/* 8053F320  7D 89 03 A6 */	mtctr r12
/* 8053F324  4E 80 04 21 */	bctrl 
/* 8053F328  88 1E 07 FD */	lbz r0, 0x7fd(r30)
/* 8053F32C  7C 00 E0 40 */	cmplw r0, r28
/* 8053F330  40 82 00 10 */	bne lbl_8053F340
/* 8053F334  A0 1E 07 FE */	lhz r0, 0x7fe(r30)
/* 8053F338  7C 00 D8 40 */	cmplw r0, r27
/* 8053F33C  41 82 00 10 */	beq lbl_8053F34C
lbl_8053F340:
/* 8053F340  7F C3 F3 78 */	mr r3, r30
/* 8053F344  7F E4 FB 78 */	mr r4, r31
/* 8053F348  4B FF F9 4D */	bl aNPC_set_act_obj
lbl_8053F34C:
/* 8053F34C  88 1E 08 09 */	lbz r0, 0x809(r30)
/* 8053F350  7C 00 E8 40 */	cmplw r0, r29
/* 8053F354  41 82 00 2C */	beq lbl_8053F380
/* 8053F358  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8053F35C  3C 60 80 6A */	lis r3, aNPC_act_proc@ha /* 0x806A3D0C@ha */
/* 8053F360  38 A3 3D 0C */	addi r5, r3, aNPC_act_proc@l /* 0x806A3D0C@l */
/* 8053F364  7F C3 F3 78 */	mr r3, r30
/* 8053F368  54 00 10 3A */	slwi r0, r0, 2
/* 8053F36C  7F E4 FB 78 */	mr r4, r31
/* 8053F370  7D 85 00 2E */	lwzx r12, r5, r0
/* 8053F374  38 A0 00 00 */	li r5, 0
/* 8053F378  7D 89 03 A6 */	mtctr r12
/* 8053F37C  4E 80 04 21 */	bctrl 
lbl_8053F380:
/* 8053F380  38 00 00 00 */	li r0, 0
/* 8053F384  39 61 00 20 */	addi r11, r1, 0x20
/* 8053F388  98 1E 08 08 */	stb r0, 0x808(r30)
/* 8053F38C  4B B5 BB 8D */	bl func_8009AF18
/* 8053F390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053F394  7C 08 03 A6 */	mtlr r0
/* 8053F398  38 21 00 20 */	addi r1, r1, 0x20
/* 8053F39C  4E 80 00 20 */	blr 
