lbl_804CF4D4:
/* 804CF4D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CF4D8  7C 08 02 A6 */	mflr r0
/* 804CF4DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CF4E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804CF4E4  4B BC B9 F1 */	bl func_8009AED4
/* 804CF4E8  7C 7D 1B 78 */	mr r29, r3
/* 804CF4EC  7C 9E 23 78 */	mr r30, r4
/* 804CF4F0  4B EE A3 61 */	bl mKK_windowlight_alpha_get
/* 804CF4F4  3C 60 80 64 */	lis r3, lit_507@ha /* 0x8064632C@ha */
/* 804CF4F8  C0 03 63 2C */	lfs f0, lit_507@l(r3)  /* 0x8064632C@l */
/* 804CF4FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF500  41 80 00 A0 */	blt lbl_804CF5A0
/* 804CF504  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806462F0@ha */
/* 804CF508  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 804CF50C  C0 23 62 F0 */	lfs f1, lit_391@l(r3)  /* 0x806462F0@l */
/* 804CF510  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CF514  40 82 00 08 */	bne lbl_804CF51C
/* 804CF518  48 00 00 88 */	b lbl_804CF5A0
lbl_804CF51C:
/* 804CF51C  83 FE 00 00 */	lwz r31, 0(r30)
/* 804CF520  7F A3 EB 78 */	mr r3, r29
/* 804CF524  7F C4 F3 78 */	mr r4, r30
/* 804CF528  4B FF FE 4D */	bl setup_mode_Ef_Room_Sunshine
/* 804CF52C  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 804CF530  3C C0 80 9C */	lis r6, light_floor01_mode@ha /* 0x809C14A0@ha */
/* 804CF534  3C A0 80 9C */	lis r5, light_floorL01_vtx@ha /* 0x809C1508@ha */
/* 804CF538  3C 80 80 9C */	lis r4, light_shine01_mode@ha /* 0x809C1440@ha */
/* 804CF53C  38 08 00 08 */	addi r0, r8, 8
/* 804CF540  3C 60 80 9C */	lis r3, light_shineL01_vtx@ha /* 0x809C1460@ha */
/* 804CF544  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 804CF548  3C E0 DE 00 */	lis r7, 0xde00
/* 804CF54C  38 C6 14 A0 */	addi r6, r6, light_floor01_mode@l /* 0x809C14A0@l */
/* 804CF550  38 A5 15 08 */	addi r5, r5, light_floorL01_vtx@l /* 0x809C1508@l */
/* 804CF554  90 E8 00 00 */	stw r7, 0(r8)
/* 804CF558  38 84 14 40 */	addi r4, r4, light_shine01_mode@l /* 0x809C1440@l */
/* 804CF55C  38 03 14 60 */	addi r0, r3, light_shineL01_vtx@l /* 0x809C1460@l */
/* 804CF560  90 C8 00 04 */	stw r6, 4(r8)
/* 804CF564  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804CF568  38 66 00 08 */	addi r3, r6, 8
/* 804CF56C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CF570  90 E6 00 00 */	stw r7, 0(r6)
/* 804CF574  90 A6 00 04 */	stw r5, 4(r6)
/* 804CF578  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 804CF57C  38 65 00 08 */	addi r3, r5, 8
/* 804CF580  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CF584  90 E5 00 00 */	stw r7, 0(r5)
/* 804CF588  90 85 00 04 */	stw r4, 4(r5)
/* 804CF58C  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 804CF590  38 64 00 08 */	addi r3, r4, 8
/* 804CF594  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CF598  90 E4 00 00 */	stw r7, 0(r4)
/* 804CF59C  90 04 00 04 */	stw r0, 4(r4)
lbl_804CF5A0:
/* 804CF5A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804CF5A4  4B BC B9 7D */	bl func_8009AF20
/* 804CF5A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CF5AC  7C 08 03 A6 */	mtlr r0
/* 804CF5B0  38 21 00 20 */	addi r1, r1, 0x20
/* 804CF5B4  4E 80 00 20 */	blr 
