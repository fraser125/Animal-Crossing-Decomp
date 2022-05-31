lbl_805A3020:
/* 805A3020  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805A3024  7C 08 02 A6 */	mflr r0
/* 805A3028  90 01 00 64 */	stw r0, 0x64(r1)
/* 805A302C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805A3030  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805A3034  39 61 00 50 */	addi r11, r1, 0x50
/* 805A3038  4B AF 7E 9D */	bl func_8009AED4
/* 805A303C  7C 7D 1B 78 */	mr r29, r3
/* 805A3040  3C 60 80 6C */	lis r3, lit_492@ha /* 0x806C3EE8@ha */
/* 805A3044  80 FD 00 28 */	lwz r7, 0x28(r29)
/* 805A3048  7C BF 2B 78 */	mr r31, r5
/* 805A304C  80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 805A3050  38 03 3E E8 */	addi r0, r3, lit_492@l /* 0x806C3EE8@l */
/* 805A3054  7C 9E 23 78 */	mr r30, r4
/* 805A3058  38 61 00 20 */	addi r3, r1, 0x20
/* 805A305C  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805A3060  7C 04 03 78 */	mr r4, r0
/* 805A3064  38 A0 01 4E */	li r5, 0x14e
/* 805A3068  90 C1 00 30 */	stw r6, 0x30(r1)
/* 805A306C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805A3070  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A3074  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805A3078  90 C1 00 24 */	stw r6, 0x24(r1)
/* 805A307C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805A3080  4B DF 0F 39 */	bl mCoBG_GetWaterHeight_File
/* 805A3084  7F E0 07 34 */	extsh r0, r31
/* 805A3088  FF E0 08 90 */	fmr f31, f1
/* 805A308C  2C 00 00 09 */	cmpwi r0, 9
/* 805A3090  40 80 00 5C */	bge lbl_805A30EC
/* 805A3094  2C 00 00 04 */	cmpwi r0, 4
/* 805A3098  40 80 00 08 */	bge lbl_805A30A0
/* 805A309C  48 00 00 50 */	b lbl_805A30EC
lbl_805A30A0:
/* 805A30A0  81 1D 01 CC */	lwz r8, 0x1cc(r29)
/* 805A30A4  3C 60 80 6C */	lis r3, rr_475@ha /* 0x806C3EC8@ha */
/* 805A30A8  3C 80 80 65 */	lis r4, lit_493@ha /* 0x8064A3D0@ha */
/* 805A30AC  7F C5 F3 78 */	mr r5, r30
/* 805A30B0  80 C8 00 28 */	lwz r6, 0x28(r8)
/* 805A30B4  38 E3 3E C8 */	addi r7, r3, rr_475@l /* 0x806C3EC8@l */
/* 805A30B8  80 08 00 2C */	lwz r0, 0x2c(r8)
/* 805A30BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 805A30C0  C0 24 A3 D0 */	lfs f1, lit_493@l(r4)  /* 0x8064A3D0@l */
/* 805A30C4  38 81 00 14 */	addi r4, r1, 0x14
/* 805A30C8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 805A30CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A30D0  80 08 00 30 */	lwz r0, 0x30(r8)
/* 805A30D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A30D8  A8 1D 01 DC */	lha r0, 0x1dc(r29)
/* 805A30DC  A8 C8 00 36 */	lha r6, 0x36(r8)
/* 805A30E0  54 00 10 3A */	slwi r0, r0, 2
/* 805A30E4  7C 47 04 2E */	lfsx f2, r7, r0
/* 805A30E8  4B FF FE 41 */	bl aGTT_pos_calc
lbl_805A30EC:
/* 805A30EC  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 805A30F0  7F A3 EB 78 */	mr r3, r29
/* 805A30F4  48 00 06 45 */	bl aGTT_Get_flow_angle
/* 805A30F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A30FC  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805A3100  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A3104  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 805A3108  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A310C  3C 84 00 02 */	addis r4, r4, 2
/* 805A3110  90 C1 00 08 */	stw r6, 8(r1)
/* 805A3114  7C 66 1B 78 */	mr r6, r3
/* 805A3118  81 64 60 9C */	lwz r11, 0x609c(r4)
/* 805A311C  7F C7 F3 78 */	mr r7, r30
/* 805A3120  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805A3124  7F E9 FB 78 */	mr r9, r31
/* 805A3128  38 81 00 08 */	addi r4, r1, 8
/* 805A312C  38 60 00 46 */	li r3, 0x46
/* 805A3130  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A3134  38 A0 00 01 */	li r5, 1
/* 805A3138  39 00 00 00 */	li r8, 0
/* 805A313C  39 40 00 00 */	li r10, 0
/* 805A3140  81 8B 00 00 */	lwz r12, 0(r11)
/* 805A3144  7D 89 03 A6 */	mtctr r12
/* 805A3148  4E 80 04 21 */	bctrl 
/* 805A314C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805A3150  39 61 00 50 */	addi r11, r1, 0x50
/* 805A3154  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805A3158  4B AF 7D C9 */	bl func_8009AF20
/* 805A315C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A3160  7C 08 03 A6 */	mtlr r0
/* 805A3164  38 21 00 60 */	addi r1, r1, 0x60
/* 805A3168  4E 80 00 20 */	blr 
