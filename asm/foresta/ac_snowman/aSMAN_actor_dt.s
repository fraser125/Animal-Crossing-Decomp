lbl_804A34A0:
/* 804A34A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A34A4  7C 08 02 A6 */	mflr r0
/* 804A34A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A34AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804A34B0  7C 7F 1B 78 */	mr r31, r3
/* 804A34B4  7C 83 23 78 */	mr r3, r4
/* 804A34B8  38 9F 01 74 */	addi r4, r31, 0x174
/* 804A34BC  4B EF 11 AD */	bl ClObjPipe_dt
/* 804A34C0  80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 804A34C4  2C 00 00 00 */	cmpwi r0, 0
/* 804A34C8  40 82 00 E4 */	bne lbl_804A35AC
/* 804A34CC  A8 7F 01 F8 */	lha r3, 0x1f8(r31)
/* 804A34D0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804A34D4  41 82 00 7C */	beq lbl_804A3550
/* 804A34D8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804A34DC  41 82 00 58 */	beq lbl_804A3534
/* 804A34E0  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A34E4  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 804A34E8  C0 23 5C 8C */	lfs f1, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A34EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A34F0  40 82 00 10 */	bne lbl_804A3500
/* 804A34F4  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 804A34F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A34FC  41 82 00 10 */	beq lbl_804A350C
lbl_804A3500:
/* 804A3500  7F E3 FB 78 */	mr r3, r31
/* 804A3504  4B FF FE E5 */	bl aSNOWMAN_Set_PSnowman_info
/* 804A3508  48 00 00 2C */	b lbl_804A3534
lbl_804A350C:
/* 804A350C  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804A3510  38 61 00 14 */	addi r3, r1, 0x14
/* 804A3514  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A3518  38 80 00 00 */	li r4, 0
/* 804A351C  38 A0 00 64 */	li r5, 0x64
/* 804A3520  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804A3524  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A3528  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A352C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A3530  4B EE E5 6D */	bl mCoBG_SetPlussOffset
lbl_804A3534:
/* 804A3534  38 60 00 3E */	li r3, 0x3e
/* 804A3538  38 80 00 64 */	li r4, 0x64
/* 804A353C  4B EF AD E1 */	bl mEv_clear_common_place
/* 804A3540  38 60 00 3E */	li r3, 0x3e
/* 804A3544  38 80 00 00 */	li r4, 0
/* 804A3548  4B EF AC 05 */	bl mEv_clear_common_area
/* 804A354C  48 00 01 3C */	b lbl_804A3688
lbl_804A3550:
/* 804A3550  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804A3554  40 82 00 1C */	bne lbl_804A3570
/* 804A3558  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804A355C  40 82 00 14 */	bne lbl_804A3570
/* 804A3560  7F E3 FB 78 */	mr r3, r31
/* 804A3564  4B F5 34 DD */	bl mRlib_Set_Position_Check
/* 804A3568  2C 03 00 00 */	cmpwi r3, 0
/* 804A356C  40 82 00 20 */	bne lbl_804A358C
lbl_804A3570:
/* 804A3570  38 60 00 3E */	li r3, 0x3e
/* 804A3574  38 80 00 64 */	li r4, 0x64
/* 804A3578  4B EF AD A5 */	bl mEv_clear_common_place
/* 804A357C  38 60 00 3E */	li r3, 0x3e
/* 804A3580  38 80 00 00 */	li r4, 0
/* 804A3584  4B EF AB C9 */	bl mEv_clear_common_area
/* 804A3588  48 00 01 00 */	b lbl_804A3688
lbl_804A358C:
/* 804A358C  38 60 00 3E */	li r3, 0x3e
/* 804A3590  38 80 00 00 */	li r4, 0
/* 804A3594  4B EF AB 49 */	bl mEv_get_common_area
/* 804A3598  28 03 00 00 */	cmplwi r3, 0
/* 804A359C  41 82 00 EC */	beq lbl_804A3688
/* 804A35A0  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 804A35A4  D0 03 00 00 */	stfs f0, 0(r3)
/* 804A35A8  48 00 00 E0 */	b lbl_804A3688
lbl_804A35AC:
/* 804A35AC  A8 7F 01 F8 */	lha r3, 0x1f8(r31)
/* 804A35B0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804A35B4  41 82 00 7C */	beq lbl_804A3630
/* 804A35B8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804A35BC  41 82 00 58 */	beq lbl_804A3614
/* 804A35C0  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A35C4  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 804A35C8  C0 23 5C 8C */	lfs f1, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A35CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A35D0  40 82 00 10 */	bne lbl_804A35E0
/* 804A35D4  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 804A35D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A35DC  41 82 00 10 */	beq lbl_804A35EC
lbl_804A35E0:
/* 804A35E0  7F E3 FB 78 */	mr r3, r31
/* 804A35E4  4B FF FE 05 */	bl aSNOWMAN_Set_PSnowman_info
/* 804A35E8  48 00 00 2C */	b lbl_804A3614
lbl_804A35EC:
/* 804A35EC  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804A35F0  38 61 00 08 */	addi r3, r1, 8
/* 804A35F4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A35F8  38 80 00 00 */	li r4, 0
/* 804A35FC  38 A0 00 64 */	li r5, 0x64
/* 804A3600  90 C1 00 08 */	stw r6, 8(r1)
/* 804A3604  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A3608  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A360C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A3610  4B EE E4 8D */	bl mCoBG_SetPlussOffset
lbl_804A3614:
/* 804A3614  38 60 00 3E */	li r3, 0x3e
/* 804A3618  38 80 00 65 */	li r4, 0x65
/* 804A361C  4B EF AD 01 */	bl mEv_clear_common_place
/* 804A3620  38 60 00 3E */	li r3, 0x3e
/* 804A3624  38 80 00 01 */	li r4, 1
/* 804A3628  4B EF AB 25 */	bl mEv_clear_common_area
/* 804A362C  48 00 00 5C */	b lbl_804A3688
lbl_804A3630:
/* 804A3630  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804A3634  40 82 00 1C */	bne lbl_804A3650
/* 804A3638  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804A363C  40 82 00 14 */	bne lbl_804A3650
/* 804A3640  7F E3 FB 78 */	mr r3, r31
/* 804A3644  4B F5 33 FD */	bl mRlib_Set_Position_Check
/* 804A3648  2C 03 00 00 */	cmpwi r3, 0
/* 804A364C  40 82 00 20 */	bne lbl_804A366C
lbl_804A3650:
/* 804A3650  38 60 00 3E */	li r3, 0x3e
/* 804A3654  38 80 00 65 */	li r4, 0x65
/* 804A3658  4B EF AC C5 */	bl mEv_clear_common_place
/* 804A365C  38 60 00 3E */	li r3, 0x3e
/* 804A3660  38 80 00 01 */	li r4, 1
/* 804A3664  4B EF AA E9 */	bl mEv_clear_common_area
/* 804A3668  48 00 00 20 */	b lbl_804A3688
lbl_804A366C:
/* 804A366C  38 60 00 3E */	li r3, 0x3e
/* 804A3670  38 80 00 01 */	li r4, 1
/* 804A3674  4B EF AA 69 */	bl mEv_get_common_area
/* 804A3678  28 03 00 00 */	cmplwi r3, 0
/* 804A367C  41 82 00 0C */	beq lbl_804A3688
/* 804A3680  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 804A3684  D0 03 00 00 */	stfs f0, 0(r3)
lbl_804A3688:
/* 804A3688  7F E4 FB 78 */	mr r4, r31
/* 804A368C  38 60 00 3E */	li r3, 0x3e
/* 804A3690  4B EF AE A5 */	bl mEv_actor_dying_message
/* 804A3694  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A3698  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804A369C  7C 08 03 A6 */	mtlr r0
/* 804A36A0  38 21 00 30 */	addi r1, r1, 0x30
/* 804A36A4  4E 80 00 20 */	blr 
