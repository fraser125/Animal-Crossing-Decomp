lbl_803F5DA8:
/* 803F5DA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F5DAC  7C 08 02 A6 */	mflr r0
/* 803F5DB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F5DB4  39 61 00 30 */	addi r11, r1, 0x30
/* 803F5DB8  4B CA 51 19 */	bl func_8009AED0
/* 803F5DBC  3C 80 81 17 */	lis r4, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5DC0  38 A0 00 00 */	li r5, 0
/* 803F5DC4  3B C4 15 94 */	addi r30, r4, S_mybell_conf@l /* 0x81171594@l */
/* 803F5DC8  7C 7D 1B 78 */	mr r29, r3
/* 803F5DCC  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 803F5DD0  98 BE 00 0B */	stb r5, 0xb(r30)
/* 803F5DD4  28 00 00 01 */	cmplwi r0, 1
/* 803F5DD8  40 82 00 14 */	bne lbl_803F5DEC
/* 803F5DDC  38 60 10 50 */	li r3, 0x1050
/* 803F5DE0  48 23 7F 25 */	bl sAdo_SysTrgStart
/* 803F5DE4  38 00 00 00 */	li r0, 0
/* 803F5DE8  98 1E 00 0D */	stb r0, 0xd(r30)
lbl_803F5DEC:
/* 803F5DEC  3C 60 81 17 */	lis r3, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5DF0  38 83 15 94 */	addi r4, r3, S_mybell_conf@l /* 0x81171594@l */
/* 803F5DF4  A8 64 00 08 */	lha r3, 8(r4)
/* 803F5DF8  2C 03 00 00 */	cmpwi r3, 0
/* 803F5DFC  41 82 00 1C */	beq lbl_803F5E18
/* 803F5E00  38 63 FF FF */	addi r3, r3, -1
/* 803F5E04  7C 60 07 35 */	extsh. r0, r3
/* 803F5E08  B0 64 00 08 */	sth r3, 8(r4)
/* 803F5E0C  41 81 00 0C */	bgt lbl_803F5E18
/* 803F5E10  38 60 00 00 */	li r3, 0
/* 803F5E14  4B FF FE B1 */	bl mWt_set_coin_se
lbl_803F5E18:
/* 803F5E18  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F5E1C  3C 60 80 66 */	lis r3, data_8065E338@ha /* 0x8065E338@ha */
/* 803F5E20  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803F5E24  38 00 00 08 */	li r0, 8
/* 803F5E28  38 83 E3 38 */	addi r4, r3, data_8065E338@l /* 0x8065E338@l */
/* 803F5E2C  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 803F5E30  3B 80 00 00 */	li r28, 0
/* 803F5E34  38 60 00 00 */	li r3, 0
/* 803F5E38  7C 09 03 A6 */	mtctr r0
lbl_803F5E3C:
/* 803F5E3C  7C 04 18 2E */	lwzx r0, r4, r3
/* 803F5E40  7C 05 00 00 */	cmpw r5, r0
/* 803F5E44  41 82 00 10 */	beq lbl_803F5E54
/* 803F5E48  3B 9C 00 01 */	addi r28, r28, 1
/* 803F5E4C  38 63 00 04 */	addi r3, r3, 4
/* 803F5E50  42 00 FF EC */	bdnz lbl_803F5E3C
lbl_803F5E54:
/* 803F5E54  28 1C 00 08 */	cmplwi r28, 8
/* 803F5E58  41 82 00 30 */	beq lbl_803F5E88
/* 803F5E5C  4B FA 4D D9 */	bl mEv_CheckFirstJob
/* 803F5E60  2C 03 00 01 */	cmpwi r3, 1
/* 803F5E64  41 82 00 24 */	beq lbl_803F5E88
/* 803F5E68  2C 1C 00 04 */	cmpwi r28, 4
/* 803F5E6C  41 81 00 54 */	bgt lbl_803F5EC0
/* 803F5E70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F5E74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F5E78  3C 63 00 03 */	addis r3, r3, 3
/* 803F5E7C  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 803F5E80  2C 00 00 03 */	cmpwi r0, 3
/* 803F5E84  40 82 00 3C */	bne lbl_803F5EC0
lbl_803F5E88:
/* 803F5E88  3C 60 81 17 */	lis r3, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5E8C  3B 83 15 94 */	addi r28, r3, S_mybell_conf@l /* 0x81171594@l */
/* 803F5E90  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 803F5E94  28 00 00 01 */	cmplwi r0, 1
/* 803F5E98  40 82 00 1C */	bne lbl_803F5EB4
/* 803F5E9C  48 00 05 5D */	bl get_all_money
/* 803F5EA0  3C 80 81 17 */	lis r4, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5EA4  38 84 15 94 */	addi r4, r4, S_mybell_conf@l /* 0x81171594@l */
/* 803F5EA8  90 64 00 04 */	stw r3, 4(r4)
/* 803F5EAC  38 60 00 00 */	li r3, 0
/* 803F5EB0  4B FF FE 15 */	bl mWt_set_coin_se
lbl_803F5EB4:
/* 803F5EB4  38 00 00 00 */	li r0, 0
/* 803F5EB8  98 1C 00 0C */	stb r0, 0xc(r28)
/* 803F5EBC  48 00 02 B4 */	b lbl_803F6170
lbl_803F5EC0:
/* 803F5EC0  3C 60 81 17 */	lis r3, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5EC4  3B E3 15 94 */	addi r31, r3, S_mybell_conf@l /* 0x81171594@l */
/* 803F5EC8  88 7F 00 0A */	lbz r3, 0xa(r31)
/* 803F5ECC  2C 03 00 02 */	cmpwi r3, 2
/* 803F5ED0  41 82 01 C8 */	beq lbl_803F6098
/* 803F5ED4  40 80 02 9C */	bge lbl_803F6170
/* 803F5ED8  2C 03 00 00 */	cmpwi r3, 0
/* 803F5EDC  41 82 00 10 */	beq lbl_803F5EEC
/* 803F5EE0  40 80 00 24 */	bge lbl_803F5F04
/* 803F5EE4  48 00 02 8C */	b lbl_803F6170
/* 803F5EE8  48 00 02 88 */	b lbl_803F6170
lbl_803F5EEC:
/* 803F5EEC  80 1D 1D F8 */	lwz r0, 0x1df8(r29)
/* 803F5EF0  2C 00 00 00 */	cmpwi r0, 0
/* 803F5EF4  40 82 02 7C */	bne lbl_803F6170
/* 803F5EF8  38 03 00 01 */	addi r0, r3, 1
/* 803F5EFC  98 1F 00 0A */	stb r0, 0xa(r31)
/* 803F5F00  48 00 02 70 */	b lbl_803F6170
lbl_803F5F04:
/* 803F5F04  80 9F 00 04 */	lwz r4, 4(r31)
/* 803F5F08  3C 00 43 30 */	lis r0, 0x4330
/* 803F5F0C  3C 60 80 64 */	lis r3, lit_829@ha /* 0x806433DC@ha */
/* 803F5F10  90 01 00 18 */	stw r0, 0x18(r1)
/* 803F5F14  C8 23 33 DC */	lfd f1, lit_829@l(r3)  /* 0x806433DC@l */
/* 803F5F18  90 81 00 1C */	stw r4, 0x1c(r1)
/* 803F5F1C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803F5F20  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F5F24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803F5F28  48 00 04 D1 */	bl get_all_money
/* 803F5F2C  80 1F 00 04 */	lwz r0, 4(r31)
/* 803F5F30  7C 7C 1B 78 */	mr r28, r3
/* 803F5F34  7C 00 E0 40 */	cmplw r0, r28
/* 803F5F38  41 82 00 0C */	beq lbl_803F5F44
/* 803F5F3C  38 60 00 01 */	li r3, 1
/* 803F5F40  4B FF FD 85 */	bl mWt_set_coin_se
lbl_803F5F44:
/* 803F5F44  80 1D 1D F8 */	lwz r0, 0x1df8(r29)
/* 803F5F48  2C 00 00 00 */	cmpwi r0, 0
/* 803F5F4C  41 82 00 10 */	beq lbl_803F5F5C
/* 803F5F50  88 7F 00 0A */	lbz r3, 0xa(r31)
/* 803F5F54  38 03 00 01 */	addi r0, r3, 1
/* 803F5F58  98 1F 00 0A */	stb r0, 0xa(r31)
lbl_803F5F5C:
/* 803F5F5C  3C 60 81 17 */	lis r3, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5F60  38 63 15 94 */	addi r3, r3, S_mybell_conf@l /* 0x81171594@l */
/* 803F5F64  88 03 00 0C */	lbz r0, 0xc(r3)
/* 803F5F68  28 00 00 01 */	cmplwi r0, 1
/* 803F5F6C  40 82 00 38 */	bne lbl_803F5FA4
/* 803F5F70  80 1F 00 04 */	lwz r0, 4(r31)
/* 803F5F74  7C 00 E0 40 */	cmplw r0, r28
/* 803F5F78  41 82 00 10 */	beq lbl_803F5F88
/* 803F5F7C  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 803F5F80  28 00 00 02 */	cmplwi r0, 2
/* 803F5F84  40 82 00 20 */	bne lbl_803F5FA4
lbl_803F5F88:
/* 803F5F88  38 60 00 00 */	li r3, 0
/* 803F5F8C  4B FF FD 39 */	bl mWt_set_coin_se
/* 803F5F90  80 1F 00 04 */	lwz r0, 4(r31)
/* 803F5F94  7C 00 E0 40 */	cmplw r0, r28
/* 803F5F98  40 82 00 0C */	bne lbl_803F5FA4
/* 803F5F9C  38 00 00 01 */	li r0, 1
/* 803F5FA0  98 1E 00 0D */	stb r0, 0xd(r30)
lbl_803F5FA4:
/* 803F5FA4  3C 00 43 30 */	lis r0, 0x4330
/* 803F5FA8  3C 60 80 64 */	lis r3, lit_829@ha /* 0x806433DC@ha */
/* 803F5FAC  93 81 00 1C */	stw r28, 0x1c(r1)
/* 803F5FB0  38 C3 33 DC */	addi r6, r3, lit_829@l /* 0x806433DC@l */
/* 803F5FB4  3C A0 80 64 */	lis r5, lit_547@ha /* 0x80643340@ha */
/* 803F5FB8  3C 80 80 64 */	lis r4, lit_827@ha /* 0x806433D4@ha */
/* 803F5FBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 803F5FC0  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80643334@ha */
/* 803F5FC4  C8 26 00 00 */	lfd f1, 0(r6)
/* 803F5FC8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803F5FCC  C0 83 33 34 */	lfs f4, lit_544@l(r3)  /* 0x80643334@l */
/* 803F5FD0  38 61 00 10 */	addi r3, r1, 0x10
/* 803F5FD4  EC 20 08 28 */	fsubs f1, f0, f1
/* 803F5FD8  C0 45 33 40 */	lfs f2, lit_547@l(r5)  /* 0x80643340@l */
/* 803F5FDC  C0 64 33 D4 */	lfs f3, lit_827@l(r4)  /* 0x806433D4@l */
/* 803F5FE0  4B FC 51 D1 */	bl add_calc
/* 803F5FE4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 803F5FE8  4B CA 4D BD */	bl func_8009ADA4
/* 803F5FEC  3C 80 80 64 */	lis r4, lit_689@ha /* 0x806433C4@ha */
/* 803F5FF0  3C A0 80 64 */	lis r5, lit_542@ha /* 0x80643324@ha */
/* 803F5FF4  38 C4 33 C4 */	addi r6, r4, lit_689@l /* 0x806433C4@l */
/* 803F5FF8  C8 C5 33 24 */	lfd f6, lit_542@l(r5)  /* 0x80643324@l */
/* 803F5FFC  C8 E6 00 00 */	lfd f7, 0(r6)
/* 803F6000  3C 80 80 64 */	lis r4, lit_543@ha /* 0x8064332C@ha */
/* 803F6004  39 04 33 2C */	addi r8, r4, lit_543@l /* 0x8064332C@l */
/* 803F6008  3C A0 80 64 */	lis r5, lit_690@ha /* 0x806433CC@ha */
/* 803F600C  FC 20 38 34 */	frsqrte f1, f7
/* 803F6010  3C 80 80 64 */	lis r4, lit_544@ha /* 0x80643334@ha */
/* 803F6014  38 C4 33 34 */	addi r6, r4, lit_544@l /* 0x80643334@l */
/* 803F6018  C8 A8 00 00 */	lfd f5, 0(r8)
/* 803F601C  3C 80 80 64 */	lis r4, lit_549@ha /* 0x80643348@ha */
/* 803F6020  3C E0 81 17 */	lis r7, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F6024  FC 01 00 72 */	fmul f0, f1, f1
/* 803F6028  90 7F 00 04 */	stw r3, 4(r31)
/* 803F602C  C0 65 33 CC */	lfs f3, lit_690@l(r5)  /* 0x806433CC@l */
/* 803F6030  38 67 15 94 */	addi r3, r7, S_mybell_conf@l /* 0x81171594@l */
/* 803F6034  FC 46 00 72 */	fmul f2, f6, f1
/* 803F6038  C0 26 00 00 */	lfs f1, 0(r6)
/* 803F603C  FC 07 00 32 */	fmul f0, f7, f0
/* 803F6040  C0 84 33 48 */	lfs f4, lit_549@l(r4)  /* 0x80643348@l */
/* 803F6044  FC 05 00 28 */	fsub f0, f5, f0
/* 803F6048  FC 42 00 32 */	fmul f2, f2, f0
/* 803F604C  FC 02 00 B2 */	fmul f0, f2, f2
/* 803F6050  FC 46 00 B2 */	fmul f2, f6, f2
/* 803F6054  FC 07 00 32 */	fmul f0, f7, f0
/* 803F6058  FC 05 00 28 */	fsub f0, f5, f0
/* 803F605C  FC 42 00 32 */	fmul f2, f2, f0
/* 803F6060  FC 02 00 B2 */	fmul f0, f2, f2
/* 803F6064  FC 46 00 B2 */	fmul f2, f6, f2
/* 803F6068  FC 07 00 32 */	fmul f0, f7, f0
/* 803F606C  FC 05 00 28 */	fsub f0, f5, f0
/* 803F6070  FC 02 00 32 */	fmul f0, f2, f0
/* 803F6074  FC 07 00 32 */	fmul f0, f7, f0
/* 803F6078  FC 00 00 18 */	frsp f0, f0
/* 803F607C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803F6080  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F6084  EC 41 00 28 */	fsubs f2, f1, f0
/* 803F6088  4B FC 51 29 */	bl add_calc
/* 803F608C  38 00 00 01 */	li r0, 1
/* 803F6090  98 1E 00 0B */	stb r0, 0xb(r30)
/* 803F6094  48 00 00 DC */	b lbl_803F6170
lbl_803F6098:
/* 803F6098  3C 60 80 64 */	lis r3, lit_689@ha /* 0x806433C4@ha */
/* 803F609C  3C 80 80 64 */	lis r4, lit_542@ha /* 0x80643324@ha */
/* 803F60A0  38 A3 33 C4 */	addi r5, r3, lit_689@l /* 0x806433C4@l */
/* 803F60A4  C8 E4 33 24 */	lfd f7, lit_542@l(r4)  /* 0x80643324@l */
/* 803F60A8  C9 05 00 00 */	lfd f8, 0(r5)
/* 803F60AC  3C 60 80 64 */	lis r3, lit_543@ha /* 0x8064332C@ha */
/* 803F60B0  39 03 33 2C */	addi r8, r3, lit_543@l /* 0x8064332C@l */
/* 803F60B4  3C A0 80 64 */	lis r5, data_8064331C@ha /* 0x8064331C@ha */
/* 803F60B8  FC 20 40 34 */	frsqrte f1, f8
/* 803F60BC  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80643334@ha */
/* 803F60C0  38 C3 33 34 */	addi r6, r3, lit_544@l /* 0x80643334@l */
/* 803F60C4  C8 C8 00 00 */	lfd f6, 0(r8)
/* 803F60C8  3C 80 80 64 */	lis r4, lit_548@ha /* 0x80643344@ha */
/* 803F60CC  38 E5 33 1C */	addi r7, r5, data_8064331C@l /* 0x8064331C@l */
/* 803F60D0  FC 01 00 72 */	fmul f0, f1, f1
/* 803F60D4  38 A4 33 44 */	addi r5, r4, lit_548@l /* 0x80643344@l */
/* 803F60D8  3C 60 80 64 */	lis r3, lit_549@ha /* 0x80643348@ha */
/* 803F60DC  C0 65 00 00 */	lfs f3, 0(r5)
/* 803F60E0  38 83 33 48 */	addi r4, r3, lit_549@l /* 0x80643348@l */
/* 803F60E4  FC A7 00 72 */	fmul f5, f7, f1
/* 803F60E8  FC 48 00 32 */	fmul f2, f8, f0
/* 803F60EC  C0 06 00 00 */	lfs f0, 0(r6)
/* 803F60F0  C0 27 00 00 */	lfs f1, 0(r7)
/* 803F60F4  7F E3 FB 78 */	mr r3, r31
/* 803F60F8  C0 84 00 00 */	lfs f4, 0(r4)
/* 803F60FC  FC 46 10 28 */	fsub f2, f6, f2
/* 803F6100  FC A5 00 B2 */	fmul f5, f5, f2
/* 803F6104  FC 45 01 72 */	fmul f2, f5, f5
/* 803F6108  FC A7 01 72 */	fmul f5, f7, f5
/* 803F610C  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F6110  FC 46 10 28 */	fsub f2, f6, f2
/* 803F6114  FC A5 00 B2 */	fmul f5, f5, f2
/* 803F6118  FC 45 01 72 */	fmul f2, f5, f5
/* 803F611C  FC A7 01 72 */	fmul f5, f7, f5
/* 803F6120  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F6124  FC 46 10 28 */	fsub f2, f6, f2
/* 803F6128  FC 45 00 B2 */	fmul f2, f5, f2
/* 803F612C  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F6130  FC 40 10 18 */	frsp f2, f2
/* 803F6134  D0 41 00 08 */	stfs f2, 8(r1)
/* 803F6138  C0 41 00 08 */	lfs f2, 8(r1)
/* 803F613C  EC 40 10 28 */	fsubs f2, f0, f2
/* 803F6140  4B FC 50 71 */	bl add_calc
/* 803F6144  3C 80 81 17 */	lis r4, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F6148  3C 60 80 64 */	lis r3, lit_691@ha /* 0x806433D0@ha */
/* 803F614C  C0 24 15 94 */	lfs f1, S_mybell_conf@l(r4)  /* 0x81171594@l */
/* 803F6150  C0 03 33 D0 */	lfs f0, lit_691@l(r3)  /* 0x806433D0@l */
/* 803F6154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6158  40 80 00 10 */	bge lbl_803F6168
/* 803F615C  38 00 00 00 */	li r0, 0
/* 803F6160  98 1F 00 0A */	stb r0, 0xa(r31)
/* 803F6164  48 00 00 0C */	b lbl_803F6170
lbl_803F6168:
/* 803F6168  38 00 00 01 */	li r0, 1
/* 803F616C  98 1E 00 0B */	stb r0, 0xb(r30)
lbl_803F6170:
/* 803F6170  39 61 00 30 */	addi r11, r1, 0x30
/* 803F6174  4B CA 4D A9 */	bl func_8009AF1C
/* 803F6178  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F617C  7C 08 03 A6 */	mtlr r0
/* 803F6180  38 21 00 30 */	addi r1, r1, 0x30
/* 803F6184  4E 80 00 20 */	blr 
