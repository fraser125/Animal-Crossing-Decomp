lbl_804CF5B8:
/* 804CF5B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CF5BC  7C 08 02 A6 */	mflr r0
/* 804CF5C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CF5C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804CF5C8  4B BC B9 0D */	bl func_8009AED4
/* 804CF5CC  7C 7D 1B 78 */	mr r29, r3
/* 804CF5D0  7C 9E 23 78 */	mr r30, r4
/* 804CF5D4  4B EE A2 7D */	bl mKK_windowlight_alpha_get
/* 804CF5D8  3C 60 80 64 */	lis r3, lit_507@ha /* 0x8064632C@ha */
/* 804CF5DC  C0 03 63 2C */	lfs f0, lit_507@l(r3)  /* 0x8064632C@l */
/* 804CF5E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF5E4  41 80 00 A0 */	blt lbl_804CF684
/* 804CF5E8  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806462F0@ha */
/* 804CF5EC  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 804CF5F0  C0 23 62 F0 */	lfs f1, lit_391@l(r3)  /* 0x806462F0@l */
/* 804CF5F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CF5F8  40 82 00 08 */	bne lbl_804CF600
/* 804CF5FC  48 00 00 88 */	b lbl_804CF684
lbl_804CF600:
/* 804CF600  83 FE 00 00 */	lwz r31, 0(r30)
/* 804CF604  7F A3 EB 78 */	mr r3, r29
/* 804CF608  7F C4 F3 78 */	mr r4, r30
/* 804CF60C  4B FF FD 69 */	bl setup_mode_Ef_Room_Sunshine
/* 804CF610  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 804CF614  3C C0 80 9C */	lis r6, light_floor01_mode@ha /* 0x809C14A0@ha */
/* 804CF618  3C A0 80 9C */	lis r5, light_floorR01_vtx@ha /* 0x809C1520@ha */
/* 804CF61C  3C 80 80 9C */	lis r4, light_shine01_mode@ha /* 0x809C1440@ha */
/* 804CF620  38 08 00 08 */	addi r0, r8, 8
/* 804CF624  3C 60 80 9C */	lis r3, light_shineR01_vtx@ha /* 0x809C1480@ha */
/* 804CF628  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 804CF62C  3C E0 DE 00 */	lis r7, 0xde00
/* 804CF630  38 C6 14 A0 */	addi r6, r6, light_floor01_mode@l /* 0x809C14A0@l */
/* 804CF634  38 A5 15 20 */	addi r5, r5, light_floorR01_vtx@l /* 0x809C1520@l */
/* 804CF638  90 E8 00 00 */	stw r7, 0(r8)
/* 804CF63C  38 84 14 40 */	addi r4, r4, light_shine01_mode@l /* 0x809C1440@l */
/* 804CF640  38 03 14 80 */	addi r0, r3, light_shineR01_vtx@l /* 0x809C1480@l */
/* 804CF644  90 C8 00 04 */	stw r6, 4(r8)
/* 804CF648  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804CF64C  38 66 00 08 */	addi r3, r6, 8
/* 804CF650  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CF654  90 E6 00 00 */	stw r7, 0(r6)
/* 804CF658  90 A6 00 04 */	stw r5, 4(r6)
/* 804CF65C  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 804CF660  38 65 00 08 */	addi r3, r5, 8
/* 804CF664  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CF668  90 E5 00 00 */	stw r7, 0(r5)
/* 804CF66C  90 85 00 04 */	stw r4, 4(r5)
/* 804CF670  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 804CF674  38 64 00 08 */	addi r3, r4, 8
/* 804CF678  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CF67C  90 E4 00 00 */	stw r7, 0(r4)
/* 804CF680  90 04 00 04 */	stw r0, 4(r4)
lbl_804CF684:
/* 804CF684  39 61 00 20 */	addi r11, r1, 0x20
/* 804CF688  4B BC B8 99 */	bl func_8009AF20
/* 804CF68C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CF690  7C 08 03 A6 */	mtlr r0
/* 804CF694  38 21 00 20 */	addi r1, r1, 0x20
/* 804CF698  4E 80 00 20 */	blr 
