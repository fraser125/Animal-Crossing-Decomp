lbl_80395040:
/* 80395040  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80395044  7C 08 02 A6 */	mflr r0
/* 80395048  90 01 00 44 */	stw r0, 0x44(r1)
/* 8039504C  39 61 00 40 */	addi r11, r1, 0x40
/* 80395050  4B D0 5E 81 */	bl func_8009AED0
/* 80395054  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80395058  7C BF 2B 78 */	mr r31, r5
/* 8039505C  7C DE 33 78 */	mr r30, r6
/* 80395060  2C 00 00 00 */	cmpwi r0, 0
/* 80395064  40 81 00 DC */	ble lbl_80395140
/* 80395068  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8039506C  28 03 00 00 */	cmplwi r3, 0
/* 80395070  41 82 00 D0 */	beq lbl_80395140
/* 80395074  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80395078  2C 00 00 00 */	cmpwi r0, 0
/* 8039507C  40 81 00 C4 */	ble lbl_80395140
/* 80395080  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80395084  28 00 00 00 */	cmplwi r0, 0
/* 80395088  40 82 00 08 */	bne lbl_80395090
/* 8039508C  48 00 00 B4 */	b lbl_80395140
lbl_80395090:
/* 80395090  7C 7D 1B 78 */	mr r29, r3
/* 80395094  48 00 00 94 */	b lbl_80395128
lbl_80395098:
/* 80395098  88 1D 00 00 */	lbz r0, 0(r29)
/* 8039509C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803950A0  41 82 00 84 */	beq lbl_80395124
/* 803950A4  83 9E 00 10 */	lwz r28, 0x10(r30)
/* 803950A8  48 00 00 64 */	b lbl_8039510C
lbl_803950AC:
/* 803950AC  88 1C 00 00 */	lbz r0, 0(r28)
/* 803950B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803950B4  41 82 00 54 */	beq lbl_80395108
/* 803950B8  38 7D 00 0C */	addi r3, r29, 0xc
/* 803950BC  38 9C 00 0C */	addi r4, r28, 0xc
/* 803950C0  38 A1 00 08 */	addi r5, r1, 8
/* 803950C4  48 07 65 D9 */	bl Math3D_sphereCrossSphere_cl
/* 803950C8  2C 03 00 01 */	cmpwi r3, 1
/* 803950CC  40 82 00 3C */	bne lbl_80395108
/* 803950D0  38 61 00 18 */	addi r3, r1, 0x18
/* 803950D4  38 9D 00 0C */	addi r4, r29, 0xc
/* 803950D8  48 02 5E 01 */	bl xyz_t_move_s_xyz
/* 803950DC  38 61 00 0C */	addi r3, r1, 0xc
/* 803950E0  38 9C 00 0C */	addi r4, r28, 0xc
/* 803950E4  48 02 5D F5 */	bl xyz_t_move_s_xyz
/* 803950E8  C0 21 00 08 */	lfs f1, 8(r1)
/* 803950EC  7F E3 FB 78 */	mr r3, r31
/* 803950F0  7F A4 EB 78 */	mr r4, r29
/* 803950F4  7F C6 F3 78 */	mr r6, r30
/* 803950F8  7F 87 E3 78 */	mr r7, r28
/* 803950FC  38 A1 00 18 */	addi r5, r1, 0x18
/* 80395100  39 01 00 0C */	addi r8, r1, 0xc
/* 80395104  4B FF FB 91 */	bl CollisionCheck_setOC_HitInfo
lbl_80395108:
/* 80395108  3B 9C 00 1C */	addi r28, r28, 0x1c
lbl_8039510C:
/* 8039510C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80395110  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80395114  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80395118  7C 03 02 14 */	add r0, r3, r0
/* 8039511C  7C 1C 00 40 */	cmplw r28, r0
/* 80395120  41 80 FF 8C */	blt lbl_803950AC
lbl_80395124:
/* 80395124  3B BD 00 1C */	addi r29, r29, 0x1c
lbl_80395128:
/* 80395128  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8039512C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80395130  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80395134  7C 03 02 14 */	add r0, r3, r0
/* 80395138  7C 1D 00 40 */	cmplw r29, r0
/* 8039513C  41 80 FF 5C */	blt lbl_80395098
lbl_80395140:
/* 80395140  39 61 00 40 */	addi r11, r1, 0x40
/* 80395144  4B D0 5D D9 */	bl func_8009AF1C
/* 80395148  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8039514C  7C 08 03 A6 */	mtlr r0
/* 80395150  38 21 00 40 */	addi r1, r1, 0x40
/* 80395154  4E 80 00 20 */	blr 
