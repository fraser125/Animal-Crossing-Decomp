lbl_80544314:
/* 80544314  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80544318  7C 08 02 A6 */	mflr r0
/* 8054431C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80544320  39 61 00 20 */	addi r11, r1, 0x20
/* 80544324  4B B5 6B B1 */	bl func_8009AED4
/* 80544328  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054432C  7C 7D 1B 78 */	mr r29, r3
/* 80544330  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80544334  83 FD 08 F0 */	lwz r31, 0x8f0(r29)
/* 80544338  3C 63 00 02 */	addis r3, r3, 2
/* 8054433C  7C 9E 23 78 */	mr r30, r4
/* 80544340  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 80544344  28 03 00 00 */	cmplwi r3, 0
/* 80544348  41 82 00 14 */	beq lbl_8054435C
/* 8054434C  81 83 00 44 */	lwz r12, 0x44(r3)
/* 80544350  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80544354  7D 89 03 A6 */	mtctr r12
/* 80544358  4E 80 04 21 */	bctrl 
lbl_8054435C:
/* 8054435C  80 7D 08 A0 */	lwz r3, 0x8a0(r29)
/* 80544360  28 03 00 00 */	cmplwi r3, 0
/* 80544364  41 82 00 10 */	beq lbl_80544374
/* 80544368  4B E3 00 D9 */	bl Actor_delete
/* 8054436C  38 00 00 00 */	li r0, 0
/* 80544370  90 1D 08 A0 */	stw r0, 0x8a0(r29)
lbl_80544374:
/* 80544374  80 7D 09 84 */	lwz r3, 0x984(r29)
/* 80544378  28 03 00 00 */	cmplwi r3, 0
/* 8054437C  41 82 00 10 */	beq lbl_8054438C
/* 80544380  4B E3 00 C1 */	bl Actor_delete
/* 80544384  38 00 00 00 */	li r0, 0
/* 80544388  90 1D 09 84 */	stw r0, 0x984(r29)
lbl_8054438C:
/* 8054438C  28 1F 00 00 */	cmplwi r31, 0
/* 80544390  41 82 00 18 */	beq lbl_805443A8
/* 80544394  88 1F 00 02 */	lbz r0, 2(r31)
/* 80544398  28 00 00 04 */	cmplwi r0, 4
/* 8054439C  40 82 00 0C */	bne lbl_805443A8
/* 805443A0  38 00 00 00 */	li r0, 0
/* 805443A4  90 1F 08 F0 */	stw r0, 0x8f0(r31)
lbl_805443A8:
/* 805443A8  80 1D 01 5C */	lwz r0, 0x15c(r29)
/* 805443AC  28 00 00 00 */	cmplwi r0, 0
/* 805443B0  40 82 00 28 */	bne lbl_805443D8
/* 805443B4  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 805443B8  4B E2 C7 39 */	bl cKF_SkeletonInfo_R_dt
/* 805443BC  38 7D 03 64 */	addi r3, r29, 0x364
/* 805443C0  4B E2 C7 31 */	bl cKF_SkeletonInfo_R_dt
/* 805443C4  38 7D 05 20 */	addi r3, r29, 0x520
/* 805443C8  4B E2 C7 29 */	bl cKF_SkeletonInfo_R_dt
/* 805443CC  7F C3 F3 78 */	mr r3, r30
/* 805443D0  38 9D 09 38 */	addi r4, r29, 0x938
/* 805443D4  4B E5 02 95 */	bl ClObjPipe_dt
lbl_805443D8:
/* 805443D8  80 7D 01 88 */	lwz r3, 0x188(r29)
/* 805443DC  28 03 00 00 */	cmplwi r3, 0
/* 805443E0  41 82 00 08 */	beq lbl_805443E8
/* 805443E4  4B E8 A7 81 */	bl mNpc_UnRegistEventNpc
lbl_805443E8:
/* 805443E8  80 7D 01 8C */	lwz r3, 0x18c(r29)
/* 805443EC  28 03 00 00 */	cmplwi r3, 0
/* 805443F0  41 82 00 08 */	beq lbl_805443F8
/* 805443F4  4B E8 A9 AD */	bl mNpc_UnRegistMaskNpc
lbl_805443F8:
/* 805443F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805443FC  4B B5 6B 25 */	bl func_8009AF20
/* 80544400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80544404  7C 08 03 A6 */	mtlr r0
/* 80544408  38 21 00 20 */	addi r1, r1, 0x20
/* 8054440C  4E 80 00 20 */	blr 