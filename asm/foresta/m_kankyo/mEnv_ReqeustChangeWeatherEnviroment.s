lbl_803B9860:
/* 803B9860  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9864  39 05 9B A0 */	addi r8, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9868  A8 A8 00 0A */	lha r5, 0xa(r8)
/* 803B986C  A8 08 00 0C */	lha r0, 0xc(r8)
/* 803B9870  7C 05 00 00 */	cmpw r5, r0
/* 803B9874  40 82 00 50 */	bne lbl_803B98C4
/* 803B9878  7C 67 07 34 */	extsh r7, r3
/* 803B987C  7C 83 07 34 */	extsh r3, r4
/* 803B9880  3C 80 80 65 */	lis r4, l_mEnv_normal_kcolor_data@ha /* 0x806562EC@ha */
/* 803B9884  54 E6 17 3A */	rlwinm r6, r7, 2, 0x1c, 0x1d
/* 803B9888  54 60 17 3A */	rlwinm r0, r3, 2, 0x1c, 0x1d
/* 803B988C  38 A4 62 EC */	addi r5, r4, l_mEnv_normal_kcolor_data@l /* 0x806562EC@l */
/* 803B9890  54 E7 07 BE */	clrlwi r7, r7, 0x1e
/* 803B9894  7C 85 30 2E */	lwzx r4, r5, r6
/* 803B9898  54 66 07 BE */	clrlwi r6, r3, 0x1e
/* 803B989C  7C 05 00 2E */	lwzx r0, r5, r0
/* 803B98A0  7C 04 00 40 */	cmplw r4, r0
/* 803B98A4  41 82 00 18 */	beq lbl_803B98BC
/* 803B98A8  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B98AC  B0 E8 00 0A */	sth r7, 0xa(r8)
/* 803B98B0  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B98B4  B0 C8 00 0C */	sth r6, 0xc(r8)
/* 803B98B8  D0 08 00 10 */	stfs f0, 0x10(r8)
lbl_803B98BC:
/* 803B98BC  38 60 00 01 */	li r3, 1
/* 803B98C0  4E 80 00 20 */	blr 
lbl_803B98C4:
/* 803B98C4  38 60 00 00 */	li r3, 0
/* 803B98C8  4E 80 00 20 */	blr 
