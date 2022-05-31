lbl_804DEEEC:
/* 804DEEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DEEF0  7C 08 02 A6 */	mflr r0
/* 804DEEF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DEEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 804DEEFC  4B BB BF D9 */	bl func_8009AED4
/* 804DEF00  7C 7D 1B 78 */	mr r29, r3
/* 804DEF04  7C 9E 23 78 */	mr r30, r4
/* 804DEF08  4B EF A7 39 */	bl get_player_actor_withoutCheck
/* 804DEF0C  7C 7F 1B 78 */	mr r31, r3
/* 804DEF10  4B FF FC E5 */	bl Player_actor_Check_AbleRadioExercise
/* 804DEF14  2C 03 00 00 */	cmpwi r3, 0
/* 804DEF18  40 82 00 0C */	bne lbl_804DEF24
/* 804DEF1C  38 60 00 00 */	li r3, 0
/* 804DEF20  48 00 00 D0 */	b lbl_804DEFF0
lbl_804DEF24:
/* 804DEF24  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804DEF28  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DEF2C  C0 5F 12 40 */	lfs f2, 0x1240(r31)
/* 804DEF30  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804DEF34  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DEF38  EC 22 08 28 */	fsubs f1, f2, f1
/* 804DEF3C  D0 3F 12 40 */	stfs f1, 0x1240(r31)
/* 804DEF40  C0 3F 12 40 */	lfs f1, 0x1240(r31)
/* 804DEF44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DEF48  40 80 00 08 */	bge lbl_804DEF50
/* 804DEF4C  D0 1F 12 40 */	stfs f0, 0x1240(r31)
lbl_804DEF50:
/* 804DEF50  80 9F 12 3C */	lwz r4, 0x123c(r31)
/* 804DEF54  7F E3 FB 78 */	mr r3, r31
/* 804DEF58  38 A1 00 08 */	addi r5, r1, 8
/* 804DEF5C  4B FF FE 6D */	bl Player_actor_Check_radio_exercise_command
/* 804DEF60  2C 03 00 00 */	cmpwi r3, 0
/* 804DEF64  41 80 00 40 */	blt lbl_804DEFA4
/* 804DEF68  80 1F 12 3C */	lwz r0, 0x123c(r31)
/* 804DEF6C  2C 00 00 00 */	cmpwi r0, 0
/* 804DEF70  41 80 00 28 */	blt lbl_804DEF98
/* 804DEF74  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804DEF78  C0 3F 12 40 */	lfs f1, 0x1240(r31)
/* 804DEF7C  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804DEF80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DEF84  40 81 00 20 */	ble lbl_804DEFA4
/* 804DEF88  90 7F 12 3C */	stw r3, 0x123c(r31)
/* 804DEF8C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804DEF90  D0 1F 12 40 */	stfs f0, 0x1240(r31)
/* 804DEF94  48 00 00 10 */	b lbl_804DEFA4
lbl_804DEF98:
/* 804DEF98  90 7F 12 3C */	stw r3, 0x123c(r31)
/* 804DEF9C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804DEFA0  D0 1F 12 40 */	stfs f0, 0x1240(r31)
lbl_804DEFA4:
/* 804DEFA4  2C 1E 00 00 */	cmpwi r30, 0
/* 804DEFA8  40 82 00 44 */	bne lbl_804DEFEC
/* 804DEFAC  80 9F 12 3C */	lwz r4, 0x123c(r31)
/* 804DEFB0  2C 04 00 00 */	cmpwi r4, 0
/* 804DEFB4  41 80 00 38 */	blt lbl_804DEFEC
/* 804DEFB8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DEFBC  C0 1F 12 40 */	lfs f0, 0x1240(r31)
/* 804DEFC0  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804DEFC4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804DEFC8  4C 40 13 82 */	cror 2, 0, 2
/* 804DEFCC  40 82 00 20 */	bne lbl_804DEFEC
/* 804DEFD0  7F A3 EB 78 */	mr r3, r29
/* 804DEFD4  38 A0 00 04 */	li r5, 4
/* 804DEFD8  48 02 7B 39 */	bl func_80506B10
/* 804DEFDC  2C 03 00 00 */	cmpwi r3, 0
/* 804DEFE0  41 82 00 0C */	beq lbl_804DEFEC
/* 804DEFE4  38 60 00 01 */	li r3, 1
/* 804DEFE8  48 00 00 08 */	b lbl_804DEFF0
lbl_804DEFEC:
/* 804DEFEC  38 60 00 00 */	li r3, 0
lbl_804DEFF0:
/* 804DEFF0  39 61 00 20 */	addi r11, r1, 0x20
/* 804DEFF4  4B BB BF 2D */	bl func_8009AF20
/* 804DEFF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DEFFC  7C 08 03 A6 */	mtlr r0
/* 804DF000  38 21 00 20 */	addi r1, r1, 0x20
/* 804DF004  4E 80 00 20 */	blr 
