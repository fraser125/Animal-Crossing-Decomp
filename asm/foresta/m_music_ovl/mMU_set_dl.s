lbl_805E8F64:
/* 805E8F64  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805E8F68  7C 08 02 A6 */	mflr r0
/* 805E8F6C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E8F70  39 61 00 60 */	addi r11, r1, 0x60
/* 805E8F74  4B AB 1F 31 */	bl func_8009AEA4
/* 805E8F78  3C E0 80 65 */	lis r7, lit_560@ha /* 0x8064B658@ha */
/* 805E8F7C  3C C0 80 65 */	lis r6, lit_561@ha /* 0x8064B65C@ha */
/* 805E8F80  C0 27 B6 58 */	lfs f1, lit_560@l(r7)  /* 0x8064B658@l */
/* 805E8F84  7C 7B 1B 78 */	mr r27, r3
/* 805E8F88  83 E5 00 00 */	lwz r31, 0(r5)
/* 805E8F8C  7C BD 2B 78 */	mr r29, r5
/* 805E8F90  FC 40 08 90 */	fmr f2, f1
/* 805E8F94  C0 66 B6 5C */	lfs f3, lit_561@l(r6)  /* 0x8064B65C@l */
/* 805E8F98  7C 9C 23 78 */	mr r28, r4
/* 805E8F9C  38 60 00 00 */	li r3, 0
/* 805E8FA0  4B E2 34 4D */	bl Matrix_scale
/* 805E8FA4  3C 60 80 65 */	lis r3, lit_562@ha /* 0x8064B660@ha */
/* 805E8FA8  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 805E8FAC  C0 63 B6 60 */	lfs f3, lit_562@l(r3)  /* 0x8064B660@l */
/* 805E8FB0  38 60 00 01 */	li r3, 1
/* 805E8FB4  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 805E8FB8  4B E2 33 49 */	bl Matrix_translate
/* 805E8FBC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E8FC0  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805E8FC4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E8FC8  7F E3 FB 78 */	mr r3, r31
/* 805E8FCC  90 1E 00 00 */	stw r0, 0(r30)
/* 805E8FD0  4B E2 44 05 */	bl _Matrix_to_Mtx_new
/* 805E8FD4  90 7E 00 04 */	stw r3, 4(r30)
/* 805E8FD8  3C 00 DE 00 */	lis r0, 0xde00
/* 805E8FDC  3C 80 80 B1 */	lis r4, mus_win_model_before@ha /* 0x80B0BA90@ha */
/* 805E8FE0  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064B650@ha */
/* 805E8FE4  90 1E 00 08 */	stw r0, 8(r30)
/* 805E8FE8  39 43 B6 50 */	addi r10, r3, lit_445@l /* 0x8064B650@l */
/* 805E8FEC  38 84 BA 90 */	addi r4, r4, mus_win_model_before@l /* 0x80B0BA90@l */
/* 805E8FF0  3D 20 80 B1 */	lis r9, mus_win_model@ha /* 0x80B0BAD8@ha */
/* 805E8FF4  90 9E 00 0C */	stw r4, 0xc(r30)
/* 805E8FF8  3C 60 80 65 */	lis r3, lit_560@ha /* 0x8064B658@ha */
/* 805E8FFC  38 83 B6 58 */	addi r4, r3, lit_560@l /* 0x8064B658@l */
/* 805E9000  3D 00 80 B1 */	lis r8, mus_win_ueT_model@ha /* 0x80B0B958@ha */
/* 805E9004  81 7B 00 2C */	lwz r11, 0x2c(r27)
/* 805E9008  3C E0 80 B1 */	lis r7, mus_win_ue2T_model@ha /* 0x80B0BA48@ha */
/* 805E900C  3C C0 80 B1 */	lis r6, mus_tag_nes_model@ha /* 0x80B0BFA0@ha */
/* 805E9010  C0 8A 00 00 */	lfs f4, 0(r10)
/* 805E9014  C0 2B 09 34 */	lfs f1, 0x934(r11)
/* 805E9018  3C A0 80 B1 */	lis r5, mus_icon_model_before@ha /* 0x80B082A0@ha */
/* 805E901C  C0 0B 09 38 */	lfs f0, 0x938(r11)
/* 805E9020  39 29 BA D8 */	addi r9, r9, mus_win_model@l /* 0x80B0BAD8@l */
/* 805E9024  FC 40 08 50 */	fneg f2, f1
/* 805E9028  C0 24 00 00 */	lfs f1, 0(r4)
/* 805E902C  FC 00 00 50 */	fneg f0, f0
/* 805E9030  38 85 82 A0 */	addi r4, r5, mus_icon_model_before@l /* 0x80B082A0@l */
/* 805E9034  39 08 B9 58 */	addi r8, r8, mus_win_ueT_model@l /* 0x80B0B958@l */
/* 805E9038  38 E7 BA 48 */	addi r7, r7, mus_win_ue2T_model@l /* 0x80B0BA48@l */
/* 805E903C  EC 64 00 B2 */	fmuls f3, f4, f2
/* 805E9040  38 C6 BF A0 */	addi r6, r6, mus_tag_nes_model@l /* 0x80B0BFA0@l */
/* 805E9044  EC 04 00 32 */	fmuls f0, f4, f0
/* 805E9048  3C 60 80 65 */	lis r3, lit_561@ha /* 0x8064B65C@ha */
/* 805E904C  FC 40 08 90 */	fmr f2, f1
/* 805E9050  FC 80 18 1E */	fctiwz f4, f3
/* 805E9054  FC 00 00 1E */	fctiwz f0, f0
/* 805E9058  C0 63 B6 5C */	lfs f3, lit_561@l(r3)  /* 0x8064B65C@l */
/* 805E905C  38 60 00 00 */	li r3, 0
/* 805E9060  D8 81 00 08 */	stfd f4, 8(r1)
/* 805E9064  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805E9068  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E906C  54 A5 53 AA */	rlwinm r5, r5, 0xa, 0xe, 0x15
/* 805E9070  64 AA F2 00 */	oris r10, r5, 0xf200
/* 805E9074  81 61 00 14 */	lwz r11, 0x14(r1)
/* 805E9078  61 4A 00 1F */	ori r10, r10, 0x1f
/* 805E907C  55 65 53 AA */	rlwinm r5, r11, 0xa, 0xe, 0x15
/* 805E9080  91 5E 00 10 */	stw r10, 0x10(r30)
/* 805E9084  64 A5 80 00 */	oris r5, r5, 0x8000
/* 805E9088  60 A5 00 1F */	ori r5, r5, 0x1f
/* 805E908C  90 BE 00 14 */	stw r5, 0x14(r30)
/* 805E9090  90 1E 00 18 */	stw r0, 0x18(r30)
/* 805E9094  91 3E 00 1C */	stw r9, 0x1c(r30)
/* 805E9098  90 1E 00 20 */	stw r0, 0x20(r30)
/* 805E909C  91 1E 00 24 */	stw r8, 0x24(r30)
/* 805E90A0  90 1E 00 28 */	stw r0, 0x28(r30)
/* 805E90A4  90 FE 00 2C */	stw r7, 0x2c(r30)
/* 805E90A8  90 1E 00 30 */	stw r0, 0x30(r30)
/* 805E90AC  90 DE 00 34 */	stw r6, 0x34(r30)
/* 805E90B0  90 1E 00 38 */	stw r0, 0x38(r30)
/* 805E90B4  90 9E 00 3C */	stw r4, 0x3c(r30)
/* 805E90B8  3B DE 00 40 */	addi r30, r30, 0x40
/* 805E90BC  4B E2 33 31 */	bl Matrix_scale
/* 805E90C0  3C 60 80 65 */	lis r3, lit_563@ha /* 0x8064B664@ha */
/* 805E90C4  3C 80 80 65 */	lis r4, lit_564@ha /* 0x8064B668@ha */
/* 805E90C8  38 C3 B6 64 */	addi r6, r3, lit_563@l /* 0x8064B664@l */
/* 805E90CC  3C 60 80 65 */	lis r3, lit_562@ha /* 0x8064B660@ha */
/* 805E90D0  38 A4 B6 68 */	addi r5, r4, lit_564@l /* 0x8064B668@l */
/* 805E90D4  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 805E90D8  C0 26 00 00 */	lfs f1, 0(r6)
/* 805E90DC  38 83 B6 60 */	addi r4, r3, lit_562@l /* 0x8064B660@l */
/* 805E90E0  C0 45 00 00 */	lfs f2, 0(r5)
/* 805E90E4  38 60 00 01 */	li r3, 1
/* 805E90E8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 805E90EC  EC 23 08 28 */	fsubs f1, f3, f1
/* 805E90F0  C0 64 00 00 */	lfs f3, 0(r4)
/* 805E90F4  EC 42 00 2A */	fadds f2, f2, f0
/* 805E90F8  4B E2 32 09 */	bl Matrix_translate
/* 805E90FC  3D 00 80 B1 */	lis r8, mus_icon_model@ha /* 0x80B082E0@ha */
/* 805E9100  3C C0 80 65 */	lis r6, lit_565@ha /* 0x8064B66C@ha */
/* 805E9104  3C A0 80 65 */	lis r5, data_8064B64C@ha /* 0x8064B64C@ha */
/* 805E9108  3C 80 80 65 */	lis r4, lit_566@ha /* 0x8064B670@ha */
/* 805E910C  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064B674@ha */
/* 805E9110  3C E0 DA 38 */	lis r7, 0xDA38 /* 0xDA380003@ha */
/* 805E9114  3A 88 82 E0 */	addi r20, r8, mus_icon_model@l /* 0x80B082E0@l */
/* 805E9118  3B 26 B6 6C */	addi r25, r6, lit_565@l /* 0x8064B66C@l */
/* 805E911C  3B 05 B6 4C */	addi r24, r5, data_8064B64C@l /* 0x8064B64C@l */
/* 805E9120  3A E4 B6 70 */	addi r23, r4, lit_566@l /* 0x8064B670@l */
/* 805E9124  3A C3 B6 74 */	addi r22, r3, lit_567@l /* 0x8064B674@l */
/* 805E9128  3A A7 00 03 */	addi r21, r7, 0x0003 /* 0xDA380003@l */
/* 805E912C  3A 40 00 00 */	li r18, 0
/* 805E9130  3A 20 2A 00 */	li r17, 0x2a00
/* 805E9134  3F 40 DE 00 */	lis r26, 0xde00
lbl_805E9138:
/* 805E9138  3A 60 00 00 */	li r19, 0
lbl_805E913C:
/* 805E913C  7E 23 8B 78 */	mr r3, r17
/* 805E9140  4B FF FD 01 */	bl mMU_check_music_collect_bit
/* 805E9144  2C 03 00 00 */	cmpwi r3, 0
/* 805E9148  41 82 00 20 */	beq lbl_805E9168
/* 805E914C  92 BE 00 00 */	stw r21, 0(r30)
/* 805E9150  7F E3 FB 78 */	mr r3, r31
/* 805E9154  4B E2 42 81 */	bl _Matrix_to_Mtx_new
/* 805E9158  90 7E 00 04 */	stw r3, 4(r30)
/* 805E915C  93 5E 00 08 */	stw r26, 8(r30)
/* 805E9160  92 9E 00 0C */	stw r20, 0xc(r30)
/* 805E9164  3B DE 00 10 */	addi r30, r30, 0x10
lbl_805E9168:
/* 805E9168  C0 58 00 00 */	lfs f2, 0(r24)
/* 805E916C  38 60 00 01 */	li r3, 1
/* 805E9170  C0 39 00 00 */	lfs f1, 0(r25)
/* 805E9174  FC 60 10 90 */	fmr f3, f2
/* 805E9178  4B E2 31 89 */	bl Matrix_translate
/* 805E917C  3A 73 00 01 */	addi r19, r19, 1
/* 805E9180  3A 31 00 01 */	addi r17, r17, 1
/* 805E9184  2C 13 00 0B */	cmpwi r19, 0xb
/* 805E9188  41 80 FF B4 */	blt lbl_805E913C
/* 805E918C  C0 37 00 00 */	lfs f1, 0(r23)
/* 805E9190  38 60 00 01 */	li r3, 1
/* 805E9194  C0 56 00 00 */	lfs f2, 0(r22)
/* 805E9198  C0 78 00 00 */	lfs f3, 0(r24)
/* 805E919C  4B E2 31 65 */	bl Matrix_translate
/* 805E91A0  3A 52 00 01 */	addi r18, r18, 1
/* 805E91A4  2C 12 00 05 */	cmpwi r18, 5
/* 805E91A8  41 80 FF 90 */	blt lbl_805E9138
/* 805E91AC  3C 00 DE 00 */	lis r0, 0xde00
/* 805E91B0  3C 60 80 B0 */	lis r3, mus_mark_before@ha /* 0x80B07FA0@ha */
/* 805E91B4  90 1E 00 00 */	stw r0, 0(r30)
/* 805E91B8  38 03 7F A0 */	addi r0, r3, mus_mark_before@l /* 0x80B07FA0@l */
/* 805E91BC  38 60 00 14 */	li r3, 0x14
/* 805E91C0  90 1E 00 04 */	stw r0, 4(r30)
/* 805E91C4  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 805E91C8  7C 04 1B 96 */	divwu r0, r4, r3
/* 805E91CC  7C 00 19 D6 */	mullw r0, r0, r3
/* 805E91D0  7C 00 20 50 */	subf r0, r0, r4
/* 805E91D4  2C 00 00 0A */	cmpwi r0, 0xa
/* 805E91D8  40 81 00 08 */	ble lbl_805E91E0
/* 805E91DC  20 00 00 14 */	subfic r0, r0, 0x14
lbl_805E91E0:
/* 805E91E0  1C C0 00 09 */	mulli r6, r0, 9
/* 805E91E4  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805E91E8  3C 60 80 65 */	lis r3, lit_560@ha /* 0x8064B658@ha */
/* 805E91EC  38 E4 00 FF */	addi r7, r4, 0x00FF /* 0xFA0000FF@l */
/* 805E91F0  C0 23 B6 58 */	lfs f1, lit_560@l(r3)  /* 0x8064B658@l */
/* 805E91F4  1C A0 00 06 */	mulli r5, r0, 6
/* 805E91F8  38 86 00 5F */	addi r4, r6, 0x5f
/* 805E91FC  90 FE 00 08 */	stw r7, 8(r30)
/* 805E9200  7C C0 0E 70 */	srawi r0, r6, 1
/* 805E9204  FC 40 08 90 */	fmr f2, f1
/* 805E9208  54 86 82 1E */	rlwinm r6, r4, 0x10, 8, 0xf
/* 805E920C  7C 80 01 94 */	addze r4, r0
/* 805E9210  3C 60 80 65 */	lis r3, lit_561@ha /* 0x8064B65C@ha */
/* 805E9214  38 04 00 D2 */	addi r0, r4, 0xd2
/* 805E9218  C0 63 B6 5C */	lfs f3, lit_561@l(r3)  /* 0x8064B65C@l */
/* 805E921C  60 C4 00 FF */	ori r4, r6, 0xff
/* 805E9220  38 60 00 00 */	li r3, 0
/* 805E9224  90 9E 00 0C */	stw r4, 0xc(r30)
/* 805E9228  3C 80 FB 00 */	lis r4, 0xfb00
/* 805E922C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805E9230  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 805E9234  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805E9238  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 805E923C  60 00 00 FF */	ori r0, r0, 0xff
/* 805E9240  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805E9244  3B DE 00 18 */	addi r30, r30, 0x18
/* 805E9248  4B E2 31 A5 */	bl Matrix_scale
/* 805E924C  3C 60 80 65 */	lis r3, lit_563@ha /* 0x8064B664@ha */
/* 805E9250  3C 80 80 65 */	lis r4, lit_564@ha /* 0x8064B668@ha */
/* 805E9254  38 C3 B6 64 */	addi r6, r3, lit_563@l /* 0x8064B664@l */
/* 805E9258  3C 60 80 65 */	lis r3, lit_562@ha /* 0x8064B660@ha */
/* 805E925C  38 A4 B6 68 */	addi r5, r4, lit_564@l /* 0x8064B668@l */
/* 805E9260  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 805E9264  C0 26 00 00 */	lfs f1, 0(r6)
/* 805E9268  38 83 B6 60 */	addi r4, r3, lit_562@l /* 0x8064B660@l */
/* 805E926C  C0 45 00 00 */	lfs f2, 0(r5)
/* 805E9270  38 60 00 01 */	li r3, 1
/* 805E9274  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 805E9278  EC 23 08 28 */	fsubs f1, f3, f1
/* 805E927C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805E9280  EC 42 00 2A */	fadds f2, f2, f0
/* 805E9284  4B E2 30 7D */	bl Matrix_translate
/* 805E9288  3D 00 80 B1 */	lis r8, mus_mark_model@ha /* 0x80B08010@ha */
/* 805E928C  3C C0 80 65 */	lis r6, lit_565@ha /* 0x8064B66C@ha */
/* 805E9290  3C A0 80 65 */	lis r5, data_8064B64C@ha /* 0x8064B64C@ha */
/* 805E9294  3C 80 80 65 */	lis r4, lit_566@ha /* 0x8064B670@ha */
/* 805E9298  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064B674@ha */
/* 805E929C  3C E0 DA 38 */	lis r7, 0xDA38 /* 0xDA380003@ha */
/* 805E92A0  3A C8 80 10 */	addi r22, r8, mus_mark_model@l /* 0x80B08010@l */
/* 805E92A4  3B 26 B6 6C */	addi r25, r6, lit_565@l /* 0x8064B66C@l */
/* 805E92A8  3B 45 B6 4C */	addi r26, r5, data_8064B64C@l /* 0x8064B64C@l */
/* 805E92AC  3B A4 B6 70 */	addi r29, r4, lit_566@l /* 0x8064B670@l */
/* 805E92B0  3B 83 B6 74 */	addi r28, r3, lit_567@l /* 0x8064B674@l */
/* 805E92B4  3A E7 00 03 */	addi r23, r7, 0x0003 /* 0xDA380003@l */
/* 805E92B8  3A 60 00 00 */	li r19, 0
/* 805E92BC  3A 40 2A 00 */	li r18, 0x2a00
/* 805E92C0  3F 00 DE 00 */	lis r24, 0xde00
lbl_805E92C4:
/* 805E92C4  3A 80 00 00 */	li r20, 0
lbl_805E92C8:
/* 805E92C8  7F 63 DB 78 */	mr r3, r27
/* 805E92CC  7E 44 93 78 */	mr r4, r18
/* 805E92D0  4B FF FC 11 */	bl mMU_check_mark_flg
/* 805E92D4  2C 03 00 00 */	cmpwi r3, 0
/* 805E92D8  41 82 00 20 */	beq lbl_805E92F8
/* 805E92DC  92 FE 00 00 */	stw r23, 0(r30)
/* 805E92E0  7F E3 FB 78 */	mr r3, r31
/* 805E92E4  4B E2 40 F1 */	bl _Matrix_to_Mtx_new
/* 805E92E8  90 7E 00 04 */	stw r3, 4(r30)
/* 805E92EC  93 1E 00 08 */	stw r24, 8(r30)
/* 805E92F0  92 DE 00 0C */	stw r22, 0xc(r30)
/* 805E92F4  3B DE 00 10 */	addi r30, r30, 0x10
lbl_805E92F8:
/* 805E92F8  C0 5A 00 00 */	lfs f2, 0(r26)
/* 805E92FC  38 60 00 01 */	li r3, 1
/* 805E9300  C0 39 00 00 */	lfs f1, 0(r25)
/* 805E9304  FC 60 10 90 */	fmr f3, f2
/* 805E9308  4B E2 2F F9 */	bl Matrix_translate
/* 805E930C  3A 94 00 01 */	addi r20, r20, 1
/* 805E9310  3A 52 00 01 */	addi r18, r18, 1
/* 805E9314  2C 14 00 0B */	cmpwi r20, 0xb
/* 805E9318  41 80 FF B0 */	blt lbl_805E92C8
/* 805E931C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805E9320  38 60 00 01 */	li r3, 1
/* 805E9324  C0 5C 00 00 */	lfs f2, 0(r28)
/* 805E9328  C0 7A 00 00 */	lfs f3, 0(r26)
/* 805E932C  4B E2 2F D5 */	bl Matrix_translate
/* 805E9330  3A 73 00 01 */	addi r19, r19, 1
/* 805E9334  2C 13 00 05 */	cmpwi r19, 5
/* 805E9338  41 80 FF 8C */	blt lbl_805E92C4
/* 805E933C  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805E9340  39 61 00 60 */	addi r11, r1, 0x60
/* 805E9344  4B AB 1B AD */	bl func_8009AEF0
/* 805E9348  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805E934C  7C 08 03 A6 */	mtlr r0
/* 805E9350  38 21 00 60 */	addi r1, r1, 0x60
/* 805E9354  4E 80 00 20 */	blr 
