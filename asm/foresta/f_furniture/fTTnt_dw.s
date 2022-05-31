lbl_8063FBB4:
/* 8063FBB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063FBB8  7C 08 02 A6 */	mflr r0
/* 8063FBBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063FBC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8063FBC4  4B A5 B3 11 */	bl func_8009AED4
/* 8063FBC8  83 C5 00 00 */	lwz r30, 0(r5)
/* 8063FBCC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063FBD0  83 E3 08 50 */	lwz r31, 0x850(r3)
/* 8063FBD4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063FBD8  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 8063FBDC  38 7D 00 08 */	addi r3, r29, 8
/* 8063FBE0  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063FBE4  90 1D 00 00 */	stw r0, 0(r29)
/* 8063FBE8  80 65 00 00 */	lwz r3, 0(r5)
/* 8063FBEC  4B DC D7 E9 */	bl _Matrix_to_Mtx_new
/* 8063FBF0  90 7D 00 04 */	stw r3, 4(r29)
/* 8063FBF4  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 8063FBF8  3C C0 81 10 */	lis r6, int_tak_tent_green_on_model@ha /* 0x810F88F0@ha */
/* 8063FBFC  3C A0 81 10 */	lis r5, int_tak_tent_body_onT_model@ha /* 0x810F8948@ha */
/* 8063FC00  81 3E 02 D0 */	lwz r9, 0x2d0(r30)
/* 8063FC04  3C 80 81 10 */	lis r4, int_tak_tent_etc_onT_model@ha /* 0x810F89B0@ha */
/* 8063FC08  3C 60 81 10 */	lis r3, int_tak_tent_light_offT_model@ha /* 0x810F8AC0@ha */
/* 8063FC0C  38 07 00 20 */	addi r0, r7, 0x0020 /* 0xDB060020@l */
/* 8063FC10  39 09 00 08 */	addi r8, r9, 8
/* 8063FC14  3C E0 DE 00 */	lis r7, 0xde00
/* 8063FC18  91 1E 02 D0 */	stw r8, 0x2d0(r30)
/* 8063FC1C  38 C6 88 F0 */	addi r6, r6, int_tak_tent_green_on_model@l /* 0x810F88F0@l */
/* 8063FC20  38 A5 89 48 */	addi r5, r5, int_tak_tent_body_onT_model@l /* 0x810F8948@l */
/* 8063FC24  38 84 89 B0 */	addi r4, r4, int_tak_tent_etc_onT_model@l /* 0x810F89B0@l */
/* 8063FC28  90 09 00 00 */	stw r0, 0(r9)
/* 8063FC2C  38 03 8A C0 */	addi r0, r3, int_tak_tent_light_offT_model@l /* 0x810F8AC0@l */
/* 8063FC30  93 E9 00 04 */	stw r31, 4(r9)
/* 8063FC34  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 8063FC38  38 68 00 08 */	addi r3, r8, 8
/* 8063FC3C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063FC40  90 E8 00 00 */	stw r7, 0(r8)
/* 8063FC44  90 C8 00 04 */	stw r6, 4(r8)
/* 8063FC48  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 8063FC4C  38 66 00 08 */	addi r3, r6, 8
/* 8063FC50  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063FC54  90 E6 00 00 */	stw r7, 0(r6)
/* 8063FC58  90 A6 00 04 */	stw r5, 4(r6)
/* 8063FC5C  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8063FC60  38 65 00 08 */	addi r3, r5, 8
/* 8063FC64  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063FC68  90 E5 00 00 */	stw r7, 0(r5)
/* 8063FC6C  90 85 00 04 */	stw r4, 4(r5)
/* 8063FC70  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8063FC74  38 64 00 08 */	addi r3, r4, 8
/* 8063FC78  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063FC7C  90 E4 00 00 */	stw r7, 0(r4)
/* 8063FC80  90 04 00 04 */	stw r0, 4(r4)
/* 8063FC84  39 61 00 20 */	addi r11, r1, 0x20
/* 8063FC88  4B A5 B2 99 */	bl func_8009AF20
/* 8063FC8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063FC90  7C 08 03 A6 */	mtlr r0
/* 8063FC94  38 21 00 20 */	addi r1, r1, 0x20
/* 8063FC98  4E 80 00 20 */	blr 
