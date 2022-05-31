lbl_8042D868:
/* 8042D868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D86C  7C 08 02 A6 */	mflr r0
/* 8042D870  3C 80 80 64 */	lis r4, lit_539@ha /* 0x80644114@ha */
/* 8042D874  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D878  C0 24 41 14 */	lfs f1, lit_539@l(r4)  /* 0x80644114@l */
/* 8042D87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D880  93 C1 00 08 */	stw r30, 8(r1)
/* 8042D884  7C 7E 1B 78 */	mr r30, r3
/* 8042D888  3B FE 01 7C */	addi r31, r30, 0x17c
/* 8042D88C  7F E3 FB 78 */	mr r3, r31
/* 8042D890  4B F4 2B F9 */	bl cKF_FrameControl_passCheck_now
/* 8042D894  2C 03 00 01 */	cmpwi r3, 1
/* 8042D898  40 82 00 10 */	bne lbl_8042D8A8
/* 8042D89C  7F C3 F3 78 */	mr r3, r30
/* 8042D8A0  4B FF FD 2D */	bl aMBX_check_flag
/* 8042D8A4  48 00 00 50 */	b lbl_8042D8F4
lbl_8042D8A8:
/* 8042D8A8  3C 80 80 64 */	lis r4, lit_540@ha /* 0x80644118@ha */
/* 8042D8AC  7F E3 FB 78 */	mr r3, r31
/* 8042D8B0  C0 24 41 18 */	lfs f1, lit_540@l(r4)  /* 0x80644118@l */
/* 8042D8B4  4B F4 2B D5 */	bl cKF_FrameControl_passCheck_now
/* 8042D8B8  2C 03 00 01 */	cmpwi r3, 1
/* 8042D8BC  40 82 00 14 */	bne lbl_8042D8D0
/* 8042D8C0  38 9E 00 28 */	addi r4, r30, 0x28
/* 8042D8C4  38 60 01 46 */	li r3, 0x146
/* 8042D8C8  48 20 06 E1 */	bl sAdo_OngenTrgStart
/* 8042D8CC  48 00 00 28 */	b lbl_8042D8F4
lbl_8042D8D0:
/* 8042D8D0  3C 80 80 64 */	lis r4, lit_541@ha /* 0x8064411C@ha */
/* 8042D8D4  7F E3 FB 78 */	mr r3, r31
/* 8042D8D8  C0 24 41 1C */	lfs f1, lit_541@l(r4)  /* 0x8064411C@l */
/* 8042D8DC  4B F4 2B AD */	bl cKF_FrameControl_passCheck_now
/* 8042D8E0  2C 03 00 01 */	cmpwi r3, 1
/* 8042D8E4  40 82 00 10 */	bne lbl_8042D8F4
/* 8042D8E8  38 9E 00 28 */	addi r4, r30, 0x28
/* 8042D8EC  38 60 01 47 */	li r3, 0x147
/* 8042D8F0  48 20 06 B9 */	bl sAdo_OngenTrgStart
lbl_8042D8F4:
/* 8042D8F4  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 8042D8F8  2C 00 00 01 */	cmpwi r0, 1
/* 8042D8FC  40 82 00 18 */	bne lbl_8042D914
/* 8042D900  38 00 00 00 */	li r0, 0
/* 8042D904  7F C3 F3 78 */	mr r3, r30
/* 8042D908  90 1E 03 1C */	stw r0, 0x31c(r30)
/* 8042D90C  38 80 00 00 */	li r4, 0
/* 8042D910  48 00 01 15 */	bl aMBX_setupAction
lbl_8042D914:
/* 8042D914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D91C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042D920  7C 08 03 A6 */	mtlr r0
/* 8042D924  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D928  4E 80 00 20 */	blr 
