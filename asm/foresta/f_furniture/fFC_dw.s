lbl_8062EC24:
/* 8062EC24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062EC28  7C 08 02 A6 */	mflr r0
/* 8062EC2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062EC30  39 61 00 20 */	addi r11, r1, 0x20
/* 8062EC34  4B A6 C2 9D */	bl func_8009AED0
/* 8062EC38  A0 83 00 00 */	lhz r4, 0(r3)
/* 8062EC3C  38 00 00 00 */	li r0, 0
/* 8062EC40  28 04 03 6A */	cmplwi r4, 0x36a
/* 8062EC44  41 80 00 10 */	blt lbl_8062EC54
/* 8062EC48  28 04 03 7D */	cmplwi r4, 0x37d
/* 8062EC4C  41 81 00 08 */	bgt lbl_8062EC54
/* 8062EC50  38 00 00 01 */	li r0, 1
lbl_8062EC54:
/* 8062EC54  20 00 00 00 */	subfic r0, r0, 0
/* 8062EC58  83 A5 00 00 */	lwz r29, 0(r5)
/* 8062EC5C  7C 60 01 10 */	subfe r3, r0, r0
/* 8062EC60  38 04 FC 96 */	addi r0, r4, -874
/* 8062EC64  7C 00 18 38 */	and r0, r0, r3
/* 8062EC68  3C 80 80 6D */	lis r4, fFC_texture_table@ha /* 0x806D56F8@ha */
/* 8062EC6C  3C 60 80 6D */	lis r3, fFC_palette_table@ha /* 0x806D5748@ha */
/* 8062EC70  83 9D 02 D0 */	lwz r28, 0x2d0(r29)
/* 8062EC74  54 00 10 3A */	slwi r0, r0, 2
/* 8062EC78  38 C4 56 F8 */	addi r6, r4, fFC_texture_table@l /* 0x806D56F8@l */
/* 8062EC7C  38 83 57 48 */	addi r4, r3, fFC_palette_table@l /* 0x806D5748@l */
/* 8062EC80  7F E6 00 2E */	lwzx r31, r6, r0
/* 8062EC84  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8062EC88  7F C4 00 2E */	lwzx r30, r4, r0
/* 8062EC8C  38 1C 00 08 */	addi r0, r28, 8
/* 8062EC90  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 8062EC94  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8062EC98  90 1C 00 00 */	stw r0, 0(r28)
/* 8062EC9C  80 65 00 00 */	lwz r3, 0(r5)
/* 8062ECA0  4B DD E7 35 */	bl _Matrix_to_Mtx_new
/* 8062ECA4  90 7C 00 04 */	stw r3, 4(r28)
/* 8062ECA8  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 8062ECAC  3C A0 81 0F */	lis r5, int_tak_nes01_on_model@ha /* 0x810EEAE0@ha */
/* 8062ECB0  3C 80 81 0F */	lis r4, int_tak_nes01_onT_model@ha /* 0x810EEC38@ha */
/* 8062ECB4  81 3D 02 D0 */	lwz r9, 0x2d0(r29)
/* 8062ECB8  3C 60 81 0F */	lis r3, int_tak_nes01_game_on_model@ha /* 0x810EEBD0@ha */
/* 8062ECBC  39 06 00 20 */	addi r8, r6, 0x0020 /* 0xDB060020@l */
/* 8062ECC0  38 E6 00 24 */	addi r7, r6, 0x24
/* 8062ECC4  38 09 00 08 */	addi r0, r9, 8
/* 8062ECC8  3C C0 DE 00 */	lis r6, 0xde00
/* 8062ECCC  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 8062ECD0  38 A5 EA E0 */	addi r5, r5, int_tak_nes01_on_model@l /* 0x810EEAE0@l */
/* 8062ECD4  38 84 EC 38 */	addi r4, r4, int_tak_nes01_onT_model@l /* 0x810EEC38@l */
/* 8062ECD8  38 03 EB D0 */	addi r0, r3, int_tak_nes01_game_on_model@l /* 0x810EEBD0@l */
/* 8062ECDC  91 09 00 00 */	stw r8, 0(r9)
/* 8062ECE0  93 E9 00 04 */	stw r31, 4(r9)
/* 8062ECE4  81 1D 02 D0 */	lwz r8, 0x2d0(r29)
/* 8062ECE8  38 68 00 08 */	addi r3, r8, 8
/* 8062ECEC  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8062ECF0  90 E8 00 00 */	stw r7, 0(r8)
/* 8062ECF4  93 C8 00 04 */	stw r30, 4(r8)
/* 8062ECF8  80 FD 02 D0 */	lwz r7, 0x2d0(r29)
/* 8062ECFC  38 67 00 08 */	addi r3, r7, 8
/* 8062ED00  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8062ED04  90 C7 00 00 */	stw r6, 0(r7)
/* 8062ED08  90 A7 00 04 */	stw r5, 4(r7)
/* 8062ED0C  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 8062ED10  38 65 00 08 */	addi r3, r5, 8
/* 8062ED14  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8062ED18  90 C5 00 00 */	stw r6, 0(r5)
/* 8062ED1C  90 85 00 04 */	stw r4, 4(r5)
/* 8062ED20  80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 8062ED24  38 64 00 08 */	addi r3, r4, 8
/* 8062ED28  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8062ED2C  90 C4 00 00 */	stw r6, 0(r4)
/* 8062ED30  90 04 00 04 */	stw r0, 4(r4)
/* 8062ED34  39 61 00 20 */	addi r11, r1, 0x20
/* 8062ED38  4B A6 C1 E5 */	bl func_8009AF1C
/* 8062ED3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062ED40  7C 08 03 A6 */	mtlr r0
/* 8062ED44  38 21 00 20 */	addi r1, r1, 0x20
/* 8062ED48  4E 80 00 20 */	blr 
