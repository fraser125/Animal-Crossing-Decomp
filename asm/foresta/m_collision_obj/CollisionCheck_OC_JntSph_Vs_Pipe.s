lbl_80395158:
/* 80395158  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8039515C  7C 08 02 A6 */	mflr r0
/* 80395160  90 01 00 44 */	stw r0, 0x44(r1)
/* 80395164  39 61 00 40 */	addi r11, r1, 0x40
/* 80395168  4B D0 5D 6D */	bl func_8009AED4
/* 8039516C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80395170  7C BF 2B 78 */	mr r31, r5
/* 80395174  7C DE 33 78 */	mr r30, r6
/* 80395178  2C 00 00 00 */	cmpwi r0, 0
/* 8039517C  40 81 00 B8 */	ble lbl_80395234
/* 80395180  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80395184  28 03 00 00 */	cmplwi r3, 0
/* 80395188  41 82 00 AC */	beq lbl_80395234
/* 8039518C  88 1F 00 08 */	lbz r0, 8(r31)
/* 80395190  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80395194  41 82 00 A0 */	beq lbl_80395234
/* 80395198  88 1E 00 08 */	lbz r0, 8(r30)
/* 8039519C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803951A0  41 82 00 94 */	beq lbl_80395234
/* 803951A4  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 803951A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803951AC  40 82 00 08 */	bne lbl_803951B4
/* 803951B0  48 00 00 84 */	b lbl_80395234
lbl_803951B4:
/* 803951B4  7C 7D 1B 78 */	mr r29, r3
/* 803951B8  48 00 00 64 */	b lbl_8039521C
lbl_803951BC:
/* 803951BC  88 1D 00 00 */	lbz r0, 0(r29)
/* 803951C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803951C4  41 82 00 54 */	beq lbl_80395218
/* 803951C8  38 7D 00 0C */	addi r3, r29, 0xc
/* 803951CC  38 9E 00 0E */	addi r4, r30, 0xe
/* 803951D0  38 A1 00 08 */	addi r5, r1, 8
/* 803951D4  48 07 66 ED */	bl Math3D_sphereVsPipe_cl
/* 803951D8  2C 03 00 01 */	cmpwi r3, 1
/* 803951DC  40 82 00 3C */	bne lbl_80395218
/* 803951E0  38 61 00 18 */	addi r3, r1, 0x18
/* 803951E4  38 9D 00 0C */	addi r4, r29, 0xc
/* 803951E8  48 02 5C F1 */	bl xyz_t_move_s_xyz
/* 803951EC  38 61 00 0C */	addi r3, r1, 0xc
/* 803951F0  38 9E 00 14 */	addi r4, r30, 0x14
/* 803951F4  48 02 5C E5 */	bl xyz_t_move_s_xyz
/* 803951F8  C0 21 00 08 */	lfs f1, 8(r1)
/* 803951FC  7F E3 FB 78 */	mr r3, r31
/* 80395200  7F A4 EB 78 */	mr r4, r29
/* 80395204  7F C6 F3 78 */	mr r6, r30
/* 80395208  38 A1 00 18 */	addi r5, r1, 0x18
/* 8039520C  38 FE 00 0C */	addi r7, r30, 0xc
/* 80395210  39 01 00 0C */	addi r8, r1, 0xc
/* 80395214  4B FF FA 81 */	bl CollisionCheck_setOC_HitInfo
lbl_80395218:
/* 80395218  3B BD 00 1C */	addi r29, r29, 0x1c
lbl_8039521C:
/* 8039521C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80395220  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80395224  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80395228  7C 03 02 14 */	add r0, r3, r0
/* 8039522C  7C 1D 00 40 */	cmplw r29, r0
/* 80395230  41 80 FF 8C */	blt lbl_803951BC
lbl_80395234:
/* 80395234  39 61 00 40 */	addi r11, r1, 0x40
/* 80395238  4B D0 5C E9 */	bl func_8009AF20
/* 8039523C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80395240  7C 08 03 A6 */	mtlr r0
/* 80395244  38 21 00 40 */	addi r1, r1, 0x40
/* 80395248  4E 80 00 20 */	blr 
