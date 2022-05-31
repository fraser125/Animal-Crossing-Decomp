lbl_803F4D64:
/* 803F4D64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F4D68  7C 08 02 A6 */	mflr r0
/* 803F4D6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F4D70  39 61 00 50 */	addi r11, r1, 0x50
/* 803F4D74  4B CA 61 55 */	bl func_8009AEC8
/* 803F4D78  7C 7A 1B 78 */	mr r26, r3
/* 803F4D7C  4B FE 48 C5 */	bl get_player_actor_withoutCheck
/* 803F4D80  80 1A 1B E8 */	lwz r0, 0x1be8(r26)
/* 803F4D84  7C 7C 1B 78 */	mr r28, r3
/* 803F4D88  3B 60 00 00 */	li r27, 0
/* 803F4D8C  2C 00 00 01 */	cmpwi r0, 1
/* 803F4D90  40 82 00 14 */	bne lbl_803F4DA4
/* 803F4D94  80 1A 1C 0C */	lwz r0, 0x1c0c(r26)
/* 803F4D98  2C 00 00 14 */	cmpwi r0, 0x14
/* 803F4D9C  40 81 00 08 */	ble lbl_803F4DA4
/* 803F4DA0  3B 60 00 01 */	li r27, 1
lbl_803F4DA4:
/* 803F4DA4  7F 43 D3 78 */	mr r3, r26
/* 803F4DA8  48 00 0A 99 */	bl navigate_camera_move
/* 803F4DAC  7F 43 D3 78 */	mr r3, r26
/* 803F4DB0  48 00 0F F9 */	bl mWt_mybell_confirmation_move
/* 803F4DB4  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F4DB8  38 00 00 00 */	li r0, 0
/* 803F4DBC  3B A3 15 58 */	addi r29, r3, data_81171558@l /* 0x81171558@l */
/* 803F4DC0  98 1D 00 2D */	stb r0, 0x2d(r29)
/* 803F4DC4  4B FA 60 F5 */	bl mEv_CheckTitleDemo
/* 803F4DC8  2C 03 00 00 */	cmpwi r3, 0
/* 803F4DCC  41 81 05 38 */	bgt lbl_803F5304
/* 803F4DD0  4B FE 92 ED */	bl mPlib_Get_itemNo_forWindow
/* 803F4DD4  3C 80 81 17 */	lis r4, data_81171558@ha /* 0x81171558@ha */
/* 803F4DD8  7C 7E 1B 78 */	mr r30, r3
/* 803F4DDC  3B E4 15 58 */	addi r31, r4, data_81171558@l /* 0x81171558@l */
/* 803F4DE0  88 BF 00 1C */	lbz r5, 0x1c(r31)
/* 803F4DE4  2C 05 00 03 */	cmpwi r5, 3
/* 803F4DE8  41 82 00 80 */	beq lbl_803F4E68
/* 803F4DEC  40 80 00 14 */	bge lbl_803F4E00
/* 803F4DF0  2C 05 00 00 */	cmpwi r5, 0
/* 803F4DF4  41 82 00 18 */	beq lbl_803F4E0C
/* 803F4DF8  40 80 00 48 */	bge lbl_803F4E40
/* 803F4DFC  48 00 02 88 */	b lbl_803F5084
lbl_803F4E00:
/* 803F4E00  2C 05 00 05 */	cmpwi r5, 5
/* 803F4E04  40 80 02 80 */	bge lbl_803F5084
/* 803F4E08  48 00 01 1C */	b lbl_803F4F24
lbl_803F4E0C:
/* 803F4E0C  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 803F4E10  41 82 02 7C */	beq lbl_803F508C
/* 803F4E14  2C 1B 00 00 */	cmpwi r27, 0
/* 803F4E18  40 82 02 74 */	bne lbl_803F508C
/* 803F4E1C  3C 60 80 64 */	lis r3, data_8064331C@ha /* 0x8064331C@ha */
/* 803F4E20  38 05 00 01 */	addi r0, r5, 1
/* 803F4E24  38 83 33 1C */	addi r4, r3, data_8064331C@l /* 0x8064331C@l */
/* 803F4E28  38 60 00 02 */	li r3, 2
/* 803F4E2C  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F4E30  B0 7F 00 18 */	sth r3, 0x18(r31)
/* 803F4E34  D0 1F 00 08 */	stfs f0, 8(r31)
/* 803F4E38  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 803F4E3C  48 00 02 50 */	b lbl_803F508C
lbl_803F4E40:
/* 803F4E40  A8 9F 00 18 */	lha r4, 0x18(r31)
/* 803F4E44  38 64 FF FF */	addi r3, r4, -1
/* 803F4E48  7C 80 07 35 */	extsh. r0, r4
/* 803F4E4C  B0 7F 00 18 */	sth r3, 0x18(r31)
/* 803F4E50  40 82 02 3C */	bne lbl_803F508C
/* 803F4E54  38 05 00 01 */	addi r0, r5, 1
/* 803F4E58  38 60 00 02 */	li r3, 2
/* 803F4E5C  B0 7F 00 18 */	sth r3, 0x18(r31)
/* 803F4E60  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 803F4E64  48 00 02 28 */	b lbl_803F508C
lbl_803F4E68:
/* 803F4E68  3C 60 80 64 */	lis r3, lit_542@ha /* 0x80643324@ha */
/* 803F4E6C  3C 80 80 64 */	lis r4, lit_543@ha /* 0x8064332C@ha */
/* 803F4E70  38 A3 33 24 */	addi r5, r3, lit_542@l /* 0x80643324@l */
/* 803F4E74  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80643334@ha */
/* 803F4E78  C8 E5 00 00 */	lfd f7, 0(r5)
/* 803F4E7C  38 E4 33 2C */	addi r7, r4, lit_543@l /* 0x8064332C@l */
/* 803F4E80  38 C3 33 34 */	addi r6, r3, lit_544@l /* 0x80643334@l */
/* 803F4E84  3C 80 80 64 */	lis r4, lit_545@ha /* 0x80643338@ha */
/* 803F4E88  FC 40 38 34 */	frsqrte f2, f7
/* 803F4E8C  C8 C5 00 00 */	lfd f6, 0(r5)
/* 803F4E90  3C 60 80 64 */	lis r3, lit_546@ha /* 0x8064333C@ha */
/* 803F4E94  38 A4 33 38 */	addi r5, r4, lit_545@l /* 0x80643338@l */
/* 803F4E98  38 83 33 3C */	addi r4, r3, lit_546@l /* 0x8064333C@l */
/* 803F4E9C  C8 A7 00 00 */	lfd f5, 0(r7)
/* 803F4EA0  FC 02 00 B2 */	fmul f0, f2, f2
/* 803F4EA4  C0 26 00 00 */	lfs f1, 0(r6)
/* 803F4EA8  C0 65 00 00 */	lfs f3, 0(r5)
/* 803F4EAC  38 7F 00 08 */	addi r3, r31, 8
/* 803F4EB0  FC 46 00 B2 */	fmul f2, f6, f2
/* 803F4EB4  C0 84 00 00 */	lfs f4, 0(r4)
/* 803F4EB8  FC 07 00 32 */	fmul f0, f7, f0
/* 803F4EBC  FC 05 00 28 */	fsub f0, f5, f0
/* 803F4EC0  FC 42 00 32 */	fmul f2, f2, f0
/* 803F4EC4  FC 02 00 B2 */	fmul f0, f2, f2
/* 803F4EC8  FC 46 00 B2 */	fmul f2, f6, f2
/* 803F4ECC  FC 07 00 32 */	fmul f0, f7, f0
/* 803F4ED0  FC 05 00 28 */	fsub f0, f5, f0
/* 803F4ED4  FC 42 00 32 */	fmul f2, f2, f0
/* 803F4ED8  FC 02 00 B2 */	fmul f0, f2, f2
/* 803F4EDC  FC 46 00 B2 */	fmul f2, f6, f2
/* 803F4EE0  FC 07 00 32 */	fmul f0, f7, f0
/* 803F4EE4  FC 05 00 28 */	fsub f0, f5, f0
/* 803F4EE8  FC 02 00 32 */	fmul f0, f2, f0
/* 803F4EEC  FC 07 00 32 */	fmul f0, f7, f0
/* 803F4EF0  FC 00 00 18 */	frsp f0, f0
/* 803F4EF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803F4EF8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 803F4EFC  EC 41 00 28 */	fsubs f2, f1, f0
/* 803F4F00  4B FC 62 B1 */	bl add_calc
/* 803F4F04  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 803F4F08  41 82 00 0C */	beq lbl_803F4F14
/* 803F4F0C  2C 1B 00 01 */	cmpwi r27, 1
/* 803F4F10  40 82 01 7C */	bne lbl_803F508C
lbl_803F4F14:
/* 803F4F14  88 7F 00 1C */	lbz r3, 0x1c(r31)
/* 803F4F18  38 03 00 01 */	addi r0, r3, 1
/* 803F4F1C  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 803F4F20  48 00 01 6C */	b lbl_803F508C
lbl_803F4F24:
/* 803F4F24  3C 60 80 64 */	lis r3, lit_542@ha /* 0x80643324@ha */
/* 803F4F28  3C 80 80 64 */	lis r4, lit_543@ha /* 0x8064332C@ha */
/* 803F4F2C  38 E3 33 24 */	addi r7, r3, lit_542@l /* 0x80643324@l */
/* 803F4F30  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80643334@ha */
/* 803F4F34  C9 07 00 00 */	lfd f8, 0(r7)
/* 803F4F38  39 04 33 2C */	addi r8, r4, lit_543@l /* 0x8064332C@l */
/* 803F4F3C  38 C3 33 34 */	addi r6, r3, lit_544@l /* 0x80643334@l */
/* 803F4F40  3C A0 80 64 */	lis r5, data_8064331C@ha /* 0x8064331C@ha */
/* 803F4F44  FC 00 40 34 */	frsqrte f0, f8
/* 803F4F48  C8 E7 00 00 */	lfd f7, 0(r7)
/* 803F4F4C  3C 80 80 64 */	lis r4, lit_547@ha /* 0x80643340@ha */
/* 803F4F50  3C 60 80 64 */	lis r3, lit_548@ha /* 0x80643344@ha */
/* 803F4F54  38 E5 33 1C */	addi r7, r5, data_8064331C@l /* 0x8064331C@l */
/* 803F4F58  3B 7F 00 08 */	addi r27, r31, 8
/* 803F4F5C  FC 20 00 32 */	fmul f1, f0, f0
/* 803F4F60  38 A4 33 40 */	addi r5, r4, lit_547@l /* 0x80643340@l */
/* 803F4F64  38 83 33 44 */	addi r4, r3, lit_548@l /* 0x80643344@l */
/* 803F4F68  C8 C8 00 00 */	lfd f6, 0(r8)
/* 803F4F6C  FC A7 00 32 */	fmul f5, f7, f0
/* 803F4F70  C0 06 00 00 */	lfs f0, 0(r6)
/* 803F4F74  FC 48 00 72 */	fmul f2, f8, f1
/* 803F4F78  C0 27 00 00 */	lfs f1, 0(r7)
/* 803F4F7C  C0 65 00 00 */	lfs f3, 0(r5)
/* 803F4F80  7F 63 DB 78 */	mr r3, r27
/* 803F4F84  C0 84 00 00 */	lfs f4, 0(r4)
/* 803F4F88  FC 46 10 28 */	fsub f2, f6, f2
/* 803F4F8C  FC A5 00 B2 */	fmul f5, f5, f2
/* 803F4F90  FC 45 01 72 */	fmul f2, f5, f5
/* 803F4F94  FC A7 01 72 */	fmul f5, f7, f5
/* 803F4F98  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F4F9C  FC 46 10 28 */	fsub f2, f6, f2
/* 803F4FA0  FC A5 00 B2 */	fmul f5, f5, f2
/* 803F4FA4  FC 45 01 72 */	fmul f2, f5, f5
/* 803F4FA8  FC A7 01 72 */	fmul f5, f7, f5
/* 803F4FAC  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F4FB0  FC 46 10 28 */	fsub f2, f6, f2
/* 803F4FB4  FC 45 00 B2 */	fmul f2, f5, f2
/* 803F4FB8  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F4FBC  FC 40 10 18 */	frsp f2, f2
/* 803F4FC0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 803F4FC4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 803F4FC8  EC 40 10 28 */	fsubs f2, f0, f2
/* 803F4FCC  4B FC 61 E5 */	bl add_calc
/* 803F4FD0  3C 80 80 64 */	lis r4, lit_542@ha /* 0x80643324@ha */
/* 803F4FD4  3C 60 80 64 */	lis r3, lit_543@ha /* 0x8064332C@ha */
/* 803F4FD8  38 A4 33 24 */	addi r5, r4, lit_542@l /* 0x80643324@l */
/* 803F4FDC  C9 05 00 00 */	lfd f8, 0(r5)
/* 803F4FE0  38 C3 33 2C */	addi r6, r3, lit_543@l /* 0x8064332C@l */
/* 803F4FE4  C8 E5 00 00 */	lfd f7, 0(r5)
/* 803F4FE8  3C 80 80 64 */	lis r4, lit_544@ha /* 0x80643334@ha */
/* 803F4FEC  FC 20 40 34 */	frsqrte f1, f8
/* 803F4FF0  3C 60 80 64 */	lis r3, lit_549@ha /* 0x80643348@ha */
/* 803F4FF4  C0 63 33 48 */	lfs f3, lit_549@l(r3)  /* 0x80643348@l */
/* 803F4FF8  3C A0 80 64 */	lis r5, data_8064331C@ha /* 0x8064331C@ha */
/* 803F4FFC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 803F5000  7F 63 DB 78 */	mr r3, r27
/* 803F5004  FC 41 00 72 */	fmul f2, f1, f1
/* 803F5008  C0 04 33 34 */	lfs f0, lit_544@l(r4)  /* 0x80643334@l */
/* 803F500C  FC A7 00 72 */	fmul f5, f7, f1
/* 803F5010  C0 25 33 1C */	lfs f1, data_8064331C@l(r5)  /* 0x8064331C@l */
/* 803F5014  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F5018  FC 80 18 90 */	fmr f4, f3
/* 803F501C  FC 46 10 28 */	fsub f2, f6, f2
/* 803F5020  FC A5 00 B2 */	fmul f5, f5, f2
/* 803F5024  FC 45 01 72 */	fmul f2, f5, f5
/* 803F5028  FC A7 01 72 */	fmul f5, f7, f5
/* 803F502C  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F5030  FC 46 10 28 */	fsub f2, f6, f2
/* 803F5034  FC A5 00 B2 */	fmul f5, f5, f2
/* 803F5038  FC 45 01 72 */	fmul f2, f5, f5
/* 803F503C  FC A7 01 72 */	fmul f5, f7, f5
/* 803F5040  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F5044  FC 46 10 28 */	fsub f2, f6, f2
/* 803F5048  FC 45 00 B2 */	fmul f2, f5, f2
/* 803F504C  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F5050  FC 40 10 18 */	frsp f2, f2
/* 803F5054  D0 41 00 08 */	stfs f2, 8(r1)
/* 803F5058  C0 41 00 08 */	lfs f2, 8(r1)
/* 803F505C  EC 40 10 28 */	fsubs f2, f0, f2
/* 803F5060  4B FC 61 51 */	bl add_calc
/* 803F5064  3C 60 80 64 */	lis r3, lit_550@ha /* 0x8064334C@ha */
/* 803F5068  C0 3B 00 00 */	lfs f1, 0(r27)
/* 803F506C  C0 03 33 4C */	lfs f0, lit_550@l(r3)  /* 0x8064334C@l */
/* 803F5070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F5074  40 80 00 18 */	bge lbl_803F508C
/* 803F5078  38 00 00 00 */	li r0, 0
/* 803F507C  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 803F5080  48 00 00 0C */	b lbl_803F508C
lbl_803F5084:
/* 803F5084  38 00 00 00 */	li r0, 0
/* 803F5088  98 1F 00 1C */	stb r0, 0x1c(r31)
lbl_803F508C:
/* 803F508C  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 803F5090  28 00 00 00 */	cmplwi r0, 0
/* 803F5094  41 82 02 70 */	beq lbl_803F5304
/* 803F5098  80 DC 00 28 */	lwz r6, 0x28(r28)
/* 803F509C  3C 60 80 64 */	lis r3, lit_551@ha /* 0x80643350@ha */
/* 803F50A0  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 803F50A4  38 81 00 20 */	addi r4, r1, 0x20
/* 803F50A8  C0 03 33 50 */	lfs f0, lit_551@l(r3)  /* 0x80643350@l */
/* 803F50AC  7F 43 D3 78 */	mr r3, r26
/* 803F50B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F50B4  38 A1 00 14 */	addi r5, r1, 0x14
/* 803F50B8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 803F50BC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 803F50C0  EC 01 00 2A */	fadds f0, f1, f0
/* 803F50C4  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 803F50C8  90 01 00 28 */	stw r0, 0x28(r1)
/* 803F50CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 803F50D0  4B FC 66 55 */	bl Game_play_Projection_Trans
/* 803F50D4  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 803F50D8  28 00 00 04 */	cmplwi r0, 4
/* 803F50DC  40 80 00 E4 */	bge lbl_803F51C0
/* 803F50E0  3C 60 80 64 */	lis r3, lit_552@ha /* 0x80643354@ha */
/* 803F50E4  3C A0 80 64 */	lis r5, lit_544@ha /* 0x80643334@ha */
/* 803F50E8  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 803F50EC  3C 80 81 17 */	lis r4, data_81171558@ha /* 0x81171558@ha */
/* 803F50F0  C0 03 33 54 */	lfs f0, lit_552@l(r3)  /* 0x80643354@l */
/* 803F50F4  38 E4 15 58 */	addi r7, r4, data_81171558@l /* 0x81171558@l */
/* 803F50F8  C0 25 33 34 */	lfs f1, lit_544@l(r5)  /* 0x80643334@l */
/* 803F50FC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 803F5100  D0 27 00 0C */	stfs f1, 0xc(r7)
/* 803F5104  40 81 00 14 */	ble lbl_803F5118
/* 803F5108  3C 60 80 64 */	lis r3, lit_553@ha /* 0x80643358@ha */
/* 803F510C  C0 03 33 58 */	lfs f0, lit_553@l(r3)  /* 0x80643358@l */
/* 803F5110  D0 07 00 0C */	stfs f0, 0xc(r7)
/* 803F5114  48 00 00 2C */	b lbl_803F5140
lbl_803F5118:
/* 803F5118  3C 60 80 64 */	lis r3, lit_554@ha /* 0x8064335C@ha */
/* 803F511C  C0 03 33 5C */	lfs f0, lit_554@l(r3)  /* 0x8064335C@l */
/* 803F5120  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 803F5124  40 81 00 1C */	ble lbl_803F5140
/* 803F5128  A8 1C 00 DE */	lha r0, 0xde(r28)
/* 803F512C  2C 00 00 00 */	cmpwi r0, 0
/* 803F5130  41 80 00 10 */	blt lbl_803F5140
/* 803F5134  3C 60 80 64 */	lis r3, lit_553@ha /* 0x80643358@ha */
/* 803F5138  C0 03 33 58 */	lfs f0, lit_553@l(r3)  /* 0x80643358@l */
/* 803F513C  D0 07 00 0C */	stfs f0, 0xc(r7)
lbl_803F5140:
/* 803F5140  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80643360@ha */
/* 803F5144  3C A0 80 64 */	lis r5, lit_544@ha /* 0x80643334@ha */
/* 803F5148  C0 A1 00 18 */	lfs f5, 0x18(r1)
/* 803F514C  3C 80 81 17 */	lis r4, data_81171558@ha /* 0x81171558@ha */
/* 803F5150  C0 03 33 60 */	lfs f0, lit_555@l(r3)  /* 0x80643360@l */
/* 803F5154  38 C4 15 58 */	addi r6, r4, data_81171558@l /* 0x81171558@l */
/* 803F5158  C0 25 33 34 */	lfs f1, lit_544@l(r5)  /* 0x80643334@l */
/* 803F515C  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 803F5160  D0 26 00 10 */	stfs f1, 0x10(r6)
/* 803F5164  40 80 00 10 */	bge lbl_803F5174
/* 803F5168  3C 60 80 64 */	lis r3, lit_553@ha /* 0x80643358@ha */
/* 803F516C  C0 03 33 58 */	lfs f0, lit_553@l(r3)  /* 0x80643358@l */
/* 803F5170  D0 06 00 10 */	stfs f0, 0x10(r6)
lbl_803F5174:
/* 803F5174  3C 80 80 64 */	lis r4, lit_557@ha /* 0x80643368@ha */
/* 803F5178  3C 60 80 64 */	lis r3, lit_558@ha /* 0x8064336C@ha */
/* 803F517C  C0 64 33 68 */	lfs f3, lit_557@l(r4)  /* 0x80643368@l */
/* 803F5180  3C A0 80 64 */	lis r5, lit_556@ha /* 0x80643364@ha */
/* 803F5184  C0 47 00 0C */	lfs f2, 0xc(r7)
/* 803F5188  3C 80 80 64 */	lis r4, lit_554@ha /* 0x8064335C@ha */
/* 803F518C  C0 23 33 6C */	lfs f1, lit_558@l(r3)  /* 0x8064336C@l */
/* 803F5190  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F5194  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 803F5198  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F519C  C0 65 33 64 */	lfs f3, lit_556@l(r5)  /* 0x80643364@l */
/* 803F51A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F51A4  C0 24 33 5C */	lfs f1, lit_554@l(r4)  /* 0x8064335C@l */
/* 803F51A8  EC 43 10 2A */	fadds f2, f3, f2
/* 803F51AC  EC 01 00 2A */	fadds f0, f1, f0
/* 803F51B0  EC 24 10 28 */	fsubs f1, f4, f2
/* 803F51B4  EC 05 00 28 */	fsubs f0, f5, f0
/* 803F51B8  D4 23 15 58 */	stfsu f1, data_81171558@l(r3)  /* 0x81171558@l */
/* 803F51BC  D0 03 00 04 */	stfs f0, 4(r3)
lbl_803F51C0:
/* 803F51C0  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 803F51C4  41 82 00 D8 */	beq lbl_803F529C
/* 803F51C8  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F51CC  38 83 15 58 */	addi r4, r3, data_81171558@l /* 0x81171558@l */
/* 803F51D0  A0 64 00 1A */	lhz r3, 0x1a(r4)
/* 803F51D4  7C 03 00 40 */	cmplw r3, r0
/* 803F51D8  40 82 00 0C */	bne lbl_803F51E4
/* 803F51DC  28 03 00 00 */	cmplwi r3, 0
/* 803F51E0  40 82 00 1C */	bne lbl_803F51FC
lbl_803F51E4:
/* 803F51E4  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F51E8  B3 C4 00 1A */	sth r30, 0x1a(r4)
/* 803F51EC  38 63 15 58 */	addi r3, r3, data_81171558@l /* 0x81171558@l */
/* 803F51F0  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 803F51F4  38 63 00 1D */	addi r3, r3, 0x1d
/* 803F51F8  4B FC 07 AD */	bl mIN_copy_name_str
lbl_803F51FC:
/* 803F51FC  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F5200  38 80 00 10 */	li r4, 0x10
/* 803F5204  38 63 15 58 */	addi r3, r3, data_81171558@l /* 0x81171558@l */
/* 803F5208  38 A0 00 20 */	li r5, 0x20
/* 803F520C  3B 43 00 1D */	addi r26, r3, 0x1d
/* 803F5210  7F 43 D3 78 */	mr r3, r26
/* 803F5214  4B FC 74 11 */	bl func_803BC624
/* 803F5218  7C 60 1B 78 */	mr r0, r3
/* 803F521C  7F 43 D3 78 */	mr r3, r26
/* 803F5220  7C 04 03 78 */	mr r4, r0
/* 803F5224  38 A0 00 01 */	li r5, 1
/* 803F5228  4B FB A4 A9 */	bl mFont_GetStringWidth
/* 803F522C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803F5230  3C 00 43 30 */	lis r0, 0x4330
/* 803F5234  90 61 00 34 */	stw r3, 0x34(r1)
/* 803F5238  3C 80 80 64 */	lis r4, lit_563@ha /* 0x8064337C@ha */
/* 803F523C  3C 60 80 64 */	lis r3, lit_559@ha /* 0x80643370@ha */
/* 803F5240  C8 24 33 7C */	lfd f1, lit_563@l(r4)  /* 0x8064337C@l */
/* 803F5244  90 01 00 30 */	stw r0, 0x30(r1)
/* 803F5248  38 A3 33 70 */	addi r5, r3, lit_559@l /* 0x80643370@l */
/* 803F524C  3C 60 80 64 */	lis r3, lit_560@ha /* 0x80643374@ha */
/* 803F5250  C0 45 00 00 */	lfs f2, 0(r5)
/* 803F5254  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 803F5258  38 83 33 74 */	addi r4, r3, lit_560@l /* 0x80643374@l */
/* 803F525C  3C 60 80 64 */	lis r3, data_8064331C@ha /* 0x8064331C@ha */
/* 803F5260  EC 60 08 28 */	fsubs f3, f0, f1
/* 803F5264  C0 24 00 00 */	lfs f1, 0(r4)
/* 803F5268  C0 03 33 1C */	lfs f0, data_8064331C@l(r3)  /* 0x8064331C@l */
/* 803F526C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 803F5270  EC 22 08 28 */	fsubs f1, f2, f1
/* 803F5274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F5278  40 80 00 08 */	bge lbl_803F5280
/* 803F527C  FC 20 00 90 */	fmr f1, f0
lbl_803F5280:
/* 803F5280  3C 80 80 64 */	lis r4, lit_561@ha /* 0x80643378@ha */
/* 803F5284  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F5288  C0 04 33 78 */	lfs f0, lit_561@l(r4)  /* 0x80643378@l */
/* 803F528C  38 63 15 58 */	addi r3, r3, data_81171558@l /* 0x81171558@l */
/* 803F5290  EC 01 00 24 */	fdivs f0, f1, f0
/* 803F5294  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 803F5298  48 00 00 14 */	b lbl_803F52AC
lbl_803F529C:
/* 803F529C  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F52A0  38 00 00 00 */	li r0, 0
/* 803F52A4  38 63 15 58 */	addi r3, r3, data_81171558@l /* 0x81171558@l */
/* 803F52A8  B0 03 00 1A */	sth r0, 0x1a(r3)
lbl_803F52AC:
/* 803F52AC  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 803F52B0  28 00 00 00 */	cmplwi r0, 0
/* 803F52B4  41 82 00 50 */	beq lbl_803F5304
/* 803F52B8  4B FA FA 15 */	bl mFI_GetFieldId
/* 803F52BC  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803F52C0  40 82 00 10 */	bne lbl_803F52D0
/* 803F52C4  4B FA 5A 69 */	bl mEv_CheckFirstIntro
/* 803F52C8  2C 03 00 01 */	cmpwi r3, 1
/* 803F52CC  40 82 00 30 */	bne lbl_803F52FC
lbl_803F52D0:
/* 803F52D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F52D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F52D8  3C 63 00 02 */	addis r3, r3, 2
/* 803F52DC  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 803F52E0  28 00 00 01 */	cmplwi r0, 1
/* 803F52E4  40 82 00 20 */	bne lbl_803F5304
/* 803F52E8  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 803F52EC  2C 00 00 01 */	cmpwi r0, 1
/* 803F52F0  41 82 00 14 */	beq lbl_803F5304
/* 803F52F4  2C 00 00 03 */	cmpwi r0, 3
/* 803F52F8  41 82 00 0C */	beq lbl_803F5304
lbl_803F52FC:
/* 803F52FC  38 00 00 01 */	li r0, 1
/* 803F5300  98 1D 00 2D */	stb r0, 0x2d(r29)
lbl_803F5304:
/* 803F5304  39 61 00 50 */	addi r11, r1, 0x50
/* 803F5308  4B CA 5C 0D */	bl func_8009AF14
/* 803F530C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F5310  7C 08 03 A6 */	mtlr r0
/* 803F5314  38 21 00 50 */	addi r1, r1, 0x50
/* 803F5318  4E 80 00 20 */	blr 
