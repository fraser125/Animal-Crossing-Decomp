lbl_80600B64:
/* 80600B64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80600B68  7C 08 02 A6 */	mflr r0
/* 80600B6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80600B70  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80600B74  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80600B78  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80600B7C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80600B80  39 61 00 30 */	addi r11, r1, 0x30
/* 80600B84  4B A9 A3 45 */	bl func_8009AEC8
/* 80600B88  3C A0 80 65 */	lis r5, data_8064B98C@ha /* 0x8064B98C@ha */
/* 80600B8C  7C 7B 1B 78 */	mr r27, r3
/* 80600B90  FF C0 08 90 */	fmr f30, f1
/* 80600B94  C0 25 B9 8C */	lfs f1, data_8064B98C@l(r5)  /* 0x8064B98C@l */
/* 80600B98  80 BB 00 2C */	lwz r5, 0x2c(r27)
/* 80600B9C  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064B990@ha */
/* 80600BA0  FF E0 10 90 */	fmr f31, f2
/* 80600BA4  C0 63 B9 90 */	lfs f3, lit_473@l(r3)  /* 0x8064B990@l */
/* 80600BA8  FC 40 08 90 */	fmr f2, f1
/* 80600BAC  83 E5 09 F0 */	lwz r31, 0x9f0(r5)
/* 80600BB0  7C 9C 23 78 */	mr r28, r4
/* 80600BB4  7C DD 33 78 */	mr r29, r6
/* 80600BB8  38 60 00 00 */	li r3, 0
/* 80600BBC  4B E0 B8 31 */	bl Matrix_scale
/* 80600BC0  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064B994@ha */
/* 80600BC4  FC 20 F0 90 */	fmr f1, f30
/* 80600BC8  C0 63 B9 94 */	lfs f3, lit_474@l(r3)  /* 0x8064B994@l */
/* 80600BCC  FC 40 F8 90 */	fmr f2, f31
/* 80600BD0  38 60 00 01 */	li r3, 1
/* 80600BD4  4B E0 B7 2D */	bl Matrix_translate
/* 80600BD8  83 DC 02 D0 */	lwz r30, 0x2d0(r28)
/* 80600BDC  3C 00 DE 00 */	lis r0, 0xde00
/* 80600BE0  3C 80 80 B2 */	lis r4, pas_win_mode@ha /* 0x80B25180@ha */
/* 80600BE4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80600BE8  90 1E 00 00 */	stw r0, 0(r30)
/* 80600BEC  38 84 51 80 */	addi r4, r4, pas_win_mode@l /* 0x80B25180@l */
/* 80600BF0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80600BF4  7F 83 E3 78 */	mr r3, r28
/* 80600BF8  90 9E 00 04 */	stw r4, 4(r30)
/* 80600BFC  90 1E 00 08 */	stw r0, 8(r30)
/* 80600C00  4B E0 C7 D5 */	bl _Matrix_to_Mtx_new
/* 80600C04  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80600C08  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064B998@ha */
/* 80600C0C  38 C3 B9 98 */	addi r6, r3, lit_475@l /* 0x8064B998@l */
/* 80600C10  3D 00 80 B2 */	lis r8, pas_win_model@ha /* 0x80B251C0@ha */
/* 80600C14  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 80600C18  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 80600C1C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80600C20  3C 60 80 6D */	lis r3, waku_color@ha /* 0x806D1BE4@ha */
/* 80600C24  C0 04 09 34 */	lfs f0, 0x934(r4)
/* 80600C28  39 63 1B E4 */	addi r11, r3, waku_color@l /* 0x806D1BE4@l */
/* 80600C2C  C0 24 09 38 */	lfs f1, 0x938(r4)
/* 80600C30  39 85 00 FF */	addi r12, r5, 0x00FF /* 0xFA0000FF@l */
/* 80600C34  FC 00 00 50 */	fneg f0, f0
/* 80600C38  3C E0 80 B2 */	lis r7, pas_win_waku1_model@ha /* 0x80B24E18@ha */
/* 80600C3C  FC 20 08 50 */	fneg f1, f1
/* 80600C40  6B A4 00 01 */	xori r4, r29, 1
/* 80600C44  3C C0 80 B2 */	lis r6, pas_win_waku2_model@ha /* 0x80B24E68@ha */
/* 80600C48  3C 00 DE 00 */	lis r0, 0xde00
/* 80600C4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80600C50  39 08 51 C0 */	addi r8, r8, pas_win_model@l /* 0x80B251C0@l */
/* 80600C54  EC 22 00 72 */	fmuls f1, f2, f1
/* 80600C58  1F 5D 00 03 */	mulli r26, r29, 3
/* 80600C5C  38 6B 00 01 */	addi r3, r11, 1
/* 80600C60  FC 00 00 1E */	fctiwz f0, f0
/* 80600C64  FC 20 08 1E */	fctiwz f1, f1
/* 80600C68  38 AB 00 02 */	addi r5, r11, 2
/* 80600C6C  38 E7 4E 18 */	addi r7, r7, pas_win_waku1_model@l /* 0x80B24E18@l */
/* 80600C70  2C 1D 00 00 */	cmpwi r29, 0
/* 80600C74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80600C78  1C 84 00 03 */	mulli r4, r4, 3
/* 80600C7C  81 21 00 14 */	lwz r9, 0x14(r1)
/* 80600C80  38 C6 4E 68 */	addi r6, r6, pas_win_waku2_model@l /* 0x80B24E68@l */
/* 80600C84  D8 21 00 08 */	stfd f1, 8(r1)
/* 80600C88  55 29 53 AA */	rlwinm r9, r9, 0xa, 0xe, 0x15
/* 80600C8C  65 2A F2 00 */	oris r10, r9, 0xf200
/* 80600C90  83 61 00 0C */	lwz r27, 0xc(r1)
/* 80600C94  61 4A 00 1F */	ori r10, r10, 0x1f
/* 80600C98  57 69 53 AA */	rlwinm r9, r27, 0xa, 0xe, 0x15
/* 80600C9C  91 5E 00 10 */	stw r10, 0x10(r30)
/* 80600CA0  65 29 80 00 */	oris r9, r9, 0x8000
/* 80600CA4  61 29 00 1F */	ori r9, r9, 0x1f
/* 80600CA8  91 3E 00 14 */	stw r9, 0x14(r30)
/* 80600CAC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80600CB0  91 1E 00 1C */	stw r8, 0x1c(r30)
/* 80600CB4  91 9E 00 20 */	stw r12, 0x20(r30)
/* 80600CB8  7D 03 D0 AE */	lbzx r8, r3, r26
/* 80600CBC  7D 2B D0 AE */	lbzx r9, r11, r26
/* 80600CC0  55 08 82 1E */	rlwinm r8, r8, 0x10, 8, 0xf
/* 80600CC4  7D 45 D0 AE */	lbzx r10, r5, r26
/* 80600CC8  51 28 C0 0E */	rlwimi r8, r9, 0x18, 0, 7
/* 80600CCC  51 48 44 2E */	rlwimi r8, r10, 8, 0x10, 0x17
/* 80600CD0  61 08 00 FF */	ori r8, r8, 0xff
/* 80600CD4  91 1E 00 24 */	stw r8, 0x24(r30)
/* 80600CD8  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80600CDC  90 FE 00 2C */	stw r7, 0x2c(r30)
/* 80600CE0  91 9E 00 30 */	stw r12, 0x30(r30)
/* 80600CE4  7C 63 20 AE */	lbzx r3, r3, r4
/* 80600CE8  7C EB 20 AE */	lbzx r7, r11, r4
/* 80600CEC  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 80600CF0  7C 85 20 AE */	lbzx r4, r5, r4
/* 80600CF4  50 E3 C0 0E */	rlwimi r3, r7, 0x18, 0, 7
/* 80600CF8  50 83 44 2E */	rlwimi r3, r4, 8, 0x10, 0x17
/* 80600CFC  60 63 00 FF */	ori r3, r3, 0xff
/* 80600D00  90 7E 00 34 */	stw r3, 0x34(r30)
/* 80600D04  90 1E 00 38 */	stw r0, 0x38(r30)
/* 80600D08  90 DE 00 3C */	stw r6, 0x3c(r30)
/* 80600D0C  3B DE 00 40 */	addi r30, r30, 0x40
/* 80600D10  40 82 00 34 */	bne lbl_80600D44
/* 80600D14  38 7F 00 06 */	addi r3, r31, 6
/* 80600D18  38 80 00 08 */	li r4, 8
/* 80600D1C  38 A0 00 20 */	li r5, 0x20
/* 80600D20  4B DB B9 05 */	bl func_803BC624
/* 80600D24  2C 03 00 00 */	cmpwi r3, 0
/* 80600D28  41 82 00 1C */	beq lbl_80600D44
/* 80600D2C  3C 00 DE 00 */	lis r0, 0xde00
/* 80600D30  3C 60 80 B2 */	lis r3, pas_start_model@ha /* 0x80B21798@ha */
/* 80600D34  90 1E 00 00 */	stw r0, 0(r30)
/* 80600D38  38 03 17 98 */	addi r0, r3, pas_start_model@l /* 0x80B21798@l */
/* 80600D3C  90 1E 00 04 */	stw r0, 4(r30)
/* 80600D40  3B DE 00 08 */	addi r30, r30, 8
lbl_80600D44:
/* 80600D44  93 DC 02 D0 */	stw r30, 0x2d0(r28)
/* 80600D48  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80600D4C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80600D50  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80600D54  39 61 00 30 */	addi r11, r1, 0x30
/* 80600D58  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80600D5C  4B A9 A1 B9 */	bl func_8009AF14
/* 80600D60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80600D64  7C 08 03 A6 */	mtlr r0
/* 80600D68  38 21 00 50 */	addi r1, r1, 0x50
/* 80600D6C  4E 80 00 20 */	blr 
