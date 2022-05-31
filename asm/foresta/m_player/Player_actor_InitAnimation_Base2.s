lbl_804D6810:
/* 804D6810  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D6814  7C 08 02 A6 */	mflr r0
/* 804D6818  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D681C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804D6820  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804D6824  39 61 00 30 */	addi r11, r1, 0x30
/* 804D6828  4B BC 46 A1 */	bl func_8009AEC8
/* 804D682C  FF E0 18 90 */	fmr f31, f3
/* 804D6830  7D 1E 43 78 */	mr r30, r8
/* 804D6834  7C DC 33 78 */	mr r28, r6
/* 804D6838  7C BB 2B 78 */	mr r27, r5
/* 804D683C  7C 9F 23 78 */	mr r31, r4
/* 804D6840  7C FD 3B 78 */	mr r29, r7
/* 804D6844  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D6848  7C 7A 1B 78 */	mr r26, r3
/* 804D684C  7F 64 DB 78 */	mr r4, r27
/* 804D6850  7F 85 E3 78 */	mr r5, r28
/* 804D6854  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 804D6858  7F C9 F3 78 */	mr r9, r30
/* 804D685C  38 C1 00 08 */	addi r6, r1, 8
/* 804D6860  38 E1 00 0C */	addi r7, r1, 0xc
/* 804D6864  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 804D6868  39 01 00 10 */	addi r8, r1, 0x10
/* 804D686C  39 40 00 01 */	li r10, 1
/* 804D6870  4B FF FD B1 */	bl Player_actor_CheckContinueAnimation
/* 804D6874  7F 43 D3 78 */	mr r3, r26
/* 804D6878  7F E4 FB 78 */	mr r4, r31
/* 804D687C  7F 65 DB 78 */	mr r5, r27
/* 804D6880  7F 86 E3 78 */	mr r6, r28
/* 804D6884  4B FF FC 61 */	bl Player_actor_DMA_Animation
/* 804D6888  7F 43 D3 78 */	mr r3, r26
/* 804D688C  7F C4 F3 78 */	mr r4, r30
/* 804D6890  4B FF FC 89 */	bl Player_actor_DMA_PartTable
/* 804D6894  2C 1B 00 00 */	cmpwi r27, 0
/* 804D6898  3B FA 01 74 */	addi r31, r26, 0x174
/* 804D689C  3B DA 01 E4 */	addi r30, r26, 0x1e4
/* 804D68A0  41 80 00 30 */	blt lbl_804D68D0
/* 804D68A4  7F 63 DB 78 */	mr r3, r27
/* 804D68A8  4B F0 23 5D */	bl func_803D8C04
/* 804D68AC  FC 40 F8 90 */	fmr f2, f31
/* 804D68B0  7C 64 1B 78 */	mr r4, r3
/* 804D68B4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804D68B8  7F E3 FB 78 */	mr r3, r31
/* 804D68BC  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804D68C0  7F A6 EB 78 */	mr r6, r29
/* 804D68C4  38 A0 00 00 */	li r5, 0
/* 804D68C8  4B E9 AF CD */	bl cKF_SkeletonInfo_R_init_standard_setframeandspeedandmorphandmode
/* 804D68CC  48 00 00 0C */	b lbl_804D68D8
lbl_804D68D0:
/* 804D68D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D68D4  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_804D68D8:
/* 804D68D8  2C 1C 00 00 */	cmpwi r28, 0
/* 804D68DC  41 80 00 30 */	blt lbl_804D690C
/* 804D68E0  7F 83 E3 78 */	mr r3, r28
/* 804D68E4  4B F0 23 21 */	bl func_803D8C04
/* 804D68E8  FC 40 F8 90 */	fmr f2, f31
/* 804D68EC  7C 64 1B 78 */	mr r4, r3
/* 804D68F0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804D68F4  7F C3 F3 78 */	mr r3, r30
/* 804D68F8  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804D68FC  7F A6 EB 78 */	mr r6, r29
/* 804D6900  38 A0 00 00 */	li r5, 0
/* 804D6904  4B E9 AF 91 */	bl cKF_SkeletonInfo_R_init_standard_setframeandspeedandmorphandmode
/* 804D6908  48 00 00 0C */	b lbl_804D6914
lbl_804D690C:
/* 804D690C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D6910  D0 1E 00 20 */	stfs f0, 0x20(r30)
lbl_804D6914:
/* 804D6914  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804D6918  39 61 00 30 */	addi r11, r1, 0x30
/* 804D691C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804D6920  4B BC 45 F5 */	bl func_8009AF14
/* 804D6924  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D6928  7C 08 03 A6 */	mtlr r0
/* 804D692C  38 21 00 40 */	addi r1, r1, 0x40
/* 804D6930  4E 80 00 20 */	blr 
