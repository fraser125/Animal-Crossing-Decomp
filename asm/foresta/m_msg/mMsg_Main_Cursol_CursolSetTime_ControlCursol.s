lbl_803C2F58:
/* 803C2F58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C2F5C  7C 08 02 A6 */	mflr r0
/* 803C2F60  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C2F64  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 803C2F68  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 803C2F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2F70  93 C1 00 08 */	stw r30, 8(r1)
/* 803C2F74  7C 9F 23 78 */	mr r31, r4
/* 803C2F78  7C 7E 1B 78 */	mr r30, r3
/* 803C2F7C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C2F80  4B FF D3 09 */	bl mMsg_Get_CursolSetTimeCode
/* 803C2F84  FF E0 08 90 */	fmr f31, f1
/* 803C2F88  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C2F8C  7F C3 F3 78 */	mr r3, r30
/* 803C2F90  4B FF D0 B9 */	bl func_803C0048
/* 803C2F94  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C2F98  7C 00 1A 14 */	add r0, r0, r3
/* 803C2F9C  90 1F 00 00 */	stw r0, 0(r31)
/* 803C2FA0  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C2FA4  90 1E 04 20 */	stw r0, 0x420(r30)
/* 803C2FA8  80 1E 04 3C */	lwz r0, 0x43c(r30)
/* 803C2FAC  2C 00 00 00 */	cmpwi r0, 0
/* 803C2FB0  41 82 00 0C */	beq lbl_803C2FBC
/* 803C2FB4  38 60 00 00 */	li r3, 0
/* 803C2FB8  48 00 00 50 */	b lbl_803C3008
lbl_803C2FBC:
/* 803C2FBC  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C2FC0  C0 03 26 18 */	lfs f0, lit_725@l(r3)  /* 0x80642618@l */
/* 803C2FC4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803C2FC8  40 81 00 3C */	ble lbl_803C3004
/* 803C2FCC  D3 FE 04 14 */	stfs f31, 0x414(r30)
/* 803C2FD0  80 7E 04 0C */	lwz r3, 0x40c(r30)
/* 803C2FD4  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 803C2FD8  41 82 00 1C */	beq lbl_803C2FF4
/* 803C2FDC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 803C2FE0  40 82 00 14 */	bne lbl_803C2FF4
/* 803C2FE4  3C 60 80 64 */	lis r3, lit_947@ha /* 0x80642630@ha */
/* 803C2FE8  C0 23 26 30 */	lfs f1, lit_947@l(r3)  /* 0x80642630@l */
/* 803C2FEC  4B FF F2 1D */	bl mMsg_sound_MessageSpeedForce
/* 803C2FF0  48 00 00 0C */	b lbl_803C2FFC
lbl_803C2FF4:
/* 803C2FF4  FC 20 F8 90 */	fmr f1, f31
/* 803C2FF8  4B FF F2 11 */	bl mMsg_sound_MessageSpeedForce
lbl_803C2FFC:
/* 803C2FFC  38 60 00 02 */	li r3, 2
/* 803C3000  48 00 00 08 */	b lbl_803C3008
lbl_803C3004:
/* 803C3004  38 60 00 00 */	li r3, 0
lbl_803C3008:
/* 803C3008  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 803C300C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C3010  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 803C3014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C3018  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C301C  7C 08 03 A6 */	mtlr r0
/* 803C3020  38 21 00 20 */	addi r1, r1, 0x20
/* 803C3024  4E 80 00 20 */	blr 
