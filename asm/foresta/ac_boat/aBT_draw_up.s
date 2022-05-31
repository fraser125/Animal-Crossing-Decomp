lbl_805A7F6C:
/* 805A7F6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A7F70  7C 08 02 A6 */	mflr r0
/* 805A7F74  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A7F78  39 61 00 30 */	addi r11, r1, 0x30
/* 805A7F7C  4B AF 2F 4D */	bl func_8009AEC8
/* 805A7F80  7C 7D 1B 78 */	mr r29, r3
/* 805A7F84  3C 60 80 6C */	lis r3, data_806C4340@ha /* 0x806C4340@ha */
/* 805A7F88  80 1D 02 C4 */	lwz r0, 0x2c4(r29)
/* 805A7F8C  3B 83 43 40 */	addi r28, r3, data_806C4340@l /* 0x806C4340@l */
/* 805A7F90  3C A0 80 65 */	lis r5, lit_744@ha /* 0x8064A51C@ha */
/* 805A7F94  3C 60 80 65 */	lis r3, lit_588@ha /* 0x8064A4F0@ha */
/* 805A7F98  54 00 10 3A */	slwi r0, r0, 2
/* 805A7F9C  38 DC 00 84 */	addi r6, r28, 0x84
/* 805A7FA0  7C 06 00 2E */	lwzx r0, r6, r0
/* 805A7FA4  3B FC 00 24 */	addi r31, r28, 0x24
/* 805A7FA8  C0 43 A4 F0 */	lfs f2, lit_588@l(r3)  /* 0x8064A4F0@l */
/* 805A7FAC  7C 9E 23 78 */	mr r30, r4
/* 805A7FB0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805A7FB4  AB 7D 00 DE */	lha r27, 0xde(r29)
/* 805A7FB8  C0 25 A5 1C */	lfs f1, lit_744@l(r5)  /* 0x8064A51C@l */
/* 805A7FBC  38 7D 02 D4 */	addi r3, r29, 0x2d4
/* 805A7FC0  3B 40 00 00 */	li r26, 0
/* 805A7FC4  7F FF 02 14 */	add r31, r31, r0
/* 805A7FC8  4B E1 2C A1 */	bl chase_f
/* 805A7FCC  C0 1D 02 D4 */	lfs f0, 0x2d4(r29)
/* 805A7FD0  38 9C 00 8C */	addi r4, r28, 0x8c
/* 805A7FD4  80 1D 02 C4 */	lwz r0, 0x2c4(r29)
/* 805A7FD8  38 7D 00 DE */	addi r3, r29, 0xde
/* 805A7FDC  FC 00 00 1E */	fctiwz f0, f0
/* 805A7FE0  54 00 08 3C */	slwi r0, r0, 1
/* 805A7FE4  7C 84 02 AE */	lhax r4, r4, r0
/* 805A7FE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A7FEC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805A7FF0  4B E1 2B 55 */	bl chase_angle
/* 805A7FF4  2C 03 00 01 */	cmpwi r3, 1
/* 805A7FF8  40 82 00 08 */	bne lbl_805A8000
/* 805A7FFC  3B 40 00 01 */	li r26, 1
lbl_805A8000:
/* 805A8000  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 805A8004  7F A3 EB 78 */	mr r3, r29
/* 805A8008  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 805A800C  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 805A8010  7C 1B 00 50 */	subf r0, r27, r0
/* 805A8014  7C 04 07 34 */	extsh r4, r0
/* 805A8018  4B FF F4 C5 */	bl aBT_calc_wave_angl
/* 805A801C  3C 60 80 65 */	lis r3, lit_745@ha /* 0x8064A520@ha */
/* 805A8020  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805A8024  38 83 A5 20 */	addi r4, r3, lit_745@l /* 0x8064A520@l */
/* 805A8028  38 7D 00 28 */	addi r3, r29, 0x28
/* 805A802C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805A8030  4B E1 2C 39 */	bl chase_f
/* 805A8034  2C 03 00 01 */	cmpwi r3, 1
/* 805A8038  40 82 00 08 */	bne lbl_805A8040
/* 805A803C  3B 5A 00 01 */	addi r26, r26, 1
lbl_805A8040:
/* 805A8040  3C 60 80 65 */	lis r3, lit_745@ha /* 0x8064A520@ha */
/* 805A8044  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A8048  38 83 A5 20 */	addi r4, r3, lit_745@l /* 0x8064A520@l */
/* 805A804C  38 7D 00 30 */	addi r3, r29, 0x30
/* 805A8050  C0 44 00 00 */	lfs f2, 0(r4)
/* 805A8054  4B E1 2C 15 */	bl chase_f
/* 805A8058  2C 03 00 01 */	cmpwi r3, 1
/* 805A805C  40 82 00 08 */	bne lbl_805A8064
/* 805A8060  3B 5A 00 01 */	addi r26, r26, 1
lbl_805A8064:
/* 805A8064  2C 1A 00 03 */	cmpwi r26, 3
/* 805A8068  40 82 00 14 */	bne lbl_805A807C
/* 805A806C  7F A3 EB 78 */	mr r3, r29
/* 805A8070  7F C4 F3 78 */	mr r4, r30
/* 805A8074  38 A0 00 0B */	li r5, 0xb
/* 805A8078  48 00 02 D5 */	bl aBT_setupAction
lbl_805A807C:
/* 805A807C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A8080  4B AF 2E 95 */	bl func_8009AF14
/* 805A8084  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A8088  7C 08 03 A6 */	mtlr r0
/* 805A808C  38 21 00 30 */	addi r1, r1, 0x30
/* 805A8090  4E 80 00 20 */	blr 
