lbl_80461E7C:
/* 80461E7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80461E80  7C 08 02 A6 */	mflr r0
/* 80461E84  90 01 00 44 */	stw r0, 0x44(r1)
/* 80461E88  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80461E8C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80461E90  39 61 00 30 */	addi r11, r1, 0x30
/* 80461E94  4B C3 90 41 */	bl func_8009AED4
/* 80461E98  7C 7D 1B 78 */	mr r29, r3
/* 80461E9C  7C 9E 23 78 */	mr r30, r4
/* 80461EA0  4B FF A7 D9 */	bl get_now_mind_flag
/* 80461EA4  B0 7D 00 8E */	sth r3, 0x8e(r29)
/* 80461EA8  7F A3 EB 78 */	mr r3, r29
/* 80461EAC  7F C4 F3 78 */	mr r4, r30
/* 80461EB0  4B FF F4 F5 */	bl func_804613A4
/* 80461EB4  A8 7D 00 7E */	lha r3, 0x7e(r29)
/* 80461EB8  38 03 FF FF */	addi r0, r3, -1
/* 80461EBC  B0 1D 00 7E */	sth r0, 0x7e(r29)
/* 80461EC0  A8 1D 00 7E */	lha r0, 0x7e(r29)
/* 80461EC4  2C 00 00 00 */	cmpwi r0, 0
/* 80461EC8  40 80 00 0C */	bge lbl_80461ED4
/* 80461ECC  38 00 00 00 */	li r0, 0
/* 80461ED0  B0 1D 00 7E */	sth r0, 0x7e(r29)
lbl_80461ED4:
/* 80461ED4  A8 1D 00 7E */	lha r0, 0x7e(r29)
/* 80461ED8  2C 00 06 40 */	cmpwi r0, 0x640
/* 80461EDC  40 81 00 0C */	ble lbl_80461EE8
/* 80461EE0  38 00 06 40 */	li r0, 0x640
/* 80461EE4  B0 1D 00 7E */	sth r0, 0x7e(r29)
lbl_80461EE8:
/* 80461EE8  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80461EEC  2C 00 00 00 */	cmpwi r0, 0
/* 80461EF0  41 82 00 3C */	beq lbl_80461F2C
/* 80461EF4  A8 1D 00 7E */	lha r0, 0x7e(r29)
/* 80461EF8  2C 00 00 96 */	cmpwi r0, 0x96
/* 80461EFC  40 81 00 64 */	ble lbl_80461F60
/* 80461F00  3C 60 80 46 */	lis r3, minsect_batta_jump_process@ha /* 0x80461DE0@ha */
/* 80461F04  80 9D 00 04 */	lwz r4, 4(r29)
/* 80461F08  38 03 1D E0 */	addi r0, r3, minsect_batta_jump_process@l /* 0x80461DE0@l */
/* 80461F0C  7C 04 00 40 */	cmplw r4, r0
/* 80461F10  41 82 00 50 */	beq lbl_80461F60
/* 80461F14  7F A3 EB 78 */	mr r3, r29
/* 80461F18  7F C4 F3 78 */	mr r4, r30
/* 80461F1C  4B FF FE 31 */	bl minsect_batta_jump_process_init
/* 80461F20  38 00 00 00 */	li r0, 0
/* 80461F24  B0 1D 00 7E */	sth r0, 0x7e(r29)
/* 80461F28  48 00 00 38 */	b lbl_80461F60
lbl_80461F2C:
/* 80461F2C  A8 1D 00 7E */	lha r0, 0x7e(r29)
/* 80461F30  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80461F34  40 81 00 2C */	ble lbl_80461F60
/* 80461F38  3C 60 80 46 */	lis r3, minsect_batta_jump_process@ha /* 0x80461DE0@ha */
/* 80461F3C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80461F40  38 03 1D E0 */	addi r0, r3, minsect_batta_jump_process@l /* 0x80461DE0@l */
/* 80461F44  7C 04 00 40 */	cmplw r4, r0
/* 80461F48  41 82 00 18 */	beq lbl_80461F60
/* 80461F4C  7F A3 EB 78 */	mr r3, r29
/* 80461F50  7F C4 F3 78 */	mr r4, r30
/* 80461F54  4B FF FD F9 */	bl minsect_batta_jump_process_init
/* 80461F58  38 00 00 00 */	li r0, 0
/* 80461F5C  B0 1D 00 7E */	sth r0, 0x7e(r29)
lbl_80461F60:
/* 80461F60  80 BD 00 00 */	lwz r5, 0(r29)
/* 80461F64  2C 05 00 0F */	cmpwi r5, 0xf
/* 80461F68  41 80 01 2C */	blt lbl_80462094
/* 80461F6C  3C 60 80 46 */	lis r3, minsect_batta_jump_process@ha /* 0x80461DE0@ha */
/* 80461F70  80 9D 00 04 */	lwz r4, 4(r29)
/* 80461F74  38 03 1D E0 */	addi r0, r3, minsect_batta_jump_process@l /* 0x80461DE0@l */
/* 80461F78  7C 04 00 40 */	cmplw r4, r0
/* 80461F7C  41 82 01 18 */	beq lbl_80462094
/* 80461F80  7F C3 F3 78 */	mr r3, r30
/* 80461F84  3B E5 FF F1 */	addi r31, r5, -15
/* 80461F88  4B F7 76 B9 */	bl get_player_actor_withoutCheck
/* 80461F8C  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80461F90  38 81 00 10 */	addi r4, r1, 0x10
/* 80461F94  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80461F98  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80461F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461FA0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80461FA4  38 7D 00 1C */	addi r3, r29, 0x1c
/* 80461FA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80461FAC  4B F5 90 E1 */	bl search_position_distanceXZ
/* 80461FB0  3C 60 80 46 */	lis r3, minsect_batta_silent_process@ha /* 0x80461C20@ha */
/* 80461FB4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80461FB8  38 03 1C 20 */	addi r0, r3, minsect_batta_silent_process@l /* 0x80461C20@l */
/* 80461FBC  FF E0 08 90 */	fmr f31, f1
/* 80461FC0  7C 04 00 40 */	cmplw r4, r0
/* 80461FC4  41 82 00 64 */	beq lbl_80462028
/* 80461FC8  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80461FCC  2C 00 00 00 */	cmpwi r0, 0
/* 80461FD0  41 82 00 58 */	beq lbl_80462028
/* 80461FD4  80 1D 00 00 */	lwz r0, 0(r29)
/* 80461FD8  2C 00 00 11 */	cmpwi r0, 0x11
/* 80461FDC  40 82 00 20 */	bne lbl_80461FFC
/* 80461FE0  7F A3 EB 78 */	mr r3, r29
/* 80461FE4  4B FF F4 91 */	bl mi_batta_suzumushi_hane_anime
/* 80461FE8  A8 1D 00 82 */	lha r0, 0x82(r29)
/* 80461FEC  2C 00 00 00 */	cmpwi r0, 0
/* 80461FF0  41 81 00 0C */	bgt lbl_80461FFC
/* 80461FF4  38 00 00 07 */	li r0, 7
/* 80461FF8  B0 1D 00 82 */	sth r0, 0x82(r29)
lbl_80461FFC:
/* 80461FFC  3C 60 80 64 */	lis r3, lit_464@ha /* 0x806445D0@ha */
/* 80462000  C0 03 45 D0 */	lfs f0, lit_464@l(r3)  /* 0x806445D0@l */
/* 80462004  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80462008  40 80 00 8C */	bge lbl_80462094
/* 8046200C  3C 80 80 68 */	lis r4, batta_sound_data@ha /* 0x80686B2C@ha */
/* 80462010  7F A3 EB 78 */	mr r3, r29
/* 80462014  38 84 6B 2C */	addi r4, r4, batta_sound_data@l /* 0x80686B2C@l */
/* 80462018  38 BD 00 1C */	addi r5, r29, 0x1c
/* 8046201C  7C 84 F8 AE */	lbzx r4, r4, r31
/* 80462020  48 1C BF 25 */	bl sAdo_OngenPos
/* 80462024  48 00 00 70 */	b lbl_80462094
lbl_80462028:
/* 80462028  3C 60 80 46 */	lis r3, minsect_batta_silent_process@ha /* 0x80461C20@ha */
/* 8046202C  38 03 1C 20 */	addi r0, r3, minsect_batta_silent_process@l /* 0x80461C20@l */
/* 80462030  7C 04 00 40 */	cmplw r4, r0
/* 80462034  40 82 00 60 */	bne lbl_80462094
/* 80462038  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 8046203C  2C 00 00 00 */	cmpwi r0, 0
/* 80462040  40 82 00 54 */	bne lbl_80462094
/* 80462044  80 1D 00 00 */	lwz r0, 0(r29)
/* 80462048  2C 00 00 11 */	cmpwi r0, 0x11
/* 8046204C  40 82 00 20 */	bne lbl_8046206C
/* 80462050  7F A3 EB 78 */	mr r3, r29
/* 80462054  4B FF F4 21 */	bl mi_batta_suzumushi_hane_anime
/* 80462058  A8 1D 00 82 */	lha r0, 0x82(r29)
/* 8046205C  2C 00 00 00 */	cmpwi r0, 0
/* 80462060  41 81 00 0C */	bgt lbl_8046206C
/* 80462064  38 00 00 07 */	li r0, 7
/* 80462068  B0 1D 00 82 */	sth r0, 0x82(r29)
lbl_8046206C:
/* 8046206C  3C 60 80 64 */	lis r3, lit_464@ha /* 0x806445D0@ha */
/* 80462070  C0 03 45 D0 */	lfs f0, lit_464@l(r3)  /* 0x806445D0@l */
/* 80462074  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80462078  40 80 00 1C */	bge lbl_80462094
/* 8046207C  3C 80 80 68 */	lis r4, batta_sound_data@ha /* 0x80686B2C@ha */
/* 80462080  7F A3 EB 78 */	mr r3, r29
/* 80462084  38 84 6B 2C */	addi r4, r4, batta_sound_data@l /* 0x80686B2C@l */
/* 80462088  38 BD 00 1C */	addi r5, r29, 0x1c
/* 8046208C  7C 84 F8 AE */	lbzx r4, r4, r31
/* 80462090  48 1C BE B5 */	bl sAdo_OngenPos
lbl_80462094:
/* 80462094  81 9D 00 04 */	lwz r12, 4(r29)
/* 80462098  7F A3 EB 78 */	mr r3, r29
/* 8046209C  7F C4 F3 78 */	mr r4, r30
/* 804620A0  7D 89 03 A6 */	mtctr r12
/* 804620A4  4E 80 04 21 */	bctrl 
/* 804620A8  7F A3 EB 78 */	mr r3, r29
/* 804620AC  4B FF 8B 39 */	bl func_8045ABE4
/* 804620B0  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 804620B4  7F A3 EB 78 */	mr r3, r29
/* 804620B8  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 804620BC  EC 01 00 2A */	fadds f0, f1, f0
/* 804620C0  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 804620C4  4B FF A3 91 */	bl minsect_batta_ObjCheck
/* 804620C8  7F A3 EB 78 */	mr r3, r29
/* 804620CC  4B FF A0 89 */	bl minsect_tree_ObjCheck
/* 804620D0  7F A3 EB 78 */	mr r3, r29
/* 804620D4  4B FF A2 01 */	bl minsect_rock_ObjCheck
/* 804620D8  7F A3 EB 78 */	mr r3, r29
/* 804620DC  4B FF 9F B9 */	bl minsect_kanban_BGCheck
/* 804620E0  3C 60 80 64 */	lis r3, lit_1743@ha /* 0x806447A8@ha */
/* 804620E4  3C 80 80 64 */	lis r4, lit_1744@ha /* 0x806447AC@ha */
/* 804620E8  38 A3 47 A8 */	addi r5, r3, lit_1743@l /* 0x806447A8@l */
/* 804620EC  C0 44 47 AC */	lfs f2, lit_1744@l(r4)  /* 0x806447AC@l */
/* 804620F0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804620F4  7F A3 EB 78 */	mr r3, r29
/* 804620F8  4B FF 9B 31 */	bl minsect_garden_BGCheck
/* 804620FC  3C 60 80 64 */	lis r3, lit_871@ha /* 0x806446AC@ha */
/* 80462100  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80462104  38 A3 46 AC */	addi r5, r3, lit_871@l /* 0x806446AC@l */
/* 80462108  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8046210C  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80462110  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80462114  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80462118  FC 60 30 34 */	frsqrte f3, f6
/* 8046211C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80462120  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80462124  C8 85 00 00 */	lfd f4, 0(r5)
/* 80462128  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046212C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80462130  FC 23 00 F2 */	fmul f1, f3, f3
/* 80462134  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80462138  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046213C  FC 26 00 72 */	fmul f1, f6, f1
/* 80462140  FC 24 08 28 */	fsub f1, f4, f1
/* 80462144  FC 63 00 72 */	fmul f3, f3, f1
/* 80462148  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046214C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80462150  FC 26 00 72 */	fmul f1, f6, f1
/* 80462154  FC 24 08 28 */	fsub f1, f4, f1
/* 80462158  FC 63 00 72 */	fmul f3, f3, f1
/* 8046215C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80462160  FC 65 00 F2 */	fmul f3, f5, f3
/* 80462164  FC 26 00 72 */	fmul f1, f6, f1
/* 80462168  FC 24 08 28 */	fsub f1, f4, f1
/* 8046216C  FC 23 00 72 */	fmul f1, f3, f1
/* 80462170  FC 26 00 72 */	fmul f1, f6, f1
/* 80462174  FC 20 08 18 */	frsp f1, f1
/* 80462178  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8046217C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80462180  EC 22 08 28 */	fsubs f1, f2, f1
/* 80462184  EC 42 08 28 */	fsubs f2, f2, f1
/* 80462188  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046218C  40 81 00 54 */	ble lbl_804621E0
/* 80462190  FC 20 10 34 */	frsqrte f1, f2
/* 80462194  FC 01 00 72 */	fmul f0, f1, f1
/* 80462198  FC 25 00 72 */	fmul f1, f5, f1
/* 8046219C  FC 02 00 32 */	fmul f0, f2, f0
/* 804621A0  FC 04 00 28 */	fsub f0, f4, f0
/* 804621A4  FC 21 00 32 */	fmul f1, f1, f0
/* 804621A8  FC 01 00 72 */	fmul f0, f1, f1
/* 804621AC  FC 25 00 72 */	fmul f1, f5, f1
/* 804621B0  FC 02 00 32 */	fmul f0, f2, f0
/* 804621B4  FC 04 00 28 */	fsub f0, f4, f0
/* 804621B8  FC 21 00 32 */	fmul f1, f1, f0
/* 804621BC  FC 01 00 72 */	fmul f0, f1, f1
/* 804621C0  FC 25 00 72 */	fmul f1, f5, f1
/* 804621C4  FC 02 00 32 */	fmul f0, f2, f0
/* 804621C8  FC 04 00 28 */	fsub f0, f4, f0
/* 804621CC  FC 01 00 32 */	fmul f0, f1, f0
/* 804621D0  FC 02 00 32 */	fmul f0, f2, f0
/* 804621D4  FC 00 00 18 */	frsp f0, f0
/* 804621D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804621DC  C0 41 00 08 */	lfs f2, 8(r1)
lbl_804621E0:
/* 804621E0  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 804621E4  A8 9D 00 78 */	lha r4, 0x78(r29)
/* 804621E8  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 804621EC  38 7D 00 76 */	addi r3, r29, 0x76
/* 804621F0  C0 05 00 00 */	lfs f0, 0(r5)
/* 804621F4  38 A0 00 88 */	li r5, 0x88
/* 804621F8  38 C0 00 2D */	li r6, 0x2d
/* 804621FC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80462200  4B F5 91 11 */	bl add_calc_short_angle2
/* 80462204  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80462208  39 61 00 30 */	addi r11, r1, 0x30
/* 8046220C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80462210  4B C3 8D 11 */	bl func_8009AF20
/* 80462214  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80462218  7C 08 03 A6 */	mtlr r0
/* 8046221C  38 21 00 40 */	addi r1, r1, 0x40
/* 80462220  4E 80 00 20 */	blr 
