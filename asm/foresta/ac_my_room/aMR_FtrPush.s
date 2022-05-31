lbl_8047C120:
/* 8047C120  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047C124  7C 08 02 A6 */	mflr r0
/* 8047C128  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047C12C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8047C130  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8047C134  39 61 00 30 */	addi r11, r1, 0x30
/* 8047C138  4B C1 ED 95 */	bl func_8009AECC
/* 8047C13C  3C C0 80 64 */	lis r6, lit_5302@ha /* 0x80644B04@ha */
/* 8047C140  7C BE 2B 78 */	mr r30, r5
/* 8047C144  38 E6 4B 04 */	addi r7, r6, lit_5302@l /* 0x80644B04@l */
/* 8047C148  7C 7C 1B 78 */	mr r28, r3
/* 8047C14C  80 C7 00 00 */	lwz r6, 0(r7)
/* 8047C150  3B FE 01 D8 */	addi r31, r30, 0x1d8
/* 8047C154  80 A7 00 04 */	lwz r5, 4(r7)
/* 8047C158  7C 9D 23 78 */	mr r29, r4
/* 8047C15C  80 07 00 08 */	lwz r0, 8(r7)
/* 8047C160  7F E3 FB 78 */	mr r3, r31
/* 8047C164  90 C1 00 08 */	stw r6, 8(r1)
/* 8047C168  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8047C16C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047C170  C3 FE 01 E4 */	lfs f31, 0x1e4(r30)
/* 8047C174  4B EF 4E A1 */	bl cKF_SkeletonInfo_R_play
/* 8047C178  A8 DE 02 D8 */	lha r6, 0x2d8(r30)
/* 8047C17C  7C 7B 1B 78 */	mr r27, r3
/* 8047C180  7F E7 FB 78 */	mr r7, r31
/* 8047C184  38 7C 00 08 */	addi r3, r28, 8
/* 8047C188  38 A1 00 08 */	addi r5, r1, 8
/* 8047C18C  38 80 00 00 */	li r4, 0
/* 8047C190  4B EF 65 31 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 8047C194  2C 1B 00 01 */	cmpwi r27, 1
/* 8047C198  40 82 00 64 */	bne lbl_8047C1FC
/* 8047C19C  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047C1A0  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047C1A4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8047C1A8  40 82 00 50 */	bne lbl_8047C1F8
/* 8047C1AC  38 00 00 06 */	li r0, 6
/* 8047C1B0  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047C1B4  B0 1E 01 74 */	sth r0, 0x174(r30)
/* 8047C1B8  38 00 00 00 */	li r0, 0
/* 8047C1BC  C0 03 4A 04 */	lfs f0, lit_967@l(r3)  /* 0x80644A04@l */
/* 8047C1C0  7F E3 FB 78 */	mr r3, r31
/* 8047C1C4  80 BC 00 20 */	lwz r5, 0x20(r28)
/* 8047C1C8  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8047C1CC  90 BC 00 08 */	stw r5, 8(r28)
/* 8047C1D0  90 9C 00 0C */	stw r4, 0xc(r28)
/* 8047C1D4  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 8047C1D8  90 9C 00 10 */	stw r4, 0x10(r28)
/* 8047C1DC  B0 1C 00 3C */	sth r0, 0x3c(r28)
/* 8047C1E0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8047C1E4  4B EF 64 51 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 8047C1E8  7F C3 F3 78 */	mr r3, r30
/* 8047C1EC  7F 84 E3 78 */	mr r4, r28
/* 8047C1F0  4B FF BB 55 */	bl aMR_RequestItemToUnFitFurniture
/* 8047C1F4  48 00 00 08 */	b lbl_8047C1FC
lbl_8047C1F8:
/* 8047C1F8  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8047C1FC:
/* 8047C1FC  7F C3 F3 78 */	mr r3, r30
/* 8047C200  7F 84 E3 78 */	mr r4, r28
/* 8047C204  7F A5 EB 78 */	mr r5, r29
/* 8047C208  4B FF B4 CD */	bl aMR_CheckFtrAndGoki
/* 8047C20C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8047C210  39 61 00 30 */	addi r11, r1, 0x30
/* 8047C214  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8047C218  4B C1 ED 01 */	bl func_8009AF18
/* 8047C21C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047C220  7C 08 03 A6 */	mtlr r0
/* 8047C224  38 21 00 40 */	addi r1, r1, 0x40
/* 8047C228  4E 80 00 20 */	blr 
