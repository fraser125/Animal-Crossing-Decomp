lbl_804D6934:
/* 804D6934  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D6938  7C 08 02 A6 */	mflr r0
/* 804D693C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D6940  39 61 00 20 */	addi r11, r1, 0x20
/* 804D6944  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 804D6948  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804D694C  4B BC 45 7D */	bl func_8009AEC8
/* 804D6950  FF C0 08 90 */	fmr f30, f1
/* 804D6954  7C 7A 1B 78 */	mr r26, r3
/* 804D6958  FF E0 10 90 */	fmr f31, f2
/* 804D695C  7C BB 2B 78 */	mr r27, r5
/* 804D6960  7C DC 33 78 */	mr r28, r6
/* 804D6964  7C FD 3B 78 */	mr r29, r7
/* 804D6968  7D 1E 43 78 */	mr r30, r8
/* 804D696C  4B FF FB 79 */	bl Player_actor_DMA_Animation
/* 804D6970  7F 43 D3 78 */	mr r3, r26
/* 804D6974  7F C4 F3 78 */	mr r4, r30
/* 804D6978  4B FF FB A1 */	bl Player_actor_DMA_PartTable
/* 804D697C  2C 1C 00 00 */	cmpwi r28, 0
/* 804D6980  3B FA 01 74 */	addi r31, r26, 0x174
/* 804D6984  3B DA 01 E4 */	addi r30, r26, 0x1e4
/* 804D6988  41 80 00 2C */	blt lbl_804D69B4
/* 804D698C  7F 63 DB 78 */	mr r3, r27
/* 804D6990  4B F0 22 75 */	bl func_803D8C04
/* 804D6994  FC 20 F0 90 */	fmr f1, f30
/* 804D6998  7C 64 1B 78 */	mr r4, r3
/* 804D699C  FC 40 F8 90 */	fmr f2, f31
/* 804D69A0  7F E3 FB 78 */	mr r3, r31
/* 804D69A4  7F A6 EB 78 */	mr r6, r29
/* 804D69A8  38 A0 00 00 */	li r5, 0
/* 804D69AC  4B E9 AF 55 */	bl cKF_SkeletonInfo_R_init_reverse_setspeedandmorphandmode
/* 804D69B0  48 00 00 08 */	b lbl_804D69B8
lbl_804D69B4:
/* 804D69B4  D3 FF 00 20 */	stfs f31, 0x20(r31)
lbl_804D69B8:
/* 804D69B8  2C 1C 00 00 */	cmpwi r28, 0
/* 804D69BC  41 80 00 2C */	blt lbl_804D69E8
/* 804D69C0  7F 83 E3 78 */	mr r3, r28
/* 804D69C4  4B F0 22 41 */	bl func_803D8C04
/* 804D69C8  FC 20 F0 90 */	fmr f1, f30
/* 804D69CC  7C 64 1B 78 */	mr r4, r3
/* 804D69D0  FC 40 F8 90 */	fmr f2, f31
/* 804D69D4  7F C3 F3 78 */	mr r3, r30
/* 804D69D8  7F A6 EB 78 */	mr r6, r29
/* 804D69DC  38 A0 00 00 */	li r5, 0
/* 804D69E0  4B E9 AF 21 */	bl cKF_SkeletonInfo_R_init_reverse_setspeedandmorphandmode
/* 804D69E4  48 00 00 08 */	b lbl_804D69EC
lbl_804D69E8:
/* 804D69E8  D3 FE 00 20 */	stfs f31, 0x20(r30)
lbl_804D69EC:
/* 804D69EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804D69F0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 804D69F4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804D69F8  4B BC 45 1D */	bl func_8009AF14
/* 804D69FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D6A00  7C 08 03 A6 */	mtlr r0
/* 804D6A04  38 21 00 30 */	addi r1, r1, 0x30
/* 804D6A08  4E 80 00 20 */	blr 
