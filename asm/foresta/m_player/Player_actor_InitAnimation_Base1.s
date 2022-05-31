lbl_804D66F8:
/* 804D66F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D66FC  7C 08 02 A6 */	mflr r0
/* 804D6700  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D6704  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804D6708  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804D670C  39 61 00 30 */	addi r11, r1, 0x30
/* 804D6710  4B BC 47 BD */	bl func_8009AECC
/* 804D6714  FF E0 18 90 */	fmr f31, f3
/* 804D6718  7C FE 3B 78 */	mr r30, r7
/* 804D671C  7C DD 33 78 */	mr r29, r6
/* 804D6720  7C BC 2B 78 */	mr r28, r5
/* 804D6724  7C 9F 23 78 */	mr r31, r4
/* 804D6728  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D672C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 804D6730  7C 7B 1B 78 */	mr r27, r3
/* 804D6734  7F 84 E3 78 */	mr r4, r28
/* 804D6738  7F A5 EB 78 */	mr r5, r29
/* 804D673C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 804D6740  7F C9 F3 78 */	mr r9, r30
/* 804D6744  38 C1 00 08 */	addi r6, r1, 8
/* 804D6748  38 E1 00 0C */	addi r7, r1, 0xc
/* 804D674C  39 01 00 10 */	addi r8, r1, 0x10
/* 804D6750  39 40 00 01 */	li r10, 1
/* 804D6754  4B FF FE CD */	bl Player_actor_CheckContinueAnimation
/* 804D6758  7F 63 DB 78 */	mr r3, r27
/* 804D675C  7F C4 F3 78 */	mr r4, r30
/* 804D6760  4B FF FD B9 */	bl Player_actor_DMA_PartTable
/* 804D6764  7F 63 DB 78 */	mr r3, r27
/* 804D6768  7F E4 FB 78 */	mr r4, r31
/* 804D676C  7F 85 E3 78 */	mr r5, r28
/* 804D6770  7F A6 EB 78 */	mr r6, r29
/* 804D6774  4B FF FD 71 */	bl Player_actor_DMA_Animation
/* 804D6778  2C 1C 00 00 */	cmpwi r28, 0
/* 804D677C  3B FB 01 74 */	addi r31, r27, 0x174
/* 804D6780  3B DB 01 E4 */	addi r30, r27, 0x1e4
/* 804D6784  41 80 00 2C */	blt lbl_804D67B0
/* 804D6788  7F 83 E3 78 */	mr r3, r28
/* 804D678C  4B F0 24 79 */	bl func_803D8C04
/* 804D6790  FC 40 F8 90 */	fmr f2, f31
/* 804D6794  7C 64 1B 78 */	mr r4, r3
/* 804D6798  C0 21 00 08 */	lfs f1, 8(r1)
/* 804D679C  7F E3 FB 78 */	mr r3, r31
/* 804D67A0  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804D67A4  38 A0 00 00 */	li r5, 0
/* 804D67A8  4B E9 B0 7D */	bl cKF_SkeletonInfo_R_init_standard_repeat_setframeandspeedandmorph
/* 804D67AC  48 00 00 0C */	b lbl_804D67B8
lbl_804D67B0:
/* 804D67B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D67B4  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_804D67B8:
/* 804D67B8  2C 1D 00 00 */	cmpwi r29, 0
/* 804D67BC  41 80 00 2C */	blt lbl_804D67E8
/* 804D67C0  7F A3 EB 78 */	mr r3, r29
/* 804D67C4  4B F0 24 41 */	bl func_803D8C04
/* 804D67C8  FC 40 F8 90 */	fmr f2, f31
/* 804D67CC  7C 64 1B 78 */	mr r4, r3
/* 804D67D0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804D67D4  7F C3 F3 78 */	mr r3, r30
/* 804D67D8  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804D67DC  38 A0 00 00 */	li r5, 0
/* 804D67E0  4B E9 B0 45 */	bl cKF_SkeletonInfo_R_init_standard_repeat_setframeandspeedandmorph
/* 804D67E4  48 00 00 0C */	b lbl_804D67F0
lbl_804D67E8:
/* 804D67E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D67EC  D0 1E 00 20 */	stfs f0, 0x20(r30)
lbl_804D67F0:
/* 804D67F0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804D67F4  39 61 00 30 */	addi r11, r1, 0x30
/* 804D67F8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804D67FC  4B BC 47 1D */	bl func_8009AF18
/* 804D6800  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D6804  7C 08 03 A6 */	mtlr r0
/* 804D6808  38 21 00 40 */	addi r1, r1, 0x40
/* 804D680C  4E 80 00 20 */	blr 
