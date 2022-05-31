lbl_805B3DD0:
/* 805B3DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3DD4  7C 08 02 A6 */	mflr r0
/* 805B3DD8  38 80 00 0A */	li r4, 0xa
/* 805B3DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B3DE4  93 C1 00 08 */	stw r30, 8(r1)
/* 805B3DE8  83 E3 00 00 */	lwz r31, 0(r3)
/* 805B3DEC  38 60 00 47 */	li r3, 0x47
/* 805B3DF0  4B DE 9F DD */	bl mEv_get_save_area
/* 805B3DF4  28 03 00 00 */	cmplwi r3, 0
/* 805B3DF8  41 82 01 5C */	beq lbl_805B3F54
/* 805B3DFC  8B C3 00 15 */	lbz r30, 0x15(r3)
/* 805B3E00  28 1E 00 00 */	cmplwi r30, 0
/* 805B3E04  40 82 00 08 */	bne lbl_805B3E0C
/* 805B3E08  48 00 01 4C */	b lbl_805B3F54
lbl_805B3E0C:
/* 805B3E0C  7F E3 FB 78 */	mr r3, r31
/* 805B3E10  38 80 00 01 */	li r4, 1
/* 805B3E14  4B DF C3 25 */	bl mFont_SetMatrix
/* 805B3E18  81 5F 02 F0 */	lwz r10, 0x2f0(r31)
/* 805B3E1C  3C E0 FA 00 */	lis r7, 0xFA00 /* 0xFA000080@ha */
/* 805B3E20  67 C8 FF FF */	oris r8, r30, 0xffff
/* 805B3E24  3C C0 80 B9 */	lis r6, obj_e_mikanbox_copyrightT_model@ha /* 0x80B89620@ha */
/* 805B3E28  38 0A 00 08 */	addi r0, r10, 8
/* 805B3E2C  3C A0 01 00 */	lis r5, 0x0100 /* 0x01004008@ha */
/* 805B3E30  90 1F 02 F0 */	stw r0, 0x2f0(r31)
/* 805B3E34  3C 00 E7 00 */	lis r0, 0xe700
/* 805B3E38  3C 80 80 6C */	lis r4, obj_e_mikanbox_v@ha /* 0x806C5AD0@ha */
/* 805B3E3C  3C 60 06 00 */	lis r3, 0x0600 /* 0x06000204@ha */
/* 805B3E40  90 0A 00 00 */	stw r0, 0(r10)
/* 805B3E44  38 00 00 00 */	li r0, 0
/* 805B3E48  39 27 00 80 */	addi r9, r7, 0x0080 /* 0xFA000080@l */
/* 805B3E4C  61 08 FF 00 */	ori r8, r8, 0xff00
/* 805B3E50  90 0A 00 04 */	stw r0, 4(r10)
/* 805B3E54  3C E0 DE 00 */	lis r7, 0xde00
/* 805B3E58  38 C6 96 20 */	addi r6, r6, obj_e_mikanbox_copyrightT_model@l /* 0x80B89620@l */
/* 805B3E5C  38 A5 40 08 */	addi r5, r5, 0x4008 /* 0x01004008@l */
/* 805B3E60  81 7F 02 F0 */	lwz r11, 0x2f0(r31)
/* 805B3E64  38 84 5A D0 */	addi r4, r4, obj_e_mikanbox_v@l /* 0x806C5AD0@l */
/* 805B3E68  38 63 02 04 */	addi r3, r3, 0x0204 /* 0x06000204@l */
/* 805B3E6C  38 00 04 06 */	li r0, 0x406
/* 805B3E70  39 4B 00 08 */	addi r10, r11, 8
/* 805B3E74  91 5F 02 F0 */	stw r10, 0x2f0(r31)
/* 805B3E78  91 2B 00 00 */	stw r9, 0(r11)
/* 805B3E7C  91 0B 00 04 */	stw r8, 4(r11)
/* 805B3E80  81 3F 02 F0 */	lwz r9, 0x2f0(r31)
/* 805B3E84  39 09 00 08 */	addi r8, r9, 8
/* 805B3E88  91 1F 02 F0 */	stw r8, 0x2f0(r31)
/* 805B3E8C  90 E9 00 00 */	stw r7, 0(r9)
/* 805B3E90  90 C9 00 04 */	stw r6, 4(r9)
/* 805B3E94  80 FF 02 F0 */	lwz r7, 0x2f0(r31)
/* 805B3E98  38 C7 00 08 */	addi r6, r7, 8
/* 805B3E9C  90 DF 02 F0 */	stw r6, 0x2f0(r31)
/* 805B3EA0  90 A7 00 00 */	stw r5, 0(r7)
/* 805B3EA4  90 87 00 04 */	stw r4, 4(r7)
/* 805B3EA8  80 BF 02 F0 */	lwz r5, 0x2f0(r31)
/* 805B3EAC  38 85 00 08 */	addi r4, r5, 8
/* 805B3EB0  90 9F 02 F0 */	stw r4, 0x2f0(r31)
/* 805B3EB4  90 65 00 00 */	stw r3, 0(r5)
/* 805B3EB8  90 05 00 04 */	stw r0, 4(r5)
/* 805B3EBC  4B E5 83 19 */	bl Matrix_push
/* 805B3EC0  3C 60 80 65 */	lis r3, lit_608@ha /* 0x8064A8FC@ha */
/* 805B3EC4  3C 80 80 65 */	lis r4, lit_739@ha /* 0x8064A908@ha */
/* 805B3EC8  38 A3 A8 FC */	addi r5, r3, lit_608@l /* 0x8064A8FC@l */
/* 805B3ECC  C0 44 A9 08 */	lfs f2, lit_739@l(r4)  /* 0x8064A908@l */
/* 805B3ED0  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B3ED4  38 60 00 01 */	li r3, 1
/* 805B3ED8  FC 60 08 90 */	fmr f3, f1
/* 805B3EDC  4B E5 84 25 */	bl Matrix_translate
/* 805B3EE0  3C 60 80 65 */	lis r3, lit_513@ha /* 0x8064A8D4@ha */
/* 805B3EE4  3C 80 80 65 */	lis r4, lit_740@ha /* 0x8064A90C@ha */
/* 805B3EE8  38 A3 A8 D4 */	addi r5, r3, lit_513@l /* 0x8064A8D4@l */
/* 805B3EEC  C0 64 A9 0C */	lfs f3, lit_740@l(r4)  /* 0x8064A90C@l */
/* 805B3EF0  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B3EF4  38 60 00 01 */	li r3, 1
/* 805B3EF8  FC 40 08 90 */	fmr f2, f1
/* 805B3EFC  4B E5 84 F1 */	bl Matrix_scale
/* 805B3F00  83 DF 02 F0 */	lwz r30, 0x2f0(r31)
/* 805B3F04  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B3F08  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B3F0C  7F E3 FB 78 */	mr r3, r31
/* 805B3F10  38 9E 00 08 */	addi r4, r30, 8
/* 805B3F14  90 9F 02 F0 */	stw r4, 0x2f0(r31)
/* 805B3F18  90 1E 00 00 */	stw r0, 0(r30)
/* 805B3F1C  4B E5 94 B9 */	bl _Matrix_to_Mtx_new
/* 805B3F20  90 7E 00 04 */	stw r3, 4(r30)
/* 805B3F24  3C 60 80 B9 */	lis r3, obj_e_mikanbox_copyrightT_model2@ha /* 0x80B8AF20@ha */
/* 805B3F28  3C 80 DE 00 */	lis r4, 0xde00
/* 805B3F2C  80 BF 02 F0 */	lwz r5, 0x2f0(r31)
/* 805B3F30  38 03 AF 20 */	addi r0, r3, obj_e_mikanbox_copyrightT_model2@l /* 0x80B8AF20@l */
/* 805B3F34  38 65 00 08 */	addi r3, r5, 8
/* 805B3F38  90 7F 02 F0 */	stw r3, 0x2f0(r31)
/* 805B3F3C  90 85 00 00 */	stw r4, 0(r5)
/* 805B3F40  90 05 00 04 */	stw r0, 4(r5)
/* 805B3F44  4B E5 82 D1 */	bl Matrix_pull
/* 805B3F48  7F E3 FB 78 */	mr r3, r31
/* 805B3F4C  38 80 00 01 */	li r4, 1
/* 805B3F50  4B DF C2 E9 */	bl mFont_UnSetMatrix
lbl_805B3F54:
/* 805B3F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B3F5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B3F60  7C 08 03 A6 */	mtlr r0
/* 805B3F64  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3F68  4E 80 00 20 */	blr 
