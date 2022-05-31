lbl_8063F7C4:
/* 8063F7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F7C8  7C 08 02 A6 */	mflr r0
/* 8063F7CC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063F7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F7D4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063F7D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F7DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8063F7E0  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063F7E4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063F7E8  38 7E 00 08 */	addi r3, r30, 8
/* 8063F7EC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F7F0  90 1E 00 00 */	stw r0, 0(r30)
/* 8063F7F4  80 65 00 00 */	lwz r3, 0(r5)
/* 8063F7F8  4B DC DB DD */	bl _Matrix_to_Mtx_new
/* 8063F7FC  90 7E 00 04 */	stw r3, 4(r30)
/* 8063F800  3D 00 DB 06 */	lis r8, 0xDB06 /* 0xDB060020@ha */
/* 8063F804  3C E0 81 0F */	lis r7, int_tak_nes_af_tex_rgb_ci4@ha /* 0x810EBEA0@ha */
/* 8063F808  3C C0 81 0F */	lis r6, int_tak_nes_af_tex_rgb_ci4_pal@ha /* 0x810EB3A0@ha */
/* 8063F80C  81 5F 02 D0 */	lwz r10, 0x2d0(r31)
/* 8063F810  3C A0 81 0F */	lis r5, int_tak_nes01_on_model@ha /* 0x810EEAE0@ha */
/* 8063F814  3C 80 81 0F */	lis r4, int_tak_nes01_onT_model@ha /* 0x810EEC38@ha */
/* 8063F818  3C 60 81 0F */	lis r3, int_tak_nes01_game_on_model@ha /* 0x810EEBD0@ha */
/* 8063F81C  38 0A 00 08 */	addi r0, r10, 8
/* 8063F820  39 28 00 20 */	addi r9, r8, 0x0020 /* 0xDB060020@l */
/* 8063F824  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063F828  38 07 BE A0 */	addi r0, r7, int_tak_nes_af_tex_rgb_ci4@l /* 0x810EBEA0@l */
/* 8063F82C  39 08 00 24 */	addi r8, r8, 0x24
/* 8063F830  38 E6 B3 A0 */	addi r7, r6, int_tak_nes_af_tex_rgb_ci4_pal@l /* 0x810EB3A0@l */
/* 8063F834  91 2A 00 00 */	stw r9, 0(r10)
/* 8063F838  3C C0 DE 00 */	lis r6, 0xde00
/* 8063F83C  38 A5 EA E0 */	addi r5, r5, int_tak_nes01_on_model@l /* 0x810EEAE0@l */
/* 8063F840  38 84 EC 38 */	addi r4, r4, int_tak_nes01_onT_model@l /* 0x810EEC38@l */
/* 8063F844  90 0A 00 04 */	stw r0, 4(r10)
/* 8063F848  38 03 EB D0 */	addi r0, r3, int_tak_nes01_game_on_model@l /* 0x810EEBD0@l */
/* 8063F84C  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 8063F850  38 69 00 08 */	addi r3, r9, 8
/* 8063F854  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F858  91 09 00 00 */	stw r8, 0(r9)
/* 8063F85C  90 E9 00 04 */	stw r7, 4(r9)
/* 8063F860  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8063F864  38 67 00 08 */	addi r3, r7, 8
/* 8063F868  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F86C  90 C7 00 00 */	stw r6, 0(r7)
/* 8063F870  90 A7 00 04 */	stw r5, 4(r7)
/* 8063F874  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063F878  38 65 00 08 */	addi r3, r5, 8
/* 8063F87C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F880  90 C5 00 00 */	stw r6, 0(r5)
/* 8063F884  90 85 00 04 */	stw r4, 4(r5)
/* 8063F888  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063F88C  38 64 00 08 */	addi r3, r4, 8
/* 8063F890  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F894  90 C4 00 00 */	stw r6, 0(r4)
/* 8063F898  90 04 00 04 */	stw r0, 4(r4)
/* 8063F89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F8A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063F8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F8A8  7C 08 03 A6 */	mtlr r0
/* 8063F8AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F8B0  4E 80 00 20 */	blr 
