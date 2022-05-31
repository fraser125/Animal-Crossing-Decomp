lbl_804D04FC:
/* 804D04FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D0500  7C 08 02 A6 */	mflr r0
/* 804D0504  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D0508  39 61 00 20 */	addi r11, r1, 0x20
/* 804D050C  4B BC A9 C9 */	bl func_8009AED4
/* 804D0510  7C 7D 1B 78 */	mr r29, r3
/* 804D0514  7C 9E 23 78 */	mr r30, r4
/* 804D0518  4B EE 93 39 */	bl mKK_windowlight_alpha_get
/* 804D051C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806463C4@ha */
/* 804D0520  C0 03 63 C4 */	lfs f0, lit_506@l(r3)  /* 0x806463C4@l */
/* 804D0524  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0528  41 80 00 4C */	blt lbl_804D0574
/* 804D052C  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646388@ha */
/* 804D0530  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 804D0534  C0 23 63 88 */	lfs f1, lit_391@l(r3)  /* 0x80646388@l */
/* 804D0538  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D053C  40 82 00 08 */	bne lbl_804D0544
/* 804D0540  48 00 00 34 */	b lbl_804D0574
lbl_804D0544:
/* 804D0544  83 FE 00 00 */	lwz r31, 0(r30)
/* 804D0548  7F A3 EB 78 */	mr r3, r29
/* 804D054C  7F C4 F3 78 */	mr r4, r30
/* 804D0550  4B FF FE 55 */	bl setup_mode_Ef_Room_Sunshine_Posthouse
/* 804D0554  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804D0558  3C 60 80 9D */	lis r3, obj_yubinkyoku_shine_modelT@ha /* 0x809C8000@ha */
/* 804D055C  3C 80 DE 00 */	lis r4, 0xde00
/* 804D0560  38 A6 00 08 */	addi r5, r6, 8
/* 804D0564  38 03 80 00 */	addi r0, r3, obj_yubinkyoku_shine_modelT@l /* 0x809C8000@l */
/* 804D0568  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 804D056C  90 86 00 00 */	stw r4, 0(r6)
/* 804D0570  90 06 00 04 */	stw r0, 4(r6)
lbl_804D0574:
/* 804D0574  39 61 00 20 */	addi r11, r1, 0x20
/* 804D0578  4B BC A9 A9 */	bl func_8009AF20
/* 804D057C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D0580  7C 08 03 A6 */	mtlr r0
/* 804D0584  38 21 00 20 */	addi r1, r1, 0x20
/* 804D0588  4E 80 00 20 */	blr 
