lbl_80623E70:
/* 80623E70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80623E74  7C 08 02 A6 */	mflr r0
/* 80623E78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80623E7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80623E80  4B A7 70 51 */	bl func_8009AED0
/* 80623E84  7C 7C 1B 78 */	mr r28, r3
/* 80623E88  7C 9D 23 78 */	mr r29, r4
/* 80623E8C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80623E90  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 80623E94  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 80623E98  83 FD 00 00 */	lwz r31, 0(r29)
/* 80623E9C  90 61 00 08 */	stw r3, 8(r1)
/* 80623EA0  7F E3 FB 78 */	mr r3, r31
/* 80623EA4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80623EA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80623EAC  4B DC 12 AD */	bl _texture_z_light_fog_prim_xlu
/* 80623EB0  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80623EB4  38 60 00 00 */	li r3, 0
/* 80623EB8  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 80623EBC  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 80623EC0  4B DE 84 41 */	bl Matrix_translate
/* 80623EC4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80623EC8  38 60 00 01 */	li r3, 1
/* 80623ECC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80623ED0  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80623ED4  4B DE 85 19 */	bl Matrix_scale
/* 80623ED8  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 80623EDC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80623EE0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80623EE4  38 7E 00 08 */	addi r3, r30, 8
/* 80623EE8  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80623EEC  90 1E 00 00 */	stw r0, 0(r30)
/* 80623EF0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80623EF4  4B DE 94 E1 */	bl _Matrix_to_Mtx_new
/* 80623EF8  90 7E 00 04 */	stw r3, 4(r30)
/* 80623EFC  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 80623F00  3C 60 80 CC */	lis r3, ef_turi_hamon01_00_modelT@ha /* 0x80CC1960@ha */
/* 80623F04  3C 80 DE 00 */	lis r4, 0xde00
/* 80623F08  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80623F0C  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFA0000FF@l */
/* 80623F10  38 03 19 60 */	addi r0, r3, ef_turi_hamon01_00_modelT@l /* 0x80CC1960@l */
/* 80623F14  38 66 00 08 */	addi r3, r6, 8
/* 80623F18  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80623F1C  90 A6 00 00 */	stw r5, 0(r6)
/* 80623F20  A8 7C 00 4C */	lha r3, 0x4c(r28)
/* 80623F24  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80623F28  64 63 FF FF */	oris r3, r3, 0xffff
/* 80623F2C  60 63 FF 00 */	ori r3, r3, 0xff00
/* 80623F30  90 66 00 04 */	stw r3, 4(r6)
/* 80623F34  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80623F38  38 65 00 08 */	addi r3, r5, 8
/* 80623F3C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80623F40  90 85 00 00 */	stw r4, 0(r5)
/* 80623F44  90 05 00 04 */	stw r0, 4(r5)
/* 80623F48  39 61 00 30 */	addi r11, r1, 0x30
/* 80623F4C  4B A7 6F D1 */	bl func_8009AF1C
/* 80623F50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80623F54  7C 08 03 A6 */	mtlr r0
/* 80623F58  38 21 00 30 */	addi r1, r1, 0x30
/* 80623F5C  4E 80 00 20 */	blr 
