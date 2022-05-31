lbl_805E6D1C:
/* 805E6D1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E6D20  7C 08 02 A6 */	mflr r0
/* 805E6D24  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E6D28  39 61 00 50 */	addi r11, r1, 0x50
/* 805E6D2C  4B AB 41 71 */	bl func_8009AE9C
/* 805E6D30  7C 74 1B 78 */	mr r20, r3
/* 805E6D34  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 805E6D38  82 D4 02 D0 */	lwz r22, 0x2d0(r20)
/* 805E6D3C  38 03 00 01 */	addi r0, r3, 0x0001 /* 0xD5020001@l */
/* 805E6D40  3C 60 80 B0 */	lis r3, kan_tizu_mode@ha /* 0x80AFC740@ha */
/* 805E6D44  3A 60 00 00 */	li r19, 0
/* 805E6D48  90 16 00 00 */	stw r0, 0(r22)
/* 805E6D4C  3C A0 DE 00 */	lis r5, 0xde00
/* 805E6D50  38 03 C7 40 */	addi r0, r3, kan_tizu_mode@l /* 0x80AFC740@l */
/* 805E6D54  7C 95 23 78 */	mr r21, r4
/* 805E6D58  92 76 00 04 */	stw r19, 4(r22)
/* 805E6D5C  3A E0 00 00 */	li r23, 0
/* 805E6D60  90 B6 00 08 */	stw r5, 8(r22)
/* 805E6D64  90 16 00 0C */	stw r0, 0xc(r22)
/* 805E6D68  3A D6 00 10 */	addi r22, r22, 0x10
/* 805E6D6C  4B E2 54 69 */	bl Matrix_push
/* 805E6D70  3C C0 80 65 */	lis r6, lit_748@ha /* 0x8064B564@ha */
/* 805E6D74  3C A0 80 65 */	lis r5, lit_747@ha /* 0x8064B560@ha */
/* 805E6D78  3C 80 80 65 */	lis r4, lit_799@ha /* 0x8064B580@ha */
/* 805E6D7C  C0 26 B5 64 */	lfs f1, lit_748@l(r6)  /* 0x8064B564@l */
/* 805E6D80  C0 45 B5 60 */	lfs f2, lit_747@l(r5)  /* 0x8064B560@l */
/* 805E6D84  38 60 00 01 */	li r3, 1
/* 805E6D88  C0 64 B5 80 */	lfs f3, lit_799@l(r4)  /* 0x8064B580@l */
/* 805E6D8C  4B E2 55 75 */	bl Matrix_translate
/* 805E6D90  3D 20 DB 06 */	lis r9, 0xDB06 /* 0xDB060020@ha */
/* 805E6D94  3D 40 80 B0 */	lis r10, kan_tizu_model@ha /* 0x80AFC768@ha */
/* 805E6D98  3D 00 80 6D */	lis r8, l_kan_tizu_pal@ha /* 0x806CDBA0@ha */
/* 805E6D9C  3C E0 DA 38 */	lis r7, 0xDA38 /* 0xDA380003@ha */
/* 805E6DA0  3C C0 80 65 */	lis r6, data_8064B53C@ha /* 0x8064B53C@ha */
/* 805E6DA4  3C A0 80 65 */	lis r5, lit_799@ha /* 0x8064B580@ha */
/* 805E6DA8  3C 80 80 65 */	lis r4, lit_800@ha /* 0x8064B584@ha */
/* 805E6DAC  3C 60 80 65 */	lis r3, lit_801@ha /* 0x8064B588@ha */
/* 805E6DB0  3B 4A C7 68 */	addi r26, r10, kan_tizu_model@l /* 0x80AFC768@l */
/* 805E6DB4  3B 69 00 20 */	addi r27, r9, 0x0020 /* 0xDB060020@l */
/* 805E6DB8  3B 89 00 24 */	addi r28, r9, 0x24
/* 805E6DBC  3B A8 DB A0 */	addi r29, r8, l_kan_tizu_pal@l /* 0x806CDBA0@l */
/* 805E6DC0  3B C7 00 03 */	addi r30, r7, 0x0003 /* 0xDA380003@l */
/* 805E6DC4  3B E6 B5 3C */	addi r31, r6, data_8064B53C@l /* 0x8064B53C@l */
/* 805E6DC8  3A 05 B5 80 */	addi r16, r5, lit_799@l /* 0x8064B580@l */
/* 805E6DCC  3A 24 B5 84 */	addi r17, r4, lit_800@l /* 0x8064B584@l */
/* 805E6DD0  3A 43 B5 88 */	addi r18, r3, lit_801@l /* 0x8064B588@l */
/* 805E6DD4  3B 20 00 00 */	li r25, 0
/* 805E6DD8  3D E0 DE 00 */	lis r15, 0xde00
lbl_805E6DDC:
/* 805E6DDC  3B 00 00 00 */	li r24, 0
lbl_805E6DE0:
/* 805E6DE0  93 76 00 00 */	stw r27, 0(r22)
/* 805E6DE4  38 93 00 20 */	addi r4, r19, 0x20
/* 805E6DE8  38 17 00 98 */	addi r0, r23, 0x98
/* 805E6DEC  7E 83 A3 78 */	mr r3, r20
/* 805E6DF0  7C 95 20 2E */	lwzx r4, r21, r4
/* 805E6DF4  90 96 00 04 */	stw r4, 4(r22)
/* 805E6DF8  93 96 00 08 */	stw r28, 8(r22)
/* 805E6DFC  7C 15 00 AE */	lbzx r0, r21, r0
/* 805E6E00  54 00 10 3A */	slwi r0, r0, 2
/* 805E6E04  7C 1D 00 2E */	lwzx r0, r29, r0
/* 805E6E08  90 16 00 0C */	stw r0, 0xc(r22)
/* 805E6E0C  93 D6 00 10 */	stw r30, 0x10(r22)
/* 805E6E10  4B E2 65 C5 */	bl _Matrix_to_Mtx_new
/* 805E6E14  90 76 00 14 */	stw r3, 0x14(r22)
/* 805E6E18  38 60 00 01 */	li r3, 1
/* 805E6E1C  C0 50 00 00 */	lfs f2, 0(r16)
/* 805E6E20  91 F6 00 18 */	stw r15, 0x18(r22)
/* 805E6E24  FC 60 10 90 */	fmr f3, f2
/* 805E6E28  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E6E2C  93 56 00 1C */	stw r26, 0x1c(r22)
/* 805E6E30  3A D6 00 20 */	addi r22, r22, 0x20
/* 805E6E34  4B E2 54 CD */	bl Matrix_translate
/* 805E6E38  3B 18 00 01 */	addi r24, r24, 1
/* 805E6E3C  3A 73 00 04 */	addi r19, r19, 4
/* 805E6E40  2C 18 00 05 */	cmpwi r24, 5
/* 805E6E44  3A F7 00 01 */	addi r23, r23, 1
/* 805E6E48  41 80 FF 98 */	blt lbl_805E6DE0
/* 805E6E4C  C0 31 00 00 */	lfs f1, 0(r17)
/* 805E6E50  38 60 00 01 */	li r3, 1
/* 805E6E54  C0 52 00 00 */	lfs f2, 0(r18)
/* 805E6E58  C0 70 00 00 */	lfs f3, 0(r16)
/* 805E6E5C  4B E2 54 A5 */	bl Matrix_translate
/* 805E6E60  3B 39 00 01 */	addi r25, r25, 1
/* 805E6E64  2C 19 00 06 */	cmpwi r25, 6
/* 805E6E68  41 80 FF 74 */	blt lbl_805E6DDC
/* 805E6E6C  4B E2 53 A9 */	bl Matrix_pull
/* 805E6E70  7E C3 B3 78 */	mr r3, r22
/* 805E6E74  3C 00 D5 02 */	lis r0, 0xd502
/* 805E6E78  90 16 00 00 */	stw r0, 0(r22)
/* 805E6E7C  38 00 00 00 */	li r0, 0
/* 805E6E80  3A D6 00 08 */	addi r22, r22, 8
/* 805E6E84  90 03 00 04 */	stw r0, 4(r3)
/* 805E6E88  92 D4 02 D0 */	stw r22, 0x2d0(r20)
/* 805E6E8C  39 61 00 50 */	addi r11, r1, 0x50
/* 805E6E90  4B AB 40 59 */	bl func_8009AEE8
/* 805E6E94  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E6E98  7C 08 03 A6 */	mtlr r0
/* 805E6E9C  38 21 00 50 */	addi r1, r1, 0x50
/* 805E6EA0  4E 80 00 20 */	blr 
