lbl_8063DA60:
/* 8063DA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063DA64  7C 08 02 A6 */	mflr r0
/* 8063DA68  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063DA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063DA70  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063DA74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063DA78  93 C1 00 08 */	stw r30, 8(r1)
/* 8063DA7C  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063DA80  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063DA84  38 7E 00 08 */	addi r3, r30, 8
/* 8063DA88  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063DA8C  90 1E 00 00 */	stw r0, 0(r30)
/* 8063DA90  80 65 00 00 */	lwz r3, 0(r5)
/* 8063DA94  4B DC F9 41 */	bl _Matrix_to_Mtx_new
/* 8063DA98  90 7E 00 04 */	stw r3, 4(r30)
/* 8063DA9C  3D 00 DB 06 */	lis r8, 0xDB06 /* 0xDB060020@ha */
/* 8063DAA0  3C E0 81 0F */	lis r7, int_tak_nes_ds_tex_rgb_i4@ha /* 0x810EE2A0@ha */
/* 8063DAA4  3C C0 81 0F */	lis r6, int_tak_nes_cl_pal@ha /* 0x810EB380@ha */
/* 8063DAA8  81 5F 02 D0 */	lwz r10, 0x2d0(r31)
/* 8063DAAC  3C A0 81 0F */	lis r5, int_tak_nes01_on_model@ha /* 0x810EEAE0@ha */
/* 8063DAB0  3C 80 81 0F */	lis r4, int_tak_nes01_onT_model@ha /* 0x810EEC38@ha */
/* 8063DAB4  3C 60 81 0F */	lis r3, int_tak_nes01_game_on_model@ha /* 0x810EEBD0@ha */
/* 8063DAB8  38 0A 00 08 */	addi r0, r10, 8
/* 8063DABC  39 28 00 20 */	addi r9, r8, 0x0020 /* 0xDB060020@l */
/* 8063DAC0  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063DAC4  38 07 E2 A0 */	addi r0, r7, int_tak_nes_ds_tex_rgb_i4@l /* 0x810EE2A0@l */
/* 8063DAC8  39 08 00 24 */	addi r8, r8, 0x24
/* 8063DACC  38 E6 B3 80 */	addi r7, r6, int_tak_nes_cl_pal@l /* 0x810EB380@l */
/* 8063DAD0  91 2A 00 00 */	stw r9, 0(r10)
/* 8063DAD4  3C C0 DE 00 */	lis r6, 0xde00
/* 8063DAD8  38 A5 EA E0 */	addi r5, r5, int_tak_nes01_on_model@l /* 0x810EEAE0@l */
/* 8063DADC  38 84 EC 38 */	addi r4, r4, int_tak_nes01_onT_model@l /* 0x810EEC38@l */
/* 8063DAE0  90 0A 00 04 */	stw r0, 4(r10)
/* 8063DAE4  38 03 EB D0 */	addi r0, r3, int_tak_nes01_game_on_model@l /* 0x810EEBD0@l */
/* 8063DAE8  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 8063DAEC  38 69 00 08 */	addi r3, r9, 8
/* 8063DAF0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063DAF4  91 09 00 00 */	stw r8, 0(r9)
/* 8063DAF8  90 E9 00 04 */	stw r7, 4(r9)
/* 8063DAFC  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8063DB00  38 67 00 08 */	addi r3, r7, 8
/* 8063DB04  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063DB08  90 C7 00 00 */	stw r6, 0(r7)
/* 8063DB0C  90 A7 00 04 */	stw r5, 4(r7)
/* 8063DB10  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063DB14  38 65 00 08 */	addi r3, r5, 8
/* 8063DB18  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063DB1C  90 C5 00 00 */	stw r6, 0(r5)
/* 8063DB20  90 85 00 04 */	stw r4, 4(r5)
/* 8063DB24  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063DB28  38 64 00 08 */	addi r3, r4, 8
/* 8063DB2C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063DB30  90 C4 00 00 */	stw r6, 0(r4)
/* 8063DB34  90 04 00 04 */	stw r0, 4(r4)
/* 8063DB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063DB3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063DB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063DB44  7C 08 03 A6 */	mtlr r0
/* 8063DB48  38 21 00 10 */	addi r1, r1, 0x10
/* 8063DB4C  4E 80 00 20 */	blr 
