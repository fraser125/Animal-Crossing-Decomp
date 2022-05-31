lbl_80460864:
/* 80460864  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80460868  7C 08 02 A6 */	mflr r0
/* 8046086C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80460870  39 61 00 30 */	addi r11, r1, 0x30
/* 80460874  4B C3 A6 61 */	bl func_8009AED4
/* 80460878  7C 9E 23 78 */	mr r30, r4
/* 8046087C  7C 7D 1B 78 */	mr r29, r3
/* 80460880  7F C3 F3 78 */	mr r3, r30
/* 80460884  4B F7 8D BD */	bl get_player_actor_withoutCheck
/* 80460888  7C 7F 1B 78 */	mr r31, r3
/* 8046088C  7F A3 EB 78 */	mr r3, r29
/* 80460890  7F C4 F3 78 */	mr r4, r30
/* 80460894  38 A1 00 08 */	addi r5, r1, 8
/* 80460898  4B FF E4 DD */	bl minsect_tonbo_rock_target_set
/* 8046089C  A8 9D 00 6E */	lha r4, 0x6e(r29)
/* 804608A0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 804608A4  C0 23 45 BC */	lfs f1, lit_459@l(r3)  /* 0x806445BC@l */
/* 804608A8  38 04 FF FF */	addi r0, r4, -1
/* 804608AC  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 804608B0  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 804608B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804608B8  40 81 00 6C */	ble lbl_80460924
/* 804608BC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 804608C0  FC 00 00 1E */	fctiwz f0, f0
/* 804608C4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804608C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804608CC  2C 00 00 01 */	cmpwi r0, 1
/* 804608D0  40 82 00 A4 */	bne lbl_80460974
/* 804608D4  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 804608D8  2C 00 00 00 */	cmpwi r0, 0
/* 804608DC  40 80 00 98 */	bge lbl_80460974
/* 804608E0  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 804608E4  4B BF C4 11 */	bl fqrand
/* 804608E8  3C 60 80 64 */	lis r3, lit_676@ha /* 0x8064464C@ha */
/* 804608EC  C0 03 46 4C */	lfs f0, lit_676@l(r3)  /* 0x8064464C@l */
/* 804608F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804608F4  FC 00 00 1E */	fctiwz f0, f0
/* 804608F8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804608FC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80460900  38 03 00 3C */	addi r0, r3, 0x3c
/* 80460904  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 80460908  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 8046090C  2C 00 00 00 */	cmpwi r0, 0
/* 80460910  40 82 00 64 */	bne lbl_80460974
/* 80460914  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 80460918  1C 00 00 05 */	mulli r0, r0, 5
/* 8046091C  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 80460920  48 00 00 54 */	b lbl_80460974
lbl_80460924:
/* 80460924  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 80460928  2C 00 00 00 */	cmpwi r0, 0
/* 8046092C  40 80 00 48 */	bge lbl_80460974
/* 80460930  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80460934  2C 00 00 01 */	cmpwi r0, 1
/* 80460938  40 82 00 28 */	bne lbl_80460960
/* 8046093C  4B BF C3 B9 */	bl fqrand
/* 80460940  3C 60 80 64 */	lis r3, lit_465@ha /* 0x806445D4@ha */
/* 80460944  C0 03 45 D4 */	lfs f0, lit_465@l(r3)  /* 0x806445D4@l */
/* 80460948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046094C  40 81 00 14 */	ble lbl_80460960
/* 80460950  7F A3 EB 78 */	mr r3, r29
/* 80460954  7F C4 F3 78 */	mr r4, r30
/* 80460958  48 00 01 51 */	bl minsect_tonbo_fly_process_init
/* 8046095C  48 00 00 18 */	b lbl_80460974
lbl_80460960:
/* 80460960  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80460964  38 00 00 10 */	li r0, 0x10
/* 80460968  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8046096C  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80460970  B0 1D 00 6E */	sth r0, 0x6e(r29)
lbl_80460974:
/* 80460974  7F A3 EB 78 */	mr r3, r29
/* 80460978  7F C4 F3 78 */	mr r4, r30
/* 8046097C  4B FF DF E5 */	bl mi_tonbo_check_player
/* 80460980  A8 7D 00 82 */	lha r3, 0x82(r29)
/* 80460984  38 03 FF FF */	addi r0, r3, -1
/* 80460988  B0 1D 00 82 */	sth r0, 0x82(r29)
/* 8046098C  A8 1D 00 82 */	lha r0, 0x82(r29)
/* 80460990  2C 00 00 00 */	cmpwi r0, 0
/* 80460994  40 80 00 0C */	bge lbl_804609A0
/* 80460998  38 00 00 00 */	li r0, 0
/* 8046099C  B0 1D 00 82 */	sth r0, 0x82(r29)
lbl_804609A0:
/* 804609A0  A8 1D 00 82 */	lha r0, 0x82(r29)
/* 804609A4  2C 00 06 40 */	cmpwi r0, 0x640
/* 804609A8  40 81 00 0C */	ble lbl_804609B4
/* 804609AC  38 00 06 40 */	li r0, 0x640
/* 804609B0  B0 1D 00 82 */	sth r0, 0x82(r29)
lbl_804609B4:
/* 804609B4  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 804609B8  2C 00 00 00 */	cmpwi r0, 0
/* 804609BC  41 82 00 28 */	beq lbl_804609E4
/* 804609C0  A8 1D 00 82 */	lha r0, 0x82(r29)
/* 804609C4  2C 00 00 96 */	cmpwi r0, 0x96
/* 804609C8  40 81 00 3C */	ble lbl_80460A04
/* 804609CC  7F A3 EB 78 */	mr r3, r29
/* 804609D0  7F C4 F3 78 */	mr r4, r30
/* 804609D4  48 00 00 D5 */	bl minsect_tonbo_fly_process_init
/* 804609D8  38 00 00 00 */	li r0, 0
/* 804609DC  B0 1D 00 82 */	sth r0, 0x82(r29)
/* 804609E0  48 00 00 24 */	b lbl_80460A04
lbl_804609E4:
/* 804609E4  A8 1D 00 82 */	lha r0, 0x82(r29)
/* 804609E8  2C 00 05 DC */	cmpwi r0, 0x5dc
/* 804609EC  40 81 00 18 */	ble lbl_80460A04
/* 804609F0  7F A3 EB 78 */	mr r3, r29
/* 804609F4  7F C4 F3 78 */	mr r4, r30
/* 804609F8  48 00 00 B1 */	bl minsect_tonbo_fly_process_init
/* 804609FC  38 00 00 00 */	li r0, 0
/* 80460A00  B0 1D 00 82 */	sth r0, 0x82(r29)
lbl_80460A04:
/* 80460A04  3C 60 80 64 */	lis r3, lit_1509@ha /* 0x8064474C@ha */
/* 80460A08  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80460A0C  C0 03 47 4C */	lfs f0, lit_1509@l(r3)  /* 0x8064474C@l */
/* 80460A10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80460A14  40 81 00 18 */	ble lbl_80460A2C
/* 80460A18  7F A3 EB 78 */	mr r3, r29
/* 80460A1C  7F C4 F3 78 */	mr r4, r30
/* 80460A20  4B FF E5 A9 */	bl minsect_tonbo_suprised_rest_player
/* 80460A24  2C 03 00 00 */	cmpwi r3, 0
/* 80460A28  40 82 00 68 */	bne lbl_80460A90
lbl_80460A2C:
/* 80460A2C  3C 60 80 64 */	lis r3, lit_1460@ha /* 0x80644740@ha */
/* 80460A30  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80460A34  C0 03 47 40 */	lfs f0, lit_1460@l(r3)  /* 0x80644740@l */
/* 80460A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80460A3C  40 81 00 18 */	ble lbl_80460A54
/* 80460A40  7F A3 EB 78 */	mr r3, r29
/* 80460A44  7F C4 F3 78 */	mr r4, r30
/* 80460A48  4B FF E5 81 */	bl minsect_tonbo_suprised_rest_player
/* 80460A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80460A50  40 82 00 40 */	bne lbl_80460A90
lbl_80460A54:
/* 80460A54  A8 1D 00 74 */	lha r0, 0x74(r29)
/* 80460A58  2C 00 00 06 */	cmpwi r0, 6
/* 80460A5C  41 80 00 1C */	blt lbl_80460A78
/* 80460A60  A8 7F 0E 16 */	lha r3, 0xe16(r31)
/* 80460A64  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80460A68  A8 9D 00 6A */	lha r4, 0x6a(r29)
/* 80460A6C  7C 03 00 50 */	subf r0, r3, r0
/* 80460A70  7C 04 02 14 */	add r0, r4, r0
/* 80460A74  B0 1D 00 6A */	sth r0, 0x6a(r29)
lbl_80460A78:
/* 80460A78  80 61 00 08 */	lwz r3, 8(r1)
/* 80460A7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80460A80  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 80460A84  90 1D 00 20 */	stw r0, 0x20(r29)
/* 80460A88  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80460A8C  90 1D 00 24 */	stw r0, 0x24(r29)
lbl_80460A90:
/* 80460A90  39 61 00 30 */	addi r11, r1, 0x30
/* 80460A94  4B C3 A4 8D */	bl func_8009AF20
/* 80460A98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80460A9C  7C 08 03 A6 */	mtlr r0
/* 80460AA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80460AA4  4E 80 00 20 */	blr 
