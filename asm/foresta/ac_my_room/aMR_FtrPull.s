lbl_8047C024:
/* 8047C024  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047C028  7C 08 02 A6 */	mflr r0
/* 8047C02C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047C030  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8047C034  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8047C038  39 61 00 30 */	addi r11, r1, 0x30
/* 8047C03C  4B C1 EE 95 */	bl func_8009AED0
/* 8047C040  3C 80 80 64 */	lis r4, lit_5292@ha /* 0x80644AF8@ha */
/* 8047C044  7C BD 2B 78 */	mr r29, r5
/* 8047C048  38 C4 4A F8 */	addi r6, r4, lit_5292@l /* 0x80644AF8@l */
/* 8047C04C  7C 7C 1B 78 */	mr r28, r3
/* 8047C050  80 A6 00 00 */	lwz r5, 0(r6)
/* 8047C054  3B DD 01 D8 */	addi r30, r29, 0x1d8
/* 8047C058  80 86 00 04 */	lwz r4, 4(r6)
/* 8047C05C  7F C3 F3 78 */	mr r3, r30
/* 8047C060  80 06 00 08 */	lwz r0, 8(r6)
/* 8047C064  90 A1 00 08 */	stw r5, 8(r1)
/* 8047C068  90 81 00 0C */	stw r4, 0xc(r1)
/* 8047C06C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047C070  C3 FD 01 E4 */	lfs f31, 0x1e4(r29)
/* 8047C074  4B EF 4F A1 */	bl cKF_SkeletonInfo_R_play
/* 8047C078  A8 DD 02 D8 */	lha r6, 0x2d8(r29)
/* 8047C07C  7C 7F 1B 78 */	mr r31, r3
/* 8047C080  7F C7 F3 78 */	mr r7, r30
/* 8047C084  38 7C 00 08 */	addi r3, r28, 8
/* 8047C088  38 A1 00 08 */	addi r5, r1, 8
/* 8047C08C  38 80 00 00 */	li r4, 0
/* 8047C090  4B EF 66 31 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 8047C094  2C 1F 00 01 */	cmpwi r31, 1
/* 8047C098  40 82 00 68 */	bne lbl_8047C100
/* 8047C09C  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047C0A0  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047C0A4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8047C0A8  40 82 00 54 */	bne lbl_8047C0FC
/* 8047C0AC  38 00 00 06 */	li r0, 6
/* 8047C0B0  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047C0B4  B0 1D 01 74 */	sth r0, 0x174(r29)
/* 8047C0B8  38 00 00 00 */	li r0, 0
/* 8047C0BC  38 83 4A 04 */	addi r4, r3, lit_967@l /* 0x80644A04@l */
/* 8047C0C0  7F C3 F3 78 */	mr r3, r30
/* 8047C0C4  B0 1C 00 3C */	sth r0, 0x3c(r28)
/* 8047C0C8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8047C0CC  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 8047C0D0  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 8047C0D4  90 9C 00 08 */	stw r4, 8(r28)
/* 8047C0D8  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8047C0DC  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 8047C0E0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8047C0E4  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8047C0E8  4B EF 65 4D */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 8047C0EC  7F A3 EB 78 */	mr r3, r29
/* 8047C0F0  7F 84 E3 78 */	mr r4, r28
/* 8047C0F4  4B FF BC 51 */	bl aMR_RequestItemToUnFitFurniture
/* 8047C0F8  48 00 00 08 */	b lbl_8047C100
lbl_8047C0FC:
/* 8047C0FC  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_8047C100:
/* 8047C100  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8047C104  39 61 00 30 */	addi r11, r1, 0x30
/* 8047C108  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8047C10C  4B C1 EE 11 */	bl func_8009AF1C
/* 8047C110  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047C114  7C 08 03 A6 */	mtlr r0
/* 8047C118  38 21 00 40 */	addi r1, r1, 0x40
/* 8047C11C  4E 80 00 20 */	blr 
