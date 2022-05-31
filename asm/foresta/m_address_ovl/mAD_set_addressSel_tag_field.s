lbl_805C2F3C:
/* 805C2F3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C2F40  7C 08 02 A6 */	mflr r0
/* 805C2F44  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C2F48  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805C2F4C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805C2F50  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805C2F54  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805C2F58  39 61 00 20 */	addi r11, r1, 0x20
/* 805C2F5C  4B AD 7F 75 */	bl func_8009AED0
/* 805C2F60  7C 9D 23 78 */	mr r29, r4
/* 805C2F64  3C 80 80 65 */	lis r4, lit_740@ha /* 0x8064AD2C@ha */
/* 805C2F68  30 1D FF FF */	addic r0, r29, -1
/* 805C2F6C  FF C0 08 90 */	fmr f30, f1
/* 805C2F70  38 C4 AD 2C */	addi r6, r4, lit_740@l /* 0x8064AD2C@l */
/* 805C2F74  3C 80 80 65 */	lis r4, lit_741@ha /* 0x8064AD30@ha */
/* 805C2F78  7C 00 E9 10 */	subfe r0, r0, r29
/* 805C2F7C  C0 26 00 00 */	lfs f1, 0(r6)
/* 805C2F80  1D 00 00 0C */	mulli r8, r0, 0xc
/* 805C2F84  3C E0 80 6C */	lis r7, prim_color@ha /* 0x806C7A60@ha */
/* 805C2F88  FF E0 10 90 */	fmr f31, f2
/* 805C2F8C  FC 40 08 90 */	fmr f2, f1
/* 805C2F90  7C 7C 1B 78 */	mr r28, r3
/* 805C2F94  38 07 7A 60 */	addi r0, r7, prim_color@l /* 0x806C7A60@l */
/* 805C2F98  7C 60 42 14 */	add r3, r0, r8
/* 805C2F9C  C0 64 AD 30 */	lfs f3, lit_741@l(r4)  /* 0x8064AD30@l */
/* 805C2FA0  54 A0 10 3A */	slwi r0, r5, 2
/* 805C2FA4  7F E3 02 14 */	add r31, r3, r0
/* 805C2FA8  38 60 00 00 */	li r3, 0
/* 805C2FAC  4B E4 94 41 */	bl Matrix_scale
/* 805C2FB0  3C 60 80 65 */	lis r3, lit_742@ha /* 0x8064AD34@ha */
/* 805C2FB4  FC 20 F0 90 */	fmr f1, f30
/* 805C2FB8  C0 63 AD 34 */	lfs f3, lit_742@l(r3)  /* 0x8064AD34@l */
/* 805C2FBC  FC 40 F8 90 */	fmr f2, f31
/* 805C2FC0  38 60 00 01 */	li r3, 1
/* 805C2FC4  4B E4 93 3D */	bl Matrix_translate
/* 805C2FC8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805C2FCC  3C 60 80 6C */	lis r3, data_806C76E0@ha /* 0x806C76E0@ha */
/* 805C2FD0  83 DC 02 D0 */	lwz r30, 0x2d0(r28)
/* 805C2FD4  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 805C2FD8  57 A4 40 2E */	slwi r4, r29, 8
/* 805C2FDC  38 03 76 E0 */	addi r0, r3, data_806C76E0@l /* 0x806C76E0@l */
/* 805C2FE0  7C E0 22 14 */	add r7, r0, r4
/* 805C2FE4  90 DE 00 00 */	stw r6, 0(r30)
/* 805C2FE8  38 07 00 80 */	addi r0, r7, 0x80
/* 805C2FEC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C2FF0  90 1E 00 04 */	stw r0, 4(r30)
/* 805C2FF4  38 85 00 24 */	addi r4, r5, 0x24
/* 805C2FF8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C2FFC  7F 83 E3 78 */	mr r3, r28
/* 805C3000  90 9E 00 08 */	stw r4, 8(r30)
/* 805C3004  90 FE 00 0C */	stw r7, 0xc(r30)
/* 805C3008  90 1E 00 10 */	stw r0, 0x10(r30)
/* 805C300C  4B E4 A3 C9 */	bl _Matrix_to_Mtx_new
/* 805C3010  90 7E 00 14 */	stw r3, 0x14(r30)
/* 805C3014  3C C0 DE 00 */	lis r6, 0xde00
/* 805C3018  3C 60 80 A0 */	lis r3, lat_atena_model@ha /* 0x80A03148@ha */
/* 805C301C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805C3020  90 DE 00 18 */	stw r6, 0x18(r30)
/* 805C3024  38 03 31 48 */	addi r0, r3, lat_atena_model@l /* 0x80A03148@l */
/* 805C3028  38 84 00 FF */	addi r4, r4, 0x00FF /* 0xFA0000FF@l */
/* 805C302C  3C 60 80 A0 */	lis r3, lat_atena_winT_model@ha /* 0x80A030F0@ha */
/* 805C3030  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 805C3034  38 03 30 F0 */	addi r0, r3, lat_atena_winT_model@l /* 0x80A030F0@l */
/* 805C3038  90 9E 00 20 */	stw r4, 0x20(r30)
/* 805C303C  88 7F 00 01 */	lbz r3, 1(r31)
/* 805C3040  88 9F 00 00 */	lbz r4, 0(r31)
/* 805C3044  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805C3048  88 BF 00 02 */	lbz r5, 2(r31)
/* 805C304C  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 805C3050  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805C3054  60 63 00 FF */	ori r3, r3, 0xff
/* 805C3058  90 7E 00 24 */	stw r3, 0x24(r30)
/* 805C305C  3B DE 00 28 */	addi r30, r30, 0x28
/* 805C3060  7F C3 F3 78 */	mr r3, r30
/* 805C3064  90 DE 00 00 */	stw r6, 0(r30)
/* 805C3068  3B DE 00 08 */	addi r30, r30, 8
/* 805C306C  90 03 00 04 */	stw r0, 4(r3)
/* 805C3070  93 DC 02 D0 */	stw r30, 0x2d0(r28)
/* 805C3074  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805C3078  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805C307C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805C3080  39 61 00 20 */	addi r11, r1, 0x20
/* 805C3084  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805C3088  4B AD 7E 95 */	bl func_8009AF1C
/* 805C308C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C3090  7C 08 03 A6 */	mtlr r0
/* 805C3094  38 21 00 40 */	addi r1, r1, 0x40
/* 805C3098  4E 80 00 20 */	blr 
