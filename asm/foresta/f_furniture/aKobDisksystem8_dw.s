lbl_80630D8C:
/* 80630D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630D90  7C 08 02 A6 */	mflr r0
/* 80630D94  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80630D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630D9C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80630DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80630DA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80630DA8  83 E5 00 00 */	lwz r31, 0(r5)
/* 80630DAC  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 80630DB0  38 7E 00 08 */	addi r3, r30, 8
/* 80630DB4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80630DB8  90 1E 00 00 */	stw r0, 0(r30)
/* 80630DBC  80 65 00 00 */	lwz r3, 0(r5)
/* 80630DC0  4B DD C6 15 */	bl _Matrix_to_Mtx_new
/* 80630DC4  90 7E 00 04 */	stw r3, 4(r30)
/* 80630DC8  3D 00 DB 06 */	lis r8, 0xDB06 /* 0xDB060020@ha */
/* 80630DCC  3C E0 81 0F */	lis r7, int_tak_nes_ds_tex_rgb_i4@ha /* 0x810EE2A0@ha */
/* 80630DD0  3C C0 81 0F */	lis r6, int_tak_nes_cl_pal@ha /* 0x810EB380@ha */
/* 80630DD4  81 5F 02 D0 */	lwz r10, 0x2d0(r31)
/* 80630DD8  3C A0 81 0F */	lis r5, int_tak_nes01_on_model@ha /* 0x810EEAE0@ha */
/* 80630DDC  3C 80 81 0F */	lis r4, int_tak_nes01_onT_model@ha /* 0x810EEC38@ha */
/* 80630DE0  3C 60 81 0F */	lis r3, int_tak_nes01_game_on_model@ha /* 0x810EEBD0@ha */
/* 80630DE4  38 0A 00 08 */	addi r0, r10, 8
/* 80630DE8  39 28 00 20 */	addi r9, r8, 0x0020 /* 0xDB060020@l */
/* 80630DEC  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80630DF0  38 07 E2 A0 */	addi r0, r7, int_tak_nes_ds_tex_rgb_i4@l /* 0x810EE2A0@l */
/* 80630DF4  39 08 00 24 */	addi r8, r8, 0x24
/* 80630DF8  38 E6 B3 80 */	addi r7, r6, int_tak_nes_cl_pal@l /* 0x810EB380@l */
/* 80630DFC  91 2A 00 00 */	stw r9, 0(r10)
/* 80630E00  3C C0 DE 00 */	lis r6, 0xde00
/* 80630E04  38 A5 EA E0 */	addi r5, r5, int_tak_nes01_on_model@l /* 0x810EEAE0@l */
/* 80630E08  38 84 EC 38 */	addi r4, r4, int_tak_nes01_onT_model@l /* 0x810EEC38@l */
/* 80630E0C  90 0A 00 04 */	stw r0, 4(r10)
/* 80630E10  38 03 EB D0 */	addi r0, r3, int_tak_nes01_game_on_model@l /* 0x810EEBD0@l */
/* 80630E14  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 80630E18  38 69 00 08 */	addi r3, r9, 8
/* 80630E1C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80630E20  91 09 00 00 */	stw r8, 0(r9)
/* 80630E24  90 E9 00 04 */	stw r7, 4(r9)
/* 80630E28  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80630E2C  38 67 00 08 */	addi r3, r7, 8
/* 80630E30  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80630E34  90 C7 00 00 */	stw r6, 0(r7)
/* 80630E38  90 A7 00 04 */	stw r5, 4(r7)
/* 80630E3C  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80630E40  38 65 00 08 */	addi r3, r5, 8
/* 80630E44  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80630E48  90 C5 00 00 */	stw r6, 0(r5)
/* 80630E4C  90 85 00 04 */	stw r4, 4(r5)
/* 80630E50  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 80630E54  38 64 00 08 */	addi r3, r4, 8
/* 80630E58  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80630E5C  90 C4 00 00 */	stw r6, 0(r4)
/* 80630E60  90 04 00 04 */	stw r0, 4(r4)
/* 80630E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80630E68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80630E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630E70  7C 08 03 A6 */	mtlr r0
/* 80630E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80630E78  4E 80 00 20 */	blr 
