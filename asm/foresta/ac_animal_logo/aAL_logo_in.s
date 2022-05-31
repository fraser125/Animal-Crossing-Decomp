lbl_8041076C:
/* 8041076C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80410770  7C 08 02 A6 */	mflr r0
/* 80410774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80410778  39 61 00 20 */	addi r11, r1, 0x20
/* 8041077C  4B C8 A7 55 */	bl func_8009AED0
/* 80410780  7C 7C 1B 78 */	mr r28, r3
/* 80410784  7C 9D 23 78 */	mr r29, r4
/* 80410788  4B FF FF 89 */	bl aAL_chk_start_key2
/* 8041078C  2C 03 00 00 */	cmpwi r3, 0
/* 80410790  40 82 00 4C */	bne lbl_804107DC
/* 80410794  38 7C 01 7C */	addi r3, r28, 0x17c
/* 80410798  4B F6 08 7D */	bl cKF_SkeletonInfo_R_play
/* 8041079C  7C 7E 1B 78 */	mr r30, r3
/* 804107A0  38 7C 01 F4 */	addi r3, r28, 0x1f4
/* 804107A4  4B F6 08 71 */	bl cKF_SkeletonInfo_R_play
/* 804107A8  7C 7F 1B 78 */	mr r31, r3
/* 804107AC  38 7C 02 6C */	addi r3, r28, 0x26c
/* 804107B0  4B F6 08 65 */	bl cKF_SkeletonInfo_R_play
/* 804107B4  2C 1E 00 01 */	cmpwi r30, 1
/* 804107B8  40 82 00 24 */	bne lbl_804107DC
/* 804107BC  2C 1F 00 01 */	cmpwi r31, 1
/* 804107C0  40 82 00 1C */	bne lbl_804107DC
/* 804107C4  2C 03 00 01 */	cmpwi r3, 1
/* 804107C8  40 82 00 14 */	bne lbl_804107DC
/* 804107CC  7F 83 E3 78 */	mr r3, r28
/* 804107D0  7F A4 EB 78 */	mr r4, r29
/* 804107D4  38 A0 00 01 */	li r5, 1
/* 804107D8  48 00 04 99 */	bl aAL_setupAction
lbl_804107DC:
/* 804107DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804107E0  4B C8 A7 3D */	bl func_8009AF1C
/* 804107E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804107E8  7C 08 03 A6 */	mtlr r0
/* 804107EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804107F0  4E 80 00 20 */	blr 
