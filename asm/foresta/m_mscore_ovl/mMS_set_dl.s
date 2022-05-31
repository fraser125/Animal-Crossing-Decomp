lbl_805E7F5C:
/* 805E7F5C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 805E7F60  7C 08 02 A6 */	mflr r0
/* 805E7F64  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805E7F68  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 805E7F6C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 805E7F70  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 805E7F74  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 805E7F78  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 805E7F7C  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 805E7F80  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 805E7F84  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 805E7F88  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 805E7F8C  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 805E7F90  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 805E7F94  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 805E7F98  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 805E7F9C  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 805E7FA0  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 805E7FA4  F3 01 00 78 */	psq_st f24, 120(r1), 0, 0 /* qr0 */
/* 805E7FA8  DA E1 00 60 */	stfd f23, 0x60(r1)
/* 805E7FAC  F2 E1 00 68 */	psq_st f23, 104(r1), 0, 0 /* qr0 */
/* 805E7FB0  39 61 00 60 */	addi r11, r1, 0x60
/* 805E7FB4  4B AB 2E E5 */	bl __save_gpr
/* 805E7FB8  7C 6F 1B 78 */	mr r15, r3
/* 805E7FBC  7C 90 23 78 */	mr r16, r4
/* 805E7FC0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E7FC4  7C B1 2B 78 */	mr r17, r5
/* 805E7FC8  3C 80 80 6D */	lis r4, data_806CDF08@ha /* 0x806CDF08@ha */
/* 805E7FCC  83 05 00 00 */	lwz r24, 0(r5)
/* 805E7FD0  82 63 09 B0 */	lwz r19, 0x9b0(r3)
/* 805E7FD4  3B 24 DF 08 */	addi r25, r4, data_806CDF08@l /* 0x806CDF08@l */
/* 805E7FD8  C3 30 00 18 */	lfs f25, 0x18(r16)
/* 805E7FDC  C3 10 00 1C */	lfs f24, 0x1c(r16)
/* 805E7FE0  C2 F3 00 20 */	lfs f23, 0x20(r19)
/* 805E7FE4  48 04 62 35 */	bl sAdo_InstCountGet
/* 805E7FE8  3C A0 80 65 */	lis r5, lit_704@ha /* 0x8064B5D0@ha */
/* 805E7FEC  3C 80 80 65 */	lis r4, lit_541@ha /* 0x8064B5CC@ha */
/* 805E7FF0  C0 25 B5 D0 */	lfs f1, lit_704@l(r5)  /* 0x8064B5D0@l */
/* 805E7FF4  7C 76 07 74 */	extsb r22, r3
/* 805E7FF8  C0 64 B5 CC */	lfs f3, lit_541@l(r4)  /* 0x8064B5CC@l */
/* 805E7FFC  38 60 00 00 */	li r3, 0
/* 805E8000  FC 40 08 90 */	fmr f2, f1
/* 805E8004  4B E2 43 E9 */	bl Matrix_scale
/* 805E8008  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064B5CC@ha */
/* 805E800C  FC 20 C8 90 */	fmr f1, f25
/* 805E8010  C0 63 B5 CC */	lfs f3, lit_541@l(r3)  /* 0x8064B5CC@l */
/* 805E8014  FC 40 C0 90 */	fmr f2, f24
/* 805E8018  38 60 00 01 */	li r3, 1
/* 805E801C  4B E2 42 E5 */	bl Matrix_translate
/* 805E8020  80 10 00 04 */	lwz r0, 4(r16)
/* 805E8024  39 C0 00 00 */	li r14, 0
/* 805E8028  82 58 02 D0 */	lwz r18, 0x2d0(r24)
/* 805E802C  2C 00 00 01 */	cmpwi r0, 1
/* 805E8030  41 82 00 24 */	beq lbl_805E8054
/* 805E8034  2C 00 00 03 */	cmpwi r0, 3
/* 805E8038  41 82 00 1C */	beq lbl_805E8054
/* 805E803C  2C 00 00 02 */	cmpwi r0, 2
/* 805E8040  40 82 00 18 */	bne lbl_805E8058
/* 805E8044  80 6F 00 2C */	lwz r3, 0x2c(r15)
/* 805E8048  80 03 04 90 */	lwz r0, 0x490(r3)
/* 805E804C  2C 00 00 00 */	cmpwi r0, 0
/* 805E8050  40 82 00 08 */	bne lbl_805E8058
lbl_805E8054:
/* 805E8054  39 C0 00 01 */	li r14, 1
lbl_805E8058:
/* 805E8058  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805E805C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805E8060  90 12 00 00 */	stw r0, 0(r18)
/* 805E8064  4B DA DE 6D */	bl getButton
/* 805E8068  54 60 D7 FE */	rlwinm r0, r3, 0x1a, 0x1f, 0x1f
/* 805E806C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 805E8070  7D C0 00 38 */	and r0, r14, r0
/* 805E8074  38 99 03 1C */	addi r4, r25, 0x31c
/* 805E8078  54 05 10 3A */	slwi r5, r0, 2
/* 805E807C  38 03 00 24 */	addi r0, r3, 0x0024 /* 0xDB060024@l */
/* 805E8080  7C 64 28 2E */	lwzx r3, r4, r5
/* 805E8084  90 72 00 04 */	stw r3, 4(r18)
/* 805E8088  90 12 00 08 */	stw r0, 8(r18)
/* 805E808C  4B DA DE 45 */	bl getButton
/* 805E8090  54 60 CF FE */	rlwinm r0, r3, 0x19, 0x1f, 0x1f
/* 805E8094  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB06002C@ha */
/* 805E8098  7D C0 00 38 */	and r0, r14, r0
/* 805E809C  38 99 03 14 */	addi r4, r25, 0x314
/* 805E80A0  54 05 10 3A */	slwi r5, r0, 2
/* 805E80A4  38 03 00 2C */	addi r0, r3, 0x002C /* 0xDB06002C@l */
/* 805E80A8  7C 64 28 2E */	lwzx r3, r4, r5
/* 805E80AC  90 72 00 0C */	stw r3, 0xc(r18)
/* 805E80B0  90 12 00 10 */	stw r0, 0x10(r18)
/* 805E80B4  4B DA DE 1D */	bl getButton
/* 805E80B8  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 805E80BC  38 79 03 24 */	addi r3, r25, 0x324
/* 805E80C0  7D C0 00 38 */	and r0, r14, r0
/* 805E80C4  54 00 10 3A */	slwi r0, r0, 2
/* 805E80C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805E80CC  90 12 00 14 */	stw r0, 0x14(r18)
/* 805E80D0  4B DA DE 01 */	bl getButton
/* 805E80D4  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060028@ha */
/* 805E80D8  54 65 A7 FE */	rlwinm r5, r3, 0x14, 0x1f, 0x1f
/* 805E80DC  38 04 00 28 */	addi r0, r4, 0x0028 /* 0xDB060028@l */
/* 805E80E0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E80E4  7D C4 28 38 */	and r4, r14, r5
/* 805E80E8  90 12 00 18 */	stw r0, 0x18(r18)
/* 805E80EC  54 80 10 3A */	slwi r0, r4, 2
/* 805E80F0  38 99 03 0C */	addi r4, r25, 0x30c
/* 805E80F4  7C 84 00 2E */	lwzx r4, r4, r0
/* 805E80F8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E80FC  7F 03 C3 78 */	mr r3, r24
/* 805E8100  90 92 00 1C */	stw r4, 0x1c(r18)
/* 805E8104  90 12 00 20 */	stw r0, 0x20(r18)
/* 805E8108  4B E2 52 CD */	bl _Matrix_to_Mtx_new
/* 805E810C  90 72 00 24 */	stw r3, 0x24(r18)
/* 805E8110  3D 20 DE 00 */	lis r9, 0xde00
/* 805E8114  3C 60 80 AF */	lis r3, onp_win_model@ha /* 0x80AF68B8@ha */
/* 805E8118  3C E0 80 AF */	lis r7, onp_win_zT_model@ha /* 0x80AF1420@ha */
/* 805E811C  91 32 00 28 */	stw r9, 0x28(r18)
/* 805E8120  38 03 68 B8 */	addi r0, r3, onp_win_model@l /* 0x80AF68B8@l */
/* 805E8124  3C A0 80 AF */	lis r5, onp_win_rT_model@ha /* 0x80AF14D8@ha */
/* 805E8128  3C 80 80 AF */	lis r4, onp_win_sT_model@ha /* 0x80AF1528@ha */
/* 805E812C  90 12 00 2C */	stw r0, 0x2c(r18)
/* 805E8130  3D 00 80 AF */	lis r8, onp_win_mojiT_model@ha /* 0x80AF1470@ha */
/* 805E8134  38 D9 02 DC */	addi r6, r25, 0x2dc
/* 805E8138  38 E7 14 20 */	addi r7, r7, onp_win_zT_model@l /* 0x80AF1420@l */
/* 805E813C  91 32 00 30 */	stw r9, 0x30(r18)
/* 805E8140  38 08 14 70 */	addi r0, r8, onp_win_mojiT_model@l /* 0x80AF1470@l */
/* 805E8144  38 A5 14 D8 */	addi r5, r5, onp_win_rT_model@l /* 0x80AF14D8@l */
/* 805E8148  38 84 15 28 */	addi r4, r4, onp_win_sT_model@l /* 0x80AF1528@l */
/* 805E814C  90 12 00 34 */	stw r0, 0x34(r18)
/* 805E8150  3C 60 80 AF */	lis r3, onp_win_rmoji_model@ha /* 0x80AF13C0@ha */
/* 805E8154  38 03 13 C0 */	addi r0, r3, onp_win_rmoji_model@l /* 0x80AF13C0@l */
/* 805E8158  38 C6 00 0C */	addi r6, r6, 0xc
/* 805E815C  91 32 00 38 */	stw r9, 0x38(r18)
/* 805E8160  90 F2 00 3C */	stw r7, 0x3c(r18)
/* 805E8164  91 32 00 40 */	stw r9, 0x40(r18)
/* 805E8168  90 B2 00 44 */	stw r5, 0x44(r18)
/* 805E816C  91 32 00 48 */	stw r9, 0x48(r18)
/* 805E8170  90 92 00 4C */	stw r4, 0x4c(r18)
/* 805E8174  91 32 00 50 */	stw r9, 0x50(r18)
/* 805E8178  90 12 00 54 */	stw r0, 0x54(r18)
/* 805E817C  80 13 00 10 */	lwz r0, 0x10(r19)
/* 805E8180  2C 00 00 10 */	cmpwi r0, 0x10
/* 805E8184  40 82 00 08 */	bne lbl_805E818C
/* 805E8188  38 D9 02 DC */	addi r6, r25, 0x2dc
lbl_805E818C:
/* 805E818C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805E8190  3C 60 80 AF */	lis r3, onp_win_owariT_model@ha /* 0x80AF6710@ha */
/* 805E8194  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805E8198  2C 16 00 00 */	cmpwi r22, 0
/* 805E819C  90 12 00 58 */	stw r0, 0x58(r18)
/* 805E81A0  38 03 67 10 */	addi r0, r3, onp_win_owariT_model@l /* 0x80AF6710@l */
/* 805E81A4  3C 80 DE 00 */	lis r4, 0xde00
/* 805E81A8  80 66 00 04 */	lwz r3, 4(r6)
/* 805E81AC  80 A6 00 00 */	lwz r5, 0(r6)
/* 805E81B0  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805E81B4  80 C6 00 08 */	lwz r6, 8(r6)
/* 805E81B8  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 805E81BC  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 805E81C0  60 63 00 FF */	ori r3, r3, 0xff
/* 805E81C4  90 72 00 5C */	stw r3, 0x5c(r18)
/* 805E81C8  90 92 00 60 */	stw r4, 0x60(r18)
/* 805E81CC  90 12 00 64 */	stw r0, 0x64(r18)
/* 805E81D0  3A 52 00 68 */	addi r18, r18, 0x68
/* 805E81D4  41 80 00 10 */	blt lbl_805E81E4
/* 805E81D8  7E D5 B3 78 */	mr r21, r22
/* 805E81DC  3A 80 FF FF */	li r20, -1
/* 805E81E0  48 00 00 10 */	b lbl_805E81F0
lbl_805E81E4:
/* 805E81E4  82 93 00 10 */	lwz r20, 0x10(r19)
/* 805E81E8  7E 80 FE 70 */	srawi r0, r20, 0x1f
/* 805E81EC  7E 95 00 78 */	andc r21, r20, r0
lbl_805E81F0:
/* 805E81F0  2C 14 00 10 */	cmpwi r20, 0x10
/* 805E81F4  41 82 00 F0 */	beq lbl_805E82E4
/* 805E81F8  56 A0 E8 04 */	slwi r0, r21, 0x1d
/* 805E81FC  56 A5 0F FE */	srwi r5, r21, 0x1f
/* 805E8200  7C 65 00 50 */	subf r3, r5, r0
/* 805E8204  3C 80 80 65 */	lis r4, lit_733@ha /* 0x8064B644@ha */
/* 805E8208  54 63 18 3E */	rotlwi r3, r3, 3
/* 805E820C  3C 00 43 30 */	lis r0, 0x4330
/* 805E8210  7C 63 2A 14 */	add r3, r3, r5
/* 805E8214  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E8218  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805E821C  C8 24 B6 44 */	lfd f1, lit_733@l(r4)  /* 0x8064B644@l */
/* 805E8220  90 61 00 14 */	stw r3, 0x14(r1)
/* 805E8224  3C A0 80 65 */	lis r5, lit_706@ha /* 0x8064B5D8@ha */
/* 805E8228  38 65 B5 D8 */	addi r3, r5, lit_706@l /* 0x8064B5D8@l */
/* 805E822C  2C 15 00 08 */	cmpwi r21, 8
/* 805E8230  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E8234  3C A0 80 65 */	lis r5, lit_705@ha /* 0x8064B5D4@ha */
/* 805E8238  C0 43 00 00 */	lfs f2, 0(r3)
/* 805E823C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E8240  C0 65 B5 D4 */	lfs f3, lit_705@l(r5)  /* 0x8064B5D4@l */
/* 805E8244  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E8248  EC 23 00 2A */	fadds f1, f3, f0
/* 805E824C  40 80 00 10 */	bge lbl_805E825C
/* 805E8250  3C 60 80 65 */	lis r3, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E8254  C0 03 B5 C4 */	lfs f0, data_8064B5C4@l(r3)  /* 0x8064B5C4@l */
/* 805E8258  48 00 00 0C */	b lbl_805E8264
lbl_805E825C:
/* 805E825C  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B5DC@ha */
/* 805E8260  C0 03 B5 DC */	lfs f0, lit_707@l(r3)  /* 0x8064B5DC@l */
lbl_805E8264:
/* 805E8264  3C 60 80 65 */	lis r3, lit_708@ha /* 0x8064B5E0@ha */
/* 805E8268  EC 21 00 2A */	fadds f1, f1, f0
/* 805E826C  2C 15 00 08 */	cmpwi r21, 8
/* 805E8270  C0 43 B5 E0 */	lfs f2, lit_708@l(r3)  /* 0x8064B5E0@l */
/* 805E8274  40 80 00 10 */	bge lbl_805E8284
/* 805E8278  3C 60 80 65 */	lis r3, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E827C  C0 03 B5 C4 */	lfs f0, data_8064B5C4@l(r3)  /* 0x8064B5C4@l */
/* 805E8280  48 00 00 0C */	b lbl_805E828C
lbl_805E8284:
/* 805E8284  3C 60 80 65 */	lis r3, lit_709@ha /* 0x8064B5E4@ha */
/* 805E8288  C0 03 B5 E4 */	lfs f0, lit_709@l(r3)  /* 0x8064B5E4@l */
lbl_805E828C:
/* 805E828C  3C 60 80 65 */	lis r3, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E8290  EC 42 00 2A */	fadds f2, f2, f0
/* 805E8294  38 83 B5 C4 */	addi r4, r3, data_8064B5C4@l /* 0x8064B5C4@l */
/* 805E8298  38 60 00 01 */	li r3, 1
/* 805E829C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805E82A0  4B E2 40 61 */	bl Matrix_translate
/* 805E82A4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805E82A8  7F 03 C3 78 */	mr r3, r24
/* 805E82AC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805E82B0  90 12 00 00 */	stw r0, 0(r18)
/* 805E82B4  4B E2 51 21 */	bl _Matrix_to_Mtx_new
/* 805E82B8  90 72 00 04 */	stw r3, 4(r18)
/* 805E82BC  3C A0 DE 00 */	lis r5, 0xde00
/* 805E82C0  3C 80 80 AF */	lis r4, onp_hyouji_moji_mode@ha /* 0x80AEF8D8@ha */
/* 805E82C4  3C 60 80 AF */	lis r3, onp_hyouji_bouT_model@ha /* 0x80AEF860@ha */
/* 805E82C8  90 B2 00 08 */	stw r5, 8(r18)
/* 805E82CC  38 84 F8 D8 */	addi r4, r4, onp_hyouji_moji_mode@l /* 0x80AEF8D8@l */
/* 805E82D0  38 03 F8 60 */	addi r0, r3, onp_hyouji_bouT_model@l /* 0x80AEF860@l */
/* 805E82D4  90 92 00 0C */	stw r4, 0xc(r18)
/* 805E82D8  90 B2 00 10 */	stw r5, 0x10(r18)
/* 805E82DC  90 12 00 14 */	stw r0, 0x14(r18)
/* 805E82E0  3A 52 00 18 */	addi r18, r18, 0x18
lbl_805E82E4:
/* 805E82E4  2C 16 00 00 */	cmpwi r22, 0
/* 805E82E8  40 80 00 08 */	bge lbl_805E82F0
/* 805E82EC  3A A0 FF FF */	li r21, -1
lbl_805E82F0:
/* 805E82F0  3C 00 DE 00 */	lis r0, 0xde00
/* 805E82F4  3C 60 80 AF */	lis r3, onp_hyouji_waku_mode@ha /* 0x80AEF8B0@ha */
/* 805E82F8  90 12 00 00 */	stw r0, 0(r18)
/* 805E82FC  38 03 F8 B0 */	addi r0, r3, onp_hyouji_waku_mode@l /* 0x80AEF8B0@l */
/* 805E8300  3C 60 80 65 */	lis r3, lit_712@ha /* 0x8064B5F0@ha */
/* 805E8304  3C 80 80 65 */	lis r4, lit_711@ha /* 0x8064B5EC@ha */
/* 805E8308  90 12 00 04 */	stw r0, 4(r18)
/* 805E830C  3C 00 43 30 */	lis r0, 0x4330
/* 805E8310  C0 03 B5 F0 */	lfs f0, lit_712@l(r3)  /* 0x8064B5F0@l */
/* 805E8314  3C A0 80 65 */	lis r5, lit_713@ha /* 0x8064B5F4@ha */
/* 805E8318  80 73 00 14 */	lwz r3, 0x14(r19)
/* 805E831C  3C C0 80 65 */	lis r6, lit_710@ha /* 0x8064B5E8@ha */
/* 805E8320  EF E0 C8 2A */	fadds f31, f0, f25
/* 805E8324  C0 05 B5 F4 */	lfs f0, lit_713@l(r5)  /* 0x8064B5F4@l */
/* 805E8328  C0 24 B5 EC */	lfs f1, lit_711@l(r4)  /* 0x8064B5EC@l */
/* 805E832C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805E8330  EF A0 C0 2A */	fadds f29, f0, f24
/* 805E8334  90 61 00 14 */	stw r3, 0x14(r1)
/* 805E8338  EC 01 F8 2A */	fadds f0, f1, f31
/* 805E833C  C0 26 B5 E8 */	lfs f1, lit_710@l(r6)  /* 0x8064B5E8@l */
/* 805E8340  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E8344  3C 80 80 65 */	lis r4, lit_733@ha /* 0x8064B644@ha */
/* 805E8348  3C A0 80 65 */	lis r5, lit_715@ha /* 0x8064B5FC@ha */
/* 805E834C  FF 60 E8 90 */	fmr f27, f29
/* 805E8350  EF C1 00 2A */	fadds f30, f1, f0
/* 805E8354  C8 24 B6 44 */	lfd f1, lit_733@l(r4)  /* 0x8064B644@l */
/* 805E8358  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E835C  3A 52 00 08 */	addi r18, r18, 8
/* 805E8360  C0 45 B5 FC */	lfs f2, lit_715@l(r5)  /* 0x8064B5FC@l */
/* 805E8364  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E8368  FF 80 F0 90 */	fmr f28, f30
/* 805E836C  EC 22 00 32 */	fmuls f1, f2, f0
/* 805E8370  4B E2 05 7D */	bl cosf_table
/* 805E8374  3C 80 80 65 */	lis r4, lit_541@ha /* 0x8064B5CC@ha */
/* 805E8378  3C 60 80 65 */	lis r3, lit_716@ha /* 0x8064B600@ha */
/* 805E837C  3B 44 B5 CC */	addi r26, r4, lit_541@l /* 0x8064B5CC@l */
/* 805E8380  C0 03 B6 00 */	lfs f0, lit_716@l(r3)  /* 0x8064B600@l */
/* 805E8384  C0 9A 00 00 */	lfs f4, 0(r26)
/* 805E8388  3C 80 80 65 */	lis r4, lit_714@ha /* 0x8064B5F8@ha */
/* 805E838C  C0 44 B5 F8 */	lfs f2, lit_714@l(r4)  /* 0x8064B5F8@l */
/* 805E8390  3C E0 80 65 */	lis r7, lit_704@ha /* 0x8064B5D0@ha */
/* 805E8394  EC 64 08 28 */	fsubs f3, f4, f1
/* 805E8398  3C 60 80 65 */	lis r3, lit_710@ha /* 0x8064B5E8@ha */
/* 805E839C  C0 23 B5 E8 */	lfs f1, lit_710@l(r3)  /* 0x8064B5E8@l */
/* 805E83A0  EC 00 F8 2A */	fadds f0, f0, f31
/* 805E83A4  3C C0 80 65 */	lis r6, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E83A8  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 805E83AC  EC 42 00 F2 */	fmuls f2, f2, f3
/* 805E83B0  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805E83B4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E83B8  EF E1 00 2A */	fadds f31, f1, f0
/* 805E83BC  7E 7F 9B 78 */	mr r31, r19
/* 805E83C0  3B 67 B5 D0 */	addi r27, r7, lit_704@l /* 0x8064B5D0@l */
/* 805E83C4  EF 44 10 2A */	fadds f26, f4, f2
/* 805E83C8  3B 86 B5 C4 */	addi r28, r6, data_8064B5C4@l /* 0x8064B5C4@l */
/* 805E83CC  3B A5 00 FF */	addi r29, r5, 0x00FF /* 0xFA0000FF@l */
/* 805E83D0  3B C4 00 20 */	addi r30, r4, 0x0020 /* 0xDB060020@l */
/* 805E83D4  39 C3 00 03 */	addi r14, r3, 0x0003 /* 0xDA380003@l */
/* 805E83D8  3A C0 00 00 */	li r22, 0
lbl_805E83DC:
/* 805E83DC  88 1F 00 00 */	lbz r0, 0(r31)
/* 805E83E0  3A F9 00 50 */	addi r23, r25, 0x50
/* 805E83E4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 805E83E8  38 60 00 00 */	li r3, 0
/* 805E83EC  1C 00 00 24 */	mulli r0, r0, 0x24
/* 805E83F0  C0 7A 00 00 */	lfs f3, 0(r26)
/* 805E83F4  FC 40 08 90 */	fmr f2, f1
/* 805E83F8  7E F7 02 14 */	add r23, r23, r0
/* 805E83FC  4B E2 3F F1 */	bl Matrix_scale
/* 805E8400  C0 17 00 08 */	lfs f0, 8(r23)
/* 805E8404  FC 20 E0 90 */	fmr f1, f28
/* 805E8408  C0 7C 00 00 */	lfs f3, 0(r28)
/* 805E840C  38 60 00 01 */	li r3, 1
/* 805E8410  EC 5B 00 2A */	fadds f2, f27, f0
/* 805E8414  4B E2 3E ED */	bl Matrix_translate
/* 805E8418  7C 16 A0 00 */	cmpw r22, r20
/* 805E841C  40 82 00 1C */	bne lbl_805E8438
/* 805E8420  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064B5CC@ha */
/* 805E8424  FC 20 D0 90 */	fmr f1, f26
/* 805E8428  C0 63 B5 CC */	lfs f3, lit_541@l(r3)  /* 0x8064B5CC@l */
/* 805E842C  FC 40 D0 90 */	fmr f2, f26
/* 805E8430  38 60 00 01 */	li r3, 1
/* 805E8434  4B E2 3F B9 */	bl Matrix_scale
lbl_805E8438:
/* 805E8438  93 B2 00 00 */	stw r29, 0(r18)
/* 805E843C  7C 16 A8 50 */	subf r0, r22, r21
/* 805E8440  7C 00 00 34 */	cntlzw r0, r0
/* 805E8444  7F 03 C3 78 */	mr r3, r24
/* 805E8448  80 B7 00 10 */	lwz r5, 0x10(r23)
/* 805E844C  54 04 E8 FA */	rlwinm r4, r0, 0x1d, 3, 0x1d
/* 805E8450  80 D7 00 0C */	lwz r6, 0xc(r23)
/* 805E8454  54 A0 82 1E */	rlwinm r0, r5, 0x10, 8, 0xf
/* 805E8458  80 F7 00 14 */	lwz r7, 0x14(r23)
/* 805E845C  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 805E8460  50 E0 44 2E */	rlwimi r0, r7, 8, 0x10, 0x17
/* 805E8464  60 00 00 FF */	ori r0, r0, 0xff
/* 805E8468  90 12 00 04 */	stw r0, 4(r18)
/* 805E846C  3C 00 FB 00 */	lis r0, 0xfb00
/* 805E8470  90 12 00 08 */	stw r0, 8(r18)
/* 805E8474  80 17 00 1C */	lwz r0, 0x1c(r23)
/* 805E8478  80 B7 00 18 */	lwz r5, 0x18(r23)
/* 805E847C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805E8480  80 D7 00 20 */	lwz r6, 0x20(r23)
/* 805E8484  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 805E8488  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 805E848C  60 00 00 FF */	ori r0, r0, 0xff
/* 805E8490  90 12 00 0C */	stw r0, 0xc(r18)
/* 805E8494  93 D2 00 10 */	stw r30, 0x10(r18)
/* 805E8498  80 B7 00 00 */	lwz r5, 0(r23)
/* 805E849C  7C 05 20 2E */	lwzx r0, r5, r4
/* 805E84A0  90 12 00 14 */	stw r0, 0x14(r18)
/* 805E84A4  91 D2 00 18 */	stw r14, 0x18(r18)
/* 805E84A8  4B E2 4F 2D */	bl _Matrix_to_Mtx_new
/* 805E84AC  90 72 00 1C */	stw r3, 0x1c(r18)
/* 805E84B0  3C 00 DE 00 */	lis r0, 0xde00
/* 805E84B4  2C 16 00 07 */	cmpwi r22, 7
/* 805E84B8  90 12 00 20 */	stw r0, 0x20(r18)
/* 805E84BC  80 77 00 00 */	lwz r3, 0(r23)
/* 805E84C0  80 03 00 08 */	lwz r0, 8(r3)
/* 805E84C4  90 12 00 24 */	stw r0, 0x24(r18)
/* 805E84C8  3A 52 00 28 */	addi r18, r18, 0x28
/* 805E84CC  40 82 00 18 */	bne lbl_805E84E4
/* 805E84D0  3C 60 80 65 */	lis r3, lit_709@ha /* 0x8064B5E4@ha */
/* 805E84D4  FF 80 F8 90 */	fmr f28, f31
/* 805E84D8  C0 03 B5 E4 */	lfs f0, lit_709@l(r3)  /* 0x8064B5E4@l */
/* 805E84DC  EF 7B 00 2A */	fadds f27, f27, f0
/* 805E84E0  48 00 00 10 */	b lbl_805E84F0
lbl_805E84E4:
/* 805E84E4  3C 60 80 65 */	lis r3, lit_717@ha /* 0x8064B604@ha */
/* 805E84E8  C0 03 B6 04 */	lfs f0, lit_717@l(r3)  /* 0x8064B604@l */
/* 805E84EC  EF 9C 00 2A */	fadds f28, f28, f0
lbl_805E84F0:
/* 805E84F0  3A D6 00 01 */	addi r22, r22, 1
/* 805E84F4  3B FF 00 01 */	addi r31, r31, 1
/* 805E84F8  2C 16 00 10 */	cmpwi r22, 0x10
/* 805E84FC  41 80 FE E0 */	blt lbl_805E83DC
/* 805E8500  3C 00 DE 00 */	lis r0, 0xde00
/* 805E8504  3A D9 02 DC */	addi r22, r25, 0x2dc
/* 805E8508  3C 60 80 AF */	lis r3, onp_hyouji_moji_mode@ha /* 0x80AEF8D8@ha */
/* 805E850C  90 12 00 00 */	stw r0, 0(r18)
/* 805E8510  38 03 F8 D8 */	addi r0, r3, onp_hyouji_moji_mode@l /* 0x80AEF8D8@l */
/* 805E8514  7E 7B 9B 78 */	mr r27, r19
/* 805E8518  90 12 00 04 */	stw r0, 4(r18)
/* 805E851C  3C 60 80 AF */	lis r3, onp_hyouji_moji1T_model@ha /* 0x80AEF888@ha */
/* 805E8520  39 C3 F8 88 */	addi r14, r3, onp_hyouji_moji1T_model@l /* 0x80AEF888@l */
/* 805E8524  3A E0 00 00 */	li r23, 0
/* 805E8528  3A 52 00 08 */	addi r18, r18, 8
/* 805E852C  3A D6 00 0C */	addi r22, r22, 0xc
lbl_805E8530:
/* 805E8530  7C 17 A8 00 */	cmpw r23, r21
/* 805E8534  41 82 00 F8 */	beq lbl_805E862C
/* 805E8538  3C 60 80 65 */	lis r3, lit_704@ha /* 0x8064B5D0@ha */
/* 805E853C  88 1B 00 00 */	lbz r0, 0(r27)
/* 805E8540  38 83 B5 D0 */	addi r4, r3, lit_704@l /* 0x8064B5D0@l */
/* 805E8544  3B 59 00 50 */	addi r26, r25, 0x50
/* 805E8548  C0 24 00 00 */	lfs f1, 0(r4)
/* 805E854C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 805E8550  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064B5CC@ha */
/* 805E8554  FC 40 08 90 */	fmr f2, f1
/* 805E8558  C0 63 B5 CC */	lfs f3, lit_541@l(r3)  /* 0x8064B5CC@l */
/* 805E855C  38 60 00 00 */	li r3, 0
/* 805E8560  7F 5A 02 14 */	add r26, r26, r0
/* 805E8564  4B E2 3E 89 */	bl Matrix_scale
/* 805E8568  80 BA 00 00 */	lwz r5, 0(r26)
/* 805E856C  3C 60 80 65 */	lis r3, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E8570  38 83 B5 C4 */	addi r4, r3, data_8064B5C4@l /* 0x8064B5C4@l */
/* 805E8574  C0 5A 00 08 */	lfs f2, 8(r26)
/* 805E8578  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 805E857C  38 60 00 01 */	li r3, 1
/* 805E8580  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 805E8584  EC 1D 00 2A */	fadds f0, f29, f0
/* 805E8588  C0 64 00 00 */	lfs f3, 0(r4)
/* 805E858C  EC 3E 08 2A */	fadds f1, f30, f1
/* 805E8590  EC 42 00 2A */	fadds f2, f2, f0
/* 805E8594  4B E2 3D 6D */	bl Matrix_translate
/* 805E8598  7C 17 A0 00 */	cmpw r23, r20
/* 805E859C  40 82 00 24 */	bne lbl_805E85C0
/* 805E85A0  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064B5CC@ha */
/* 805E85A4  FC 20 D0 90 */	fmr f1, f26
/* 805E85A8  C0 63 B5 CC */	lfs f3, lit_541@l(r3)  /* 0x8064B5CC@l */
/* 805E85AC  FC 40 D0 90 */	fmr f2, f26
/* 805E85B0  38 60 00 01 */	li r3, 1
/* 805E85B4  4B E2 3E 39 */	bl Matrix_scale
/* 805E85B8  38 F9 02 DC */	addi r7, r25, 0x2dc
/* 805E85BC  48 00 00 08 */	b lbl_805E85C4
lbl_805E85C0:
/* 805E85C0  7E C7 B3 78 */	mr r7, r22
lbl_805E85C4:
/* 805E85C4  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805E85C8  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060024@ha */
/* 805E85CC  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805E85D0  90 12 00 00 */	stw r0, 0(r18)
/* 805E85D4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E85D8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E85DC  38 84 00 24 */	addi r4, r4, 0x0024 /* 0xDB060024@l */
/* 805E85E0  80 A7 00 04 */	lwz r5, 4(r7)
/* 805E85E4  7F 03 C3 78 */	mr r3, r24
/* 805E85E8  80 C7 00 00 */	lwz r6, 0(r7)
/* 805E85EC  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 805E85F0  80 E7 00 08 */	lwz r7, 8(r7)
/* 805E85F4  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 805E85F8  50 E5 44 2E */	rlwimi r5, r7, 8, 0x10, 0x17
/* 805E85FC  60 A5 00 FF */	ori r5, r5, 0xff
/* 805E8600  90 B2 00 04 */	stw r5, 4(r18)
/* 805E8604  90 92 00 08 */	stw r4, 8(r18)
/* 805E8608  80 9A 00 04 */	lwz r4, 4(r26)
/* 805E860C  90 92 00 0C */	stw r4, 0xc(r18)
/* 805E8610  90 12 00 10 */	stw r0, 0x10(r18)
/* 805E8614  4B E2 4D C1 */	bl _Matrix_to_Mtx_new
/* 805E8618  90 72 00 14 */	stw r3, 0x14(r18)
/* 805E861C  3C 00 DE 00 */	lis r0, 0xde00
/* 805E8620  90 12 00 18 */	stw r0, 0x18(r18)
/* 805E8624  91 D2 00 1C */	stw r14, 0x1c(r18)
/* 805E8628  3A 52 00 20 */	addi r18, r18, 0x20
lbl_805E862C:
/* 805E862C  2C 17 00 07 */	cmpwi r23, 7
/* 805E8630  40 82 00 18 */	bne lbl_805E8648
/* 805E8634  3C 60 80 65 */	lis r3, lit_709@ha /* 0x8064B5E4@ha */
/* 805E8638  FF C0 F8 90 */	fmr f30, f31
/* 805E863C  C0 03 B5 E4 */	lfs f0, lit_709@l(r3)  /* 0x8064B5E4@l */
/* 805E8640  EF BD 00 2A */	fadds f29, f29, f0
/* 805E8644  48 00 00 10 */	b lbl_805E8654
lbl_805E8648:
/* 805E8648  3C 60 80 65 */	lis r3, lit_717@ha /* 0x8064B604@ha */
/* 805E864C  C0 03 B6 04 */	lfs f0, lit_717@l(r3)  /* 0x8064B604@l */
/* 805E8650  EF DE 00 2A */	fadds f30, f30, f0
lbl_805E8654:
/* 805E8654  3A F7 00 01 */	addi r23, r23, 1
/* 805E8658  3B 7B 00 01 */	addi r27, r27, 1
/* 805E865C  2C 17 00 10 */	cmpwi r23, 0x10
/* 805E8660  41 80 FE D0 */	blt lbl_805E8530
/* 805E8664  92 58 02 D0 */	stw r18, 0x2d0(r24)
/* 805E8668  80 10 00 04 */	lwz r0, 4(r16)
/* 805E866C  2C 00 00 03 */	cmpwi r0, 3
/* 805E8670  40 82 03 A4 */	bne lbl_805E8A14
/* 805E8674  FC 20 BA 10 */	fabs f1, f23
/* 805E8678  3C 60 80 65 */	lis r3, lit_718@ha /* 0x8064B608@ha */
/* 805E867C  C0 03 B6 08 */	lfs f0, lit_718@l(r3)  /* 0x8064B608@l */
/* 805E8680  FC 20 08 18 */	frsp f1, f1
/* 805E8684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E8688  41 80 03 8C */	blt lbl_805E8A14
/* 805E868C  81 D8 02 D0 */	lwz r14, 0x2d0(r24)
/* 805E8690  3C 00 DE 00 */	lis r0, 0xde00
/* 805E8694  3C 80 80 65 */	lis r4, lit_704@ha /* 0x8064B5D0@ha */
/* 805E8698  3C 60 80 B3 */	lis r3, sen_item2_DL_mode@ha /* 0x80B29C60@ha */
/* 805E869C  90 0E 00 00 */	stw r0, 0(r14)
/* 805E86A0  38 03 9C 60 */	addi r0, r3, sen_item2_DL_mode@l /* 0x80B29C60@l */
/* 805E86A4  C0 24 B5 D0 */	lfs f1, lit_704@l(r4)  /* 0x8064B5D0@l */
/* 805E86A8  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064B5CC@ha */
/* 805E86AC  3C A0 E2 00 */	lis r5, 0xE200 /* 0xE2001E01@ha */
/* 805E86B0  90 0E 00 04 */	stw r0, 4(r14)
/* 805E86B4  38 05 1E 01 */	addi r0, r5, 0x1E01 /* 0xE2001E01@l */
/* 805E86B8  C0 63 B5 CC */	lfs f3, lit_541@l(r3)  /* 0x8064B5CC@l */
/* 805E86BC  90 0E 00 08 */	stw r0, 8(r14)
/* 805E86C0  38 00 00 01 */	li r0, 1
/* 805E86C4  3C 80 F9 00 */	lis r4, 0xf900
/* 805E86C8  FC 40 08 90 */	fmr f2, f1
/* 805E86CC  90 0E 00 0C */	stw r0, 0xc(r14)
/* 805E86D0  38 00 FF 28 */	li r0, -216
/* 805E86D4  38 60 00 00 */	li r3, 0
/* 805E86D8  90 8E 00 10 */	stw r4, 0x10(r14)
/* 805E86DC  90 0E 00 14 */	stw r0, 0x14(r14)
/* 805E86E0  4B E2 3D 0D */	bl Matrix_scale
/* 805E86E4  3C 60 80 65 */	lis r3, lit_719@ha /* 0x8064B60C@ha */
/* 805E86E8  3C 80 80 65 */	lis r4, lit_720@ha /* 0x8064B610@ha */
/* 805E86EC  38 A3 B6 0C */	addi r5, r3, lit_719@l /* 0x8064B60C@l */
/* 805E86F0  C0 04 B6 10 */	lfs f0, lit_720@l(r4)  /* 0x8064B610@l */
/* 805E86F4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E86F8  3C 60 80 65 */	lis r3, lit_721@ha /* 0x8064B614@ha */
/* 805E86FC  EF 00 C0 2A */	fadds f24, f0, f24
/* 805E8700  C0 63 B6 14 */	lfs f3, lit_721@l(r3)  /* 0x8064B614@l */
/* 805E8704  EF 21 C8 2A */	fadds f25, f1, f25
/* 805E8708  38 60 00 01 */	li r3, 1
/* 805E870C  FC 40 C0 90 */	fmr f2, f24
/* 805E8710  FC 20 C8 90 */	fmr f1, f25
/* 805E8714  4B E2 3B ED */	bl Matrix_translate
/* 805E8718  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064B5CC@ha */
/* 805E871C  FC 20 B8 90 */	fmr f1, f23
/* 805E8720  C0 63 B5 CC */	lfs f3, lit_541@l(r3)  /* 0x8064B5CC@l */
/* 805E8724  FC 40 B8 90 */	fmr f2, f23
/* 805E8728  38 60 00 01 */	li r3, 1
/* 805E872C  4B E2 3C C1 */	bl Matrix_scale
/* 805E8730  4B E2 3A A5 */	bl Matrix_push
/* 805E8734  3C C0 80 65 */	lis r6, lit_704@ha /* 0x8064B5D0@ha */
/* 805E8738  3C A0 80 65 */	lis r5, lit_722@ha /* 0x8064B618@ha */
/* 805E873C  3C 80 80 65 */	lis r4, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E8740  C0 26 B5 D0 */	lfs f1, lit_704@l(r6)  /* 0x8064B5D0@l */
/* 805E8744  C0 45 B6 18 */	lfs f2, lit_722@l(r5)  /* 0x8064B618@l */
/* 805E8748  38 60 00 01 */	li r3, 1
/* 805E874C  C0 64 B5 C4 */	lfs f3, data_8064B5C4@l(r4)  /* 0x8064B5C4@l */
/* 805E8750  4B E2 3B B1 */	bl Matrix_translate
/* 805E8754  3C C0 80 65 */	lis r6, lit_723@ha /* 0x8064B61C@ha */
/* 805E8758  3C A0 80 65 */	lis r5, lit_724@ha /* 0x8064B620@ha */
/* 805E875C  3C 80 80 65 */	lis r4, lit_541@ha /* 0x8064B5CC@ha */
/* 805E8760  C0 26 B6 1C */	lfs f1, lit_723@l(r6)  /* 0x8064B61C@l */
/* 805E8764  C0 45 B6 20 */	lfs f2, lit_724@l(r5)  /* 0x8064B620@l */
/* 805E8768  38 60 00 01 */	li r3, 1
/* 805E876C  C0 64 B5 CC */	lfs f3, lit_541@l(r4)  /* 0x8064B5CC@l */
/* 805E8770  4B E2 3C 7D */	bl Matrix_scale
/* 805E8774  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805E8778  7F 03 C3 78 */	mr r3, r24
/* 805E877C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805E8780  90 0E 00 18 */	stw r0, 0x18(r14)
/* 805E8784  4B E2 4C 51 */	bl _Matrix_to_Mtx_new
/* 805E8788  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 805E878C  90 6E 00 1C */	stw r3, 0x1c(r14)
/* 805E8790  38 04 00 80 */	addi r0, r4, 0x0080 /* 0xFA000080@l */
/* 805E8794  3C 60 E2 00 */	lis r3, 0xE200 /* 0xE1FFAFFF@ha */
/* 805E8798  90 0E 00 20 */	stw r0, 0x20(r14)
/* 805E879C  38 03 AF FF */	addi r0, r3, 0xAFFF /* 0xE1FFAFFF@l */
/* 805E87A0  3C 80 00 FF */	lis r4, 0x00FF /* 0x00FF28FF@ha */
/* 805E87A4  3C 60 80 B3 */	lis r3, sen_win_wakuT_model@ha /* 0x80B2E638@ha */
/* 805E87A8  90 0E 00 24 */	stw r0, 0x24(r14)
/* 805E87AC  3C 00 FB 00 */	lis r0, 0xfb00
/* 805E87B0  38 A4 28 FF */	addi r5, r4, 0x28FF /* 0x00FF28FF@l */
/* 805E87B4  3C 80 DE 00 */	lis r4, 0xde00
/* 805E87B8  90 0E 00 28 */	stw r0, 0x28(r14)
/* 805E87BC  38 03 E6 38 */	addi r0, r3, sen_win_wakuT_model@l /* 0x80B2E638@l */
/* 805E87C0  90 AE 00 2C */	stw r5, 0x2c(r14)
/* 805E87C4  90 8E 00 30 */	stw r4, 0x30(r14)
/* 805E87C8  90 0E 00 34 */	stw r0, 0x34(r14)
/* 805E87CC  4B E2 3A 49 */	bl Matrix_pull
/* 805E87D0  A8 93 00 1C */	lha r4, 0x1c(r19)
/* 805E87D4  3C 00 43 30 */	lis r0, 0x4330
/* 805E87D8  3C C0 80 65 */	lis r6, lit_726@ha /* 0x8064B628@ha */
/* 805E87DC  3C E0 80 65 */	lis r7, lit_725@ha /* 0x8064B624@ha */
/* 805E87E0  38 84 00 01 */	addi r4, r4, 1
/* 805E87E4  3C 60 80 65 */	lis r3, lit_733@ha /* 0x8064B644@ha */
/* 805E87E8  54 85 20 36 */	slwi r5, r4, 4
/* 805E87EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E87F0  38 83 B6 44 */	addi r4, r3, lit_733@l /* 0x8064B644@l */
/* 805E87F4  C0 86 B6 28 */	lfs f4, lit_726@l(r6)  /* 0x8064B628@l */
/* 805E87F8  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 805E87FC  C8 44 00 00 */	lfd f2, 0(r4)
/* 805E8800  90 61 00 14 */	stw r3, 0x14(r1)
/* 805E8804  3C 60 80 65 */	lis r3, data_8064B5C4@ha /* 0x8064B5C4@ha */
/* 805E8808  38 83 B5 C4 */	addi r4, r3, data_8064B5C4@l /* 0x8064B5C4@l */
/* 805E880C  C0 27 B6 24 */	lfs f1, lit_725@l(r7)  /* 0x8064B624@l */
/* 805E8810  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E8814  38 60 00 01 */	li r3, 1
/* 805E8818  C0 64 00 00 */	lfs f3, 0(r4)
/* 805E881C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805E8820  EC 44 00 28 */	fsubs f2, f4, f0
/* 805E8824  4B E2 3A DD */	bl Matrix_translate
/* 805E8828  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805E882C  7F 03 C3 78 */	mr r3, r24
/* 805E8830  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805E8834  90 0E 00 38 */	stw r0, 0x38(r14)
/* 805E8838  4B E2 4B 9D */	bl _Matrix_to_Mtx_new
/* 805E883C  90 6E 00 3C */	stw r3, 0x3c(r14)
/* 805E8840  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805E8844  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805E8848  3C 80 80 65 */	lis r4, lit_728@ha /* 0x8064B630@ha */
/* 805E884C  3C 60 EB 3C */	lis r3, 0xEB3C /* 0xEB3C3CFF@ha */
/* 805E8850  90 0E 00 40 */	stw r0, 0x40(r14)
/* 805E8854  38 03 3C FF */	addi r0, r3, 0x3CFF /* 0xEB3C3CFF@l */
/* 805E8858  C0 24 B6 30 */	lfs f1, lit_728@l(r4)  /* 0x8064B630@l */
/* 805E885C  90 0E 00 44 */	stw r0, 0x44(r14)
/* 805E8860  3C 00 DE 00 */	lis r0, 0xde00
/* 805E8864  3C 60 80 65 */	lis r3, lit_730@ha /* 0x8064B638@ha */
/* 805E8868  EC 41 05 F2 */	fmuls f2, f1, f23
/* 805E886C  3C C0 80 B3 */	lis r6, sen_win_cursor_model@ha /* 0x80B2E5C0@ha */
/* 805E8870  90 0E 00 48 */	stw r0, 0x48(r14)
/* 805E8874  38 06 E5 C0 */	addi r0, r6, sen_win_cursor_model@l /* 0x80B2E5C0@l */
/* 805E8878  C0 03 B6 38 */	lfs f0, lit_730@l(r3)  /* 0x8064B638@l */
/* 805E887C  3C A0 E2 00 */	lis r5, 0xE200 /* 0xE2001E01@ha */
/* 805E8880  90 0E 00 4C */	stw r0, 0x4c(r14)
/* 805E8884  38 05 1E 01 */	addi r0, r5, 0x1E01 /* 0xE2001E01@l */
/* 805E8888  EC 20 05 F2 */	fmuls f1, f0, f23
/* 805E888C  3C A0 80 65 */	lis r5, lit_727@ha /* 0x8064B62C@ha */
/* 805E8890  90 0E 00 50 */	stw r0, 0x50(r14)
/* 805E8894  38 00 00 00 */	li r0, 0
/* 805E8898  38 C5 B6 2C */	addi r6, r5, lit_727@l /* 0x8064B62C@l */
/* 805E889C  3C 80 80 65 */	lis r4, lit_729@ha /* 0x8064B634@ha */
/* 805E88A0  90 0E 00 54 */	stw r0, 0x54(r14)
/* 805E88A4  39 CE 00 58 */	addi r14, r14, 0x58
/* 805E88A8  3C 00 F9 00 */	lis r0, 0xf900
/* 805E88AC  3C 60 80 65 */	lis r3, lit_731@ha /* 0x8064B63C@ha */
/* 805E88B0  90 0E 00 00 */	stw r0, 0(r14)
/* 805E88B4  38 00 FF 08 */	li r0, -248
/* 805E88B8  38 A4 B6 34 */	addi r5, r4, lit_729@l /* 0x8064B634@l */
/* 805E88BC  38 83 B6 3C */	addi r4, r3, lit_731@l /* 0x8064B63C@l */
/* 805E88C0  90 0E 00 04 */	stw r0, 4(r14)
/* 805E88C4  39 CE 00 08 */	addi r14, r14, 8
/* 805E88C8  EC 79 10 2A */	fadds f3, f25, f2
/* 805E88CC  C0 04 00 00 */	lfs f0, 0(r4)
/* 805E88D0  91 D8 02 D0 */	stw r14, 0x2d0(r24)
/* 805E88D4  EC 38 08 2A */	fadds f1, f24, f1
/* 805E88D8  C0 86 00 00 */	lfs f4, 0(r6)
/* 805E88DC  EF 40 05 F2 */	fmuls f26, f0, f23
/* 805E88E0  80 6F 00 2C */	lwz r3, 0x2c(r15)
/* 805E88E4  EF 04 18 2A */	fadds f24, f4, f3
/* 805E88E8  C0 45 00 00 */	lfs f2, 0(r5)
/* 805E88EC  81 83 09 50 */	lwz r12, 0x950(r3)
/* 805E88F0  7F 03 C3 78 */	mr r3, r24
/* 805E88F4  EF 22 08 28 */	fsubs f25, f2, f1
/* 805E88F8  7D 89 03 A6 */	mtctr r12
/* 805E88FC  4E 80 04 21 */	bctrl 
/* 805E8900  38 00 00 01 */	li r0, 1
/* 805E8904  FC 20 C0 90 */	fmr f1, f24
/* 805E8908  90 01 00 08 */	stw r0, 8(r1)
/* 805E890C  38 00 00 00 */	li r0, 0
/* 805E8910  FC 40 C8 90 */	fmr f2, f25
/* 805E8914  7E 23 8B 78 */	mr r3, r17
/* 805E8918  FC 60 D0 90 */	fmr f3, f26
/* 805E891C  FC 80 D0 90 */	fmr f4, f26
/* 805E8920  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E8924  38 99 02 90 */	addi r4, r25, 0x290
/* 805E8928  38 A0 00 0D */	li r5, 0xd
/* 805E892C  38 C0 00 FF */	li r6, 0xff
/* 805E8930  38 E0 00 3C */	li r7, 0x3c
/* 805E8934  39 00 00 3C */	li r8, 0x3c
/* 805E8938  39 20 00 FF */	li r9, 0xff
/* 805E893C  39 40 00 00 */	li r10, 0
/* 805E8940  4B DC 77 69 */	bl mFont_SetLineStrings
/* 805E8944  3C 60 80 65 */	lis r3, lit_704@ha /* 0x8064B5D0@ha */
/* 805E8948  A8 93 00 1C */	lha r4, 0x1c(r19)
/* 805E894C  C0 03 B5 D0 */	lfs f0, lit_704@l(r3)  /* 0x8064B5D0@l */
/* 805E8950  38 00 00 01 */	li r0, 1
/* 805E8954  7C 83 00 34 */	cntlzw r3, r4
/* 805E8958  90 01 00 08 */	stw r0, 8(r1)
/* 805E895C  EE E0 05 F2 */	fmuls f23, f0, f23
/* 805E8960  54 63 D9 7E */	srwi r3, r3, 5
/* 805E8964  38 00 00 00 */	li r0, 0
/* 805E8968  38 99 02 F4 */	addi r4, r25, 0x2f4
/* 805E896C  1C 63 00 0C */	mulli r3, r3, 0xc
/* 805E8970  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E8974  EF 39 B8 2A */	fadds f25, f25, f23
/* 805E8978  38 A0 00 03 */	li r5, 3
/* 805E897C  7C 84 1A 14 */	add r4, r4, r3
/* 805E8980  FC 20 C0 90 */	fmr f1, f24
/* 805E8984  FC 60 D0 90 */	fmr f3, f26
/* 805E8988  80 C4 00 00 */	lwz r6, 0(r4)
/* 805E898C  FC 80 D0 90 */	fmr f4, f26
/* 805E8990  80 E4 00 04 */	lwz r7, 4(r4)
/* 805E8994  81 04 00 08 */	lwz r8, 8(r4)
/* 805E8998  FC 40 C8 90 */	fmr f2, f25
/* 805E899C  7E 23 8B 78 */	mr r3, r17
/* 805E89A0  38 99 02 A0 */	addi r4, r25, 0x2a0
/* 805E89A4  39 20 00 FF */	li r9, 0xff
/* 805E89A8  39 40 00 00 */	li r10, 0
/* 805E89AC  4B DC 76 FD */	bl mFont_SetLineStrings
/* 805E89B0  A8 93 00 1C */	lha r4, 0x1c(r19)
/* 805E89B4  38 60 00 01 */	li r3, 1
/* 805E89B8  EF 39 B8 2A */	fadds f25, f25, f23
/* 805E89BC  38 00 00 00 */	li r0, 0
/* 805E89C0  20 84 00 01 */	subfic r4, r4, 1
/* 805E89C4  90 61 00 08 */	stw r3, 8(r1)
/* 805E89C8  7C 83 00 34 */	cntlzw r3, r4
/* 805E89CC  39 19 02 F4 */	addi r8, r25, 0x2f4
/* 805E89D0  54 63 D9 7E */	srwi r3, r3, 5
/* 805E89D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E89D8  1C 03 00 0C */	mulli r0, r3, 0xc
/* 805E89DC  FC 20 C0 90 */	fmr f1, f24
/* 805E89E0  FC 40 C8 90 */	fmr f2, f25
/* 805E89E4  7E 23 8B 78 */	mr r3, r17
/* 805E89E8  FC 60 D0 90 */	fmr f3, f26
/* 805E89EC  38 99 02 A4 */	addi r4, r25, 0x2a4
/* 805E89F0  7D 08 02 14 */	add r8, r8, r0
/* 805E89F4  FC 80 D0 90 */	fmr f4, f26
/* 805E89F8  80 C8 00 00 */	lwz r6, 0(r8)
/* 805E89FC  38 A0 00 02 */	li r5, 2
/* 805E8A00  80 E8 00 04 */	lwz r7, 4(r8)
/* 805E8A04  39 20 00 FF */	li r9, 0xff
/* 805E8A08  81 08 00 08 */	lwz r8, 8(r8)
/* 805E8A0C  39 40 00 00 */	li r10, 0
/* 805E8A10  4B DC 76 99 */	bl mFont_SetLineStrings
lbl_805E8A14:
/* 805E8A14  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 805E8A18  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 805E8A1C  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 805E8A20  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 805E8A24  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 805E8A28  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 805E8A2C  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 805E8A30  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 805E8A34  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 805E8A38  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 805E8A3C  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 805E8A40  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 805E8A44  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 805E8A48  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 805E8A4C  E3 01 00 78 */	psq_l f24, 120(r1), 0, 0 /* qr0 */
/* 805E8A50  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 805E8A54  E2 E1 00 68 */	psq_l f23, 104(r1), 0, 0 /* qr0 */
/* 805E8A58  39 61 00 60 */	addi r11, r1, 0x60
/* 805E8A5C  CA E1 00 60 */	lfd f23, 0x60(r1)
/* 805E8A60  4B AB 24 85 */	bl __restore_gpr
/* 805E8A64  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 805E8A68  7C 08 03 A6 */	mtlr r0
/* 805E8A6C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 805E8A70  4E 80 00 20 */	blr 
