lbl_804D17B4:
/* 804D17B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D17B8  7C 08 02 A6 */	mflr r0
/* 804D17BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D17C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804D17C4  4B BC 97 11 */	bl func_8009AED4
/* 804D17C8  7C 9F 23 78 */	mr r31, r4
/* 804D17CC  7C 7E 1B 78 */	mr r30, r3
/* 804D17D0  80 64 00 00 */	lwz r3, 0(r4)
/* 804D17D4  4B F1 39 35 */	bl _texture_z_light_fog_prim
/* 804D17D8  80 7F 00 00 */	lwz r3, 0(r31)
/* 804D17DC  4B F1 39 55 */	bl _texture_z_light_fog_prim_shadow
/* 804D17E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 804D17E4  4B F1 39 75 */	bl _texture_z_light_fog_prim_xlu
/* 804D17E8  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D17EC  8C 03 2D 08 */	lbzu r0, draw_status@l(r3)  /* 0x811D2D08@l */
/* 804D17F0  60 00 00 01 */	ori r0, r0, 1
/* 804D17F4  98 03 00 00 */	stb r0, 0(r3)
/* 804D17F8  4B EE 80 59 */	bl mKK_windowlight_alpha_get
/* 804D17FC  3C 60 80 64 */	lis r3, lit_601@ha /* 0x80646468@ha */
/* 804D1800  C0 03 64 68 */	lfs f0, lit_601@l(r3)  /* 0x80646468@l */
/* 804D1804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D1808  40 80 00 44 */	bge lbl_804D184C
/* 804D180C  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D1810  38 63 2D 08 */	addi r3, r3, draw_status@l /* 0x811D2D08@l */
/* 804D1814  88 63 00 00 */	lbz r3, 0(r3)
/* 804D1818  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804D181C  41 82 01 10 */	beq lbl_804D192C
/* 804D1820  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804D1824  41 82 01 08 */	beq lbl_804D192C
/* 804D1828  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804D182C  40 82 01 00 */	bne lbl_804D192C
/* 804D1830  7F C3 F3 78 */	mr r3, r30
/* 804D1834  7F E4 FB 78 */	mr r4, r31
/* 804D1838  4B FF FE E5 */	bl BG_draw_Minsect_niwa
/* 804D183C  7F C3 F3 78 */	mr r3, r30
/* 804D1840  7F E4 FB 78 */	mr r4, r31
/* 804D1844  4B FF FE 01 */	bl BG_draw_Minsect
/* 804D1848  48 00 00 E4 */	b lbl_804D192C
lbl_804D184C:
/* 804D184C  3C 60 80 64 */	lis r3, lit_393@ha /* 0x80646420@ha */
/* 804D1850  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 804D1854  C0 23 64 20 */	lfs f1, lit_393@l(r3)  /* 0x80646420@l */
/* 804D1858  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D185C  40 82 00 44 */	bne lbl_804D18A0
/* 804D1860  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D1864  38 63 2D 08 */	addi r3, r3, draw_status@l /* 0x811D2D08@l */
/* 804D1868  88 63 00 00 */	lbz r3, 0(r3)
/* 804D186C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804D1870  41 82 00 BC */	beq lbl_804D192C
/* 804D1874  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804D1878  41 82 00 B4 */	beq lbl_804D192C
/* 804D187C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804D1880  40 82 00 AC */	bne lbl_804D192C
/* 804D1884  7F C3 F3 78 */	mr r3, r30
/* 804D1888  7F E4 FB 78 */	mr r4, r31
/* 804D188C  4B FF FE 91 */	bl BG_draw_Minsect_niwa
/* 804D1890  7F C3 F3 78 */	mr r3, r30
/* 804D1894  7F E4 FB 78 */	mr r4, r31
/* 804D1898  4B FF FD AD */	bl BG_draw_Minsect
/* 804D189C  48 00 00 90 */	b lbl_804D192C
lbl_804D18A0:
/* 804D18A0  83 BF 00 00 */	lwz r29, 0(r31)
/* 804D18A4  7F C3 F3 78 */	mr r3, r30
/* 804D18A8  7F E4 FB 78 */	mr r4, r31
/* 804D18AC  4B FF FE 71 */	bl BG_draw_Minsect_niwa
/* 804D18B0  7F C3 F3 78 */	mr r3, r30
/* 804D18B4  7F E4 FB 78 */	mr r4, r31
/* 804D18B8  4B FF FA DD */	bl setup_mode_Ef_Room_Sunshine_Minsect
/* 804D18BC  80 FD 02 E0 */	lwz r7, 0x2e0(r29)
/* 804D18C0  3C 80 80 9C */	lis r4, obj_museum4_shine_1T_model@ha /* 0x809C1D70@ha */
/* 804D18C4  3C A0 DE 00 */	lis r5, 0xde00
/* 804D18C8  7F C3 F3 78 */	mr r3, r30
/* 804D18CC  38 C7 00 08 */	addi r6, r7, 8
/* 804D18D0  38 04 1D 70 */	addi r0, r4, obj_museum4_shine_1T_model@l /* 0x809C1D70@l */
/* 804D18D4  90 DD 02 E0 */	stw r6, 0x2e0(r29)
/* 804D18D8  7F E4 FB 78 */	mr r4, r31
/* 804D18DC  90 A7 00 00 */	stw r5, 0(r7)
/* 804D18E0  90 07 00 04 */	stw r0, 4(r7)
/* 804D18E4  4B FF FC 09 */	bl setup_mode_Ef_Room_Sunshine_Minsect_decal
/* 804D18E8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804D18EC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804D18F0  80 63 00 00 */	lwz r3, 0(r3)
/* 804D18F4  A8 03 1B 14 */	lha r0, 0x1b14(r3)
/* 804D18F8  2C 00 00 00 */	cmpwi r0, 0
/* 804D18FC  40 82 00 24 */	bne lbl_804D1920
/* 804D1900  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 804D1904  3C 60 80 9C */	lis r3, obj_museum4_shine_2T_model@ha /* 0x809C1CB0@ha */
/* 804D1908  3C 80 DE 00 */	lis r4, 0xde00
/* 804D190C  38 A6 00 08 */	addi r5, r6, 8
/* 804D1910  38 03 1C B0 */	addi r0, r3, obj_museum4_shine_2T_model@l /* 0x809C1CB0@l */
/* 804D1914  90 BD 02 D0 */	stw r5, 0x2d0(r29)
/* 804D1918  90 86 00 00 */	stw r4, 0(r6)
/* 804D191C  90 06 00 04 */	stw r0, 4(r6)
lbl_804D1920:
/* 804D1920  7F C3 F3 78 */	mr r3, r30
/* 804D1924  7F E4 FB 78 */	mr r4, r31
/* 804D1928  4B FF FD 1D */	bl BG_draw_Minsect
lbl_804D192C:
/* 804D192C  39 61 00 20 */	addi r11, r1, 0x20
/* 804D1930  4B BC 95 F1 */	bl func_8009AF20
/* 804D1934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D1938  7C 08 03 A6 */	mtlr r0
/* 804D193C  38 21 00 20 */	addi r1, r1, 0x20
/* 804D1940  4E 80 00 20 */	blr 
