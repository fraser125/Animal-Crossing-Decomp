lbl_804EDA2C:
/* 804EDA2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EDA30  7C 08 02 A6 */	mflr r0
/* 804EDA34  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EDA38  39 61 00 30 */	addi r11, r1, 0x30
/* 804EDA3C  4B BA D4 85 */	bl func_8009AEC0
/* 804EDA40  7C 78 1B 78 */	mr r24, r3
/* 804EDA44  7C 99 23 78 */	mr r25, r4
/* 804EDA48  83 83 0D 74 */	lwz r28, 0xd74(r3)
/* 804EDA4C  3B B8 0D 68 */	addi r29, r24, 0xd68
/* 804EDA50  83 E3 0D 60 */	lwz r31, 0xd60(r3)
/* 804EDA54  38 80 00 4D */	li r4, 0x4d
/* 804EDA58  2C 1C 00 00 */	cmpwi r28, 0
/* 804EDA5C  A3 C3 0D 64 */	lhz r30, 0xd64(r3)
/* 804EDA60  83 63 0D 78 */	lwz r27, 0xd78(r3)
/* 804EDA64  41 82 00 08 */	beq lbl_804EDA6C
/* 804EDA68  38 80 00 51 */	li r4, 0x51
lbl_804EDA6C:
/* 804EDA6C  93 98 0D 44 */	stw r28, 0xd44(r24)
/* 804EDA70  3C 60 80 64 */	lis r3, lit_790@ha /* 0x80646668@ha */
/* 804EDA74  38 C3 66 68 */	addi r6, r3, lit_790@l /* 0x80646668@l */
/* 804EDA78  7C 9A 23 78 */	mr r26, r4
/* 804EDA7C  80 FD 00 00 */	lwz r7, 0(r29)
/* 804EDA80  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EDA84  80 1D 00 04 */	lwz r0, 4(r29)
/* 804EDA88  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804EDA8C  C0 06 00 00 */	lfs f0, 0(r6)
/* 804EDA90  7F 03 C3 78 */	mr r3, r24
/* 804EDA94  90 F8 0D 24 */	stw r7, 0xd24(r24)
/* 804EDA98  38 C1 00 08 */	addi r6, r1, 8
/* 804EDA9C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EDAA0  38 A1 00 0C */	addi r5, r1, 0xc
/* 804EDAA4  90 18 0D 28 */	stw r0, 0xd28(r24)
/* 804EDAA8  80 1D 00 08 */	lwz r0, 8(r29)
/* 804EDAAC  90 18 0D 2C */	stw r0, 0xd2c(r24)
/* 804EDAB0  80 F8 0D 24 */	lwz r7, 0xd24(r24)
/* 804EDAB4  80 18 0D 28 */	lwz r0, 0xd28(r24)
/* 804EDAB8  90 F8 0D 18 */	stw r7, 0xd18(r24)
/* 804EDABC  90 18 0D 1C */	stw r0, 0xd1c(r24)
/* 804EDAC0  80 18 0D 2C */	lwz r0, 0xd2c(r24)
/* 804EDAC4  90 18 0D 20 */	stw r0, 0xd20(r24)
/* 804EDAC8  D0 18 0D 3C */	stfs f0, 0xd3c(r24)
/* 804EDACC  B3 D8 0D 40 */	sth r30, 0xd40(r24)
/* 804EDAD0  4B FE C4 91 */	bl Player_actor_SetupItem_Base1
/* 804EDAD4  2C 1C 00 00 */	cmpwi r28, 0
/* 804EDAD8  40 82 00 18 */	bne lbl_804EDAF0
/* 804EDADC  7F E3 FB 78 */	mr r3, r31
/* 804EDAE0  7F C4 F3 78 */	mr r4, r30
/* 804EDAE4  7F A5 EB 78 */	mr r5, r29
/* 804EDAE8  4B FE 99 19 */	bl Player_actor_putin_item_layer2
/* 804EDAEC  48 00 00 14 */	b lbl_804EDB00
lbl_804EDAF0:
/* 804EDAF0  7F 23 CB 78 */	mr r3, r25
/* 804EDAF4  7F E4 FB 78 */	mr r4, r31
/* 804EDAF8  7F C5 F3 78 */	mr r5, r30
/* 804EDAFC  4B FE 99 5D */	bl Player_actor_putin_furniture
lbl_804EDB00:
/* 804EDB00  2C 1F 00 00 */	cmpwi r31, 0
/* 804EDB04  40 80 00 24 */	bge lbl_804EDB28
/* 804EDB08  28 1E 1B A8 */	cmplwi r30, 0x1ba8
/* 804EDB0C  41 80 00 0C */	blt lbl_804EDB18
/* 804EDB10  28 1E 1B C7 */	cmplwi r30, 0x1bc7
/* 804EDB14  40 81 00 14 */	ble lbl_804EDB28
lbl_804EDB18:
/* 804EDB18  28 1E 1D 88 */	cmplwi r30, 0x1d88
/* 804EDB1C  41 80 00 18 */	blt lbl_804EDB34
/* 804EDB20  28 1E 1D A7 */	cmplwi r30, 0x1da7
/* 804EDB24  41 81 00 10 */	bgt lbl_804EDB34
lbl_804EDB28:
/* 804EDB28  38 00 00 00 */	li r0, 0
/* 804EDB2C  90 18 0D 48 */	stw r0, 0xd48(r24)
/* 804EDB30  48 00 00 0C */	b lbl_804EDB3C
lbl_804EDB34:
/* 804EDB34  38 00 00 01 */	li r0, 1
/* 804EDB38  90 18 0D 48 */	stw r0, 0xd48(r24)
lbl_804EDB3C:
/* 804EDB3C  2C 1B 00 00 */	cmpwi r27, 0
/* 804EDB40  41 82 00 1C */	beq lbl_804EDB5C
/* 804EDB44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EDB48  38 00 00 02 */	li r0, 2
/* 804EDB4C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EDB50  3C 63 00 02 */	addis r3, r3, 2
/* 804EDB54  80 63 60 38 */	lwz r3, 0x6038(r3)
/* 804EDB58  B0 03 00 10 */	sth r0, 0x10(r3)
lbl_804EDB5C:
/* 804EDB5C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EDB60  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EDB64  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EDB68  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EDB6C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EDB70  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EDB74  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804EDB78  7F 03 C3 78 */	mr r3, r24
/* 804EDB7C  FC 40 08 90 */	fmr f2, f1
/* 804EDB80  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804EDB84  7F 24 CB 78 */	mr r4, r25
/* 804EDB88  7F 45 D3 78 */	mr r5, r26
/* 804EDB8C  38 E0 00 00 */	li r7, 0
/* 804EDB90  39 00 00 02 */	li r8, 2
/* 804EDB94  4B FE 8C 7D */	bl Player_actor_InitAnimation_Base2
/* 804EDB98  7F 03 C3 78 */	mr r3, r24
/* 804EDB9C  7F 24 CB 78 */	mr r4, r25
/* 804EDBA0  4B FE 7D 59 */	bl Player_actor_setup_main_Base
/* 804EDBA4  7F 03 C3 78 */	mr r3, r24
/* 804EDBA8  4B FF 1E 1D */	bl Player_actor_sound_dai_ue_kakunou
/* 804EDBAC  39 61 00 30 */	addi r11, r1, 0x30
/* 804EDBB0  4B BA D3 5D */	bl func_8009AF0C
/* 804EDBB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EDBB8  7C 08 03 A6 */	mtlr r0
/* 804EDBBC  38 21 00 30 */	addi r1, r1, 0x30
/* 804EDBC0  4E 80 00 20 */	blr 
