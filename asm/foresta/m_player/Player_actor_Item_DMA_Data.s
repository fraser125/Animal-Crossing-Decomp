lbl_804E0C7C:
/* 804E0C7C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804E0C80  7C 08 02 A6 */	mflr r0
/* 804E0C84  90 01 00 64 */	stw r0, 0x64(r1)
/* 804E0C88  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804E0C8C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804E0C90  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804E0C94  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804E0C98  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 804E0C9C  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 804E0CA0  39 61 00 30 */	addi r11, r1, 0x30
/* 804E0CA4  4B BB A2 21 */	bl func_8009AEC4
/* 804E0CA8  FF A0 08 90 */	fmr f29, f1
/* 804E0CAC  7C 79 1B 78 */	mr r25, r3
/* 804E0CB0  FF C0 10 90 */	fmr f30, f2
/* 804E0CB4  7C 9C 23 78 */	mr r28, r4
/* 804E0CB8  FF E0 18 90 */	fmr f31, f3
/* 804E0CBC  7C BA 2B 78 */	mr r26, r5
/* 804E0CC0  7C DB 33 78 */	mr r27, r6
/* 804E0CC4  4B FF 6A ED */	bl Player_actor_Change_ItemBank
/* 804E0CC8  2C 1C 00 00 */	cmpwi r28, 0
/* 804E0CCC  7C 7F 1B 78 */	mr r31, r3
/* 804E0CD0  41 80 00 B4 */	blt lbl_804E0D84
/* 804E0CD4  7F 83 E3 78 */	mr r3, r28
/* 804E0CD8  4B EF 80 35 */	bl mPlib_Get_Item_DataPointerType
/* 804E0CDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E0CE0  41 82 00 A4 */	beq lbl_804E0D84
/* 804E0CE4  7F 83 E3 78 */	mr r3, r28
/* 804E0CE8  3B D9 0A 18 */	addi r30, r25, 0xa18
/* 804E0CEC  3B B9 0A 88 */	addi r29, r25, 0xa88
/* 804E0CF0  3B 99 0A B8 */	addi r28, r25, 0xab8
/* 804E0CF4  4B EF 7F 95 */	bl mPlib_Get_Item_DataPointer
/* 804E0CF8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E0CFC  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804E0D00  7C 64 1B 78 */	mr r4, r3
/* 804E0D04  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E0D08  4C 41 13 82 */	cror 2, 1, 2
/* 804E0D0C  40 82 00 20 */	bne lbl_804E0D2C
/* 804E0D10  7F C3 F3 78 */	mr r3, r30
/* 804E0D14  7F A6 EB 78 */	mr r6, r29
/* 804E0D18  7F 87 E3 78 */	mr r7, r28
/* 804E0D1C  38 A0 00 00 */	li r5, 0
/* 804E0D20  4B E8 FD 75 */	bl cKF_SkeletonInfo_R_ct
/* 804E0D24  D3 FE 00 10 */	stfs f31, 0x10(r30)
/* 804E0D28  48 00 00 30 */	b lbl_804E0D58
lbl_804E0D2C:
/* 804E0D2C  2C 1F 00 00 */	cmpwi r31, 0
/* 804E0D30  41 82 00 14 */	beq lbl_804E0D44
/* 804E0D34  90 9E 00 18 */	stw r4, 0x18(r30)
/* 804E0D38  38 00 00 00 */	li r0, 0
/* 804E0D3C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 804E0D40  48 00 00 18 */	b lbl_804E0D58
lbl_804E0D44:
/* 804E0D44  7F C3 F3 78 */	mr r3, r30
/* 804E0D48  7F A6 EB 78 */	mr r6, r29
/* 804E0D4C  7F 87 E3 78 */	mr r7, r28
/* 804E0D50  38 A0 00 00 */	li r5, 0
/* 804E0D54  4B E8 FD 41 */	bl cKF_SkeletonInfo_R_ct
lbl_804E0D58:
/* 804E0D58  7F 43 D3 78 */	mr r3, r26
/* 804E0D5C  3B 99 0A 18 */	addi r28, r25, 0xa18
/* 804E0D60  4B EF 7F 29 */	bl mPlib_Get_Item_DataPointer
/* 804E0D64  FC 40 E8 90 */	fmr f2, f29
/* 804E0D68  7C 64 1B 78 */	mr r4, r3
/* 804E0D6C  FC 60 F0 90 */	fmr f3, f30
/* 804E0D70  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 804E0D74  7F 83 E3 78 */	mr r3, r28
/* 804E0D78  7F 66 DB 78 */	mr r6, r27
/* 804E0D7C  38 A0 00 00 */	li r5, 0
/* 804E0D80  4B E9 0B 15 */	bl cKF_SkeletonInfo_R_init_standard_setframeandspeedandmorphandmode
lbl_804E0D84:
/* 804E0D84  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804E0D88  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804E0D8C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804E0D90  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804E0D94  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 804E0D98  39 61 00 30 */	addi r11, r1, 0x30
/* 804E0D9C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 804E0DA0  4B BB A1 71 */	bl func_8009AF10
/* 804E0DA4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804E0DA8  7C 08 03 A6 */	mtlr r0
/* 804E0DAC  38 21 00 60 */	addi r1, r1, 0x60
/* 804E0DB0  4E 80 00 20 */	blr 
