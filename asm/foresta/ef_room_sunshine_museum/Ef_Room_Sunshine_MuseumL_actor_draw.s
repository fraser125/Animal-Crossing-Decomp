lbl_804D0D04:
/* 804D0D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D0D08  7C 08 02 A6 */	mflr r0
/* 804D0D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D0D10  39 61 00 20 */	addi r11, r1, 0x20
/* 804D0D14  4B BC A1 C1 */	bl func_8009AED4
/* 804D0D18  7C 7D 1B 78 */	mr r29, r3
/* 804D0D1C  7C 9E 23 78 */	mr r30, r4
/* 804D0D20  4B EE 8B 31 */	bl mKK_windowlight_alpha_get
/* 804D0D24  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80646414@ha */
/* 804D0D28  C0 03 64 14 */	lfs f0, lit_510@l(r3)  /* 0x80646414@l */
/* 804D0D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0D30  41 80 00 64 */	blt lbl_804D0D94
/* 804D0D34  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806463D0@ha */
/* 804D0D38  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 804D0D3C  C0 23 63 D0 */	lfs f1, lit_391@l(r3)  /* 0x806463D0@l */
/* 804D0D40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D0D44  41 82 00 50 */	beq lbl_804D0D94
/* 804D0D48  83 FE 00 00 */	lwz r31, 0(r30)
/* 804D0D4C  7F A3 EB 78 */	mr r3, r29
/* 804D0D50  7F C4 F3 78 */	mr r4, r30
/* 804D0D54  4B FF FD E9 */	bl setup_mode_Ef_Room_Sunshine_Museum
/* 804D0D58  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804D0D5C  3C 80 80 9C */	lis r4, obj_museum1_shine_model@ha /* 0x809C7760@ha */
/* 804D0D60  3C 60 80 9C */	lis r3, obj_museum1_shine_modelT@ha /* 0x809C76A8@ha */
/* 804D0D64  3C A0 DE 00 */	lis r5, 0xde00
/* 804D0D68  38 06 00 08 */	addi r0, r6, 8
/* 804D0D6C  38 84 77 60 */	addi r4, r4, obj_museum1_shine_model@l /* 0x809C7760@l */
/* 804D0D70  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 804D0D74  38 03 76 A8 */	addi r0, r3, obj_museum1_shine_modelT@l /* 0x809C76A8@l */
/* 804D0D78  90 A6 00 00 */	stw r5, 0(r6)
/* 804D0D7C  90 86 00 04 */	stw r4, 4(r6)
/* 804D0D80  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 804D0D84  38 64 00 08 */	addi r3, r4, 8
/* 804D0D88  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804D0D8C  90 A4 00 00 */	stw r5, 0(r4)
/* 804D0D90  90 04 00 04 */	stw r0, 4(r4)
lbl_804D0D94:
/* 804D0D94  39 61 00 20 */	addi r11, r1, 0x20
/* 804D0D98  4B BC A1 89 */	bl func_8009AF20
/* 804D0D9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D0DA0  7C 08 03 A6 */	mtlr r0
/* 804D0DA4  38 21 00 20 */	addi r1, r1, 0x20
/* 804D0DA8  4E 80 00 20 */	blr 
