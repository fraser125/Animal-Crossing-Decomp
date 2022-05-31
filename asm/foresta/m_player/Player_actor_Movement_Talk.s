lbl_804FAA70:
/* 804FAA70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FAA74  7C 08 02 A6 */	mflr r0
/* 804FAA78  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FAA7C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FAA80  4B BA 04 55 */	bl func_8009AED4
/* 804FAA84  7C 7D 1B 78 */	mr r29, r3
/* 804FAA88  83 E3 0D 18 */	lwz r31, 0xd18(r3)
/* 804FAA8C  83 C3 0D 1C */	lwz r30, 0xd1c(r3)
/* 804FAA90  4B FD AF 11 */	bl Player_actor_Movement_Base_Braking
/* 804FAA94  2C 1E 00 00 */	cmpwi r30, 0
/* 804FAA98  41 82 00 CC */	beq lbl_804FAB64
/* 804FAA9C  28 1F 00 00 */	cmplwi r31, 0
/* 804FAAA0  41 82 00 C8 */	beq lbl_804FAB68
/* 804FAAA4  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804FAAA8  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804FAAAC  38 A3 69 F4 */	addi r5, r3, lit_1027@l /* 0x806469F4@l */
/* 804FAAB0  A8 DF 00 B6 */	lha r6, 0xb6(r31)
/* 804FAAB4  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804FAAB8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FAABC  C8 85 00 00 */	lfd f4, 0(r5)
/* 804FAAC0  38 06 80 00 */	addi r0, r6, -32768
/* 804FAAC4  FC 40 28 34 */	frsqrte f2, f5
/* 804FAAC8  C8 64 69 FC */	lfd f3, lit_1028@l(r4)  /* 0x806469FC@l */
/* 804FAACC  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FAAD0  7C 04 07 34 */	extsh r4, r0
/* 804FAAD4  38 7D 00 DE */	addi r3, r29, 0xde
/* 804FAAD8  38 A0 09 C4 */	li r5, 0x9c4
/* 804FAADC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FAAE0  38 C0 00 32 */	li r6, 0x32
/* 804FAAE4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FAAE8  FC 25 00 72 */	fmul f1, f5, f1
/* 804FAAEC  FC 23 08 28 */	fsub f1, f3, f1
/* 804FAAF0  FC 42 00 72 */	fmul f2, f2, f1
/* 804FAAF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FAAF8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FAAFC  FC 25 00 72 */	fmul f1, f5, f1
/* 804FAB00  FC 23 08 28 */	fsub f1, f3, f1
/* 804FAB04  FC 42 00 72 */	fmul f2, f2, f1
/* 804FAB08  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FAB0C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FAB10  FC 25 00 72 */	fmul f1, f5, f1
/* 804FAB14  FC 23 08 28 */	fsub f1, f3, f1
/* 804FAB18  FC 22 00 72 */	fmul f1, f2, f1
/* 804FAB1C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FAB20  FC 20 08 18 */	frsp f1, f1
/* 804FAB24  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FAB28  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FAB2C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FAB30  4B EC 07 E1 */	bl add_calc_short_angle2
/* 804FAB34  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 804FAB38  7C 7E 1B 78 */	mr r30, r3
/* 804FAB3C  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 804FAB40  4B E9 F8 BD */	bl mDemo_Check_SpeakerAble
/* 804FAB44  2C 03 00 00 */	cmpwi r3, 0
/* 804FAB48  40 82 00 20 */	bne lbl_804FAB68
/* 804FAB4C  7F C3 F3 78 */	mr r3, r30
/* 804FAB50  4B E9 F8 D5 */	bl mDemo_Check_DiffAngle_forTalk
/* 804FAB54  2C 03 00 00 */	cmpwi r3, 0
/* 804FAB58  41 82 00 10 */	beq lbl_804FAB68
/* 804FAB5C  4B E9 F8 41 */	bl mDemo_Set_SpeakerAble
/* 804FAB60  48 00 00 08 */	b lbl_804FAB68
lbl_804FAB64:
/* 804FAB64  4B E9 F8 39 */	bl mDemo_Set_SpeakerAble
lbl_804FAB68:
/* 804FAB68  39 61 00 20 */	addi r11, r1, 0x20
/* 804FAB6C  4B BA 03 B5 */	bl func_8009AF20
/* 804FAB70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FAB74  7C 08 03 A6 */	mtlr r0
/* 804FAB78  38 21 00 20 */	addi r1, r1, 0x20
/* 804FAB7C  4E 80 00 20 */	blr 
