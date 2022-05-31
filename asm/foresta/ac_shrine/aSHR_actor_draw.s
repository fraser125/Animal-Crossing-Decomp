lbl_805BB390:
/* 805BB390  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BB394  7C 08 02 A6 */	mflr r0
/* 805BB398  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BB39C  39 61 00 30 */	addi r11, r1, 0x30
/* 805BB3A0  4B AD FB 19 */	bl func_8009AEB8
/* 805BB3A4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805BB3A8  7C 98 23 78 */	mr r24, r4
/* 805BB3AC  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 805BB3B0  7C 77 1B 78 */	mr r23, r3
/* 805BB3B4  3C 64 00 02 */	addis r3, r4, 2
/* 805BB3B8  83 98 00 00 */	lwz r28, 0(r24)
/* 805BB3BC  80 83 60 98 */	lwz r4, 0x6098(r3)
/* 805BB3C0  38 60 00 3F */	li r3, 0x3f
/* 805BB3C4  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805BB3C8  7D 89 03 A6 */	mtctr r12
/* 805BB3CC  4E 80 04 21 */	bctrl 
/* 805BB3D0  80 18 20 90 */	lwz r0, 0x2090(r24)
/* 805BB3D4  7F 07 C3 78 */	mr r7, r24
/* 805BB3D8  38 80 00 00 */	li r4, 0
/* 805BB3DC  38 A0 00 00 */	li r5, 0
/* 805BB3E0  1C 60 00 32 */	mulli r3, r0, 0x32
/* 805BB3E4  1C 00 00 0D */	mulli r0, r0, 0xd
/* 805BB3E8  7C 63 00 D0 */	neg r3, r3
/* 805BB3EC  7C C0 00 D0 */	neg r6, r0
/* 805BB3F0  4B FF FE F9 */	bl aSHR_GetTwoTileGfx
/* 805BB3F4  80 18 20 90 */	lwz r0, 0x2090(r24)
/* 805BB3F8  7C 7D 1B 78 */	mr r29, r3
/* 805BB3FC  7F 07 C3 78 */	mr r7, r24
/* 805BB400  38 60 00 00 */	li r3, 0
/* 805BB404  1C 80 FF FB */	mulli r4, r0, -5
/* 805BB408  38 A0 00 00 */	li r5, 0
/* 805BB40C  1C 00 FF FD */	mulli r0, r0, -3
/* 805BB410  7C 84 00 D0 */	neg r4, r4
/* 805BB414  7C C0 00 D0 */	neg r6, r0
/* 805BB418  4B FF FE D1 */	bl aSHR_GetTwoTileGfx
/* 805BB41C  80 18 20 90 */	lwz r0, 0x2090(r24)
/* 805BB420  7C 7E 1B 78 */	mr r30, r3
/* 805BB424  7F 05 C3 78 */	mr r5, r24
/* 805BB428  38 60 00 00 */	li r3, 0
/* 805BB42C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805BB430  7C 80 00 D0 */	neg r4, r0
/* 805BB434  4B FF FF 09 */	bl aSHR_GetTwoTileGfx2
/* 805BB438  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 805BB43C  80 17 02 BC */	lwz r0, 0x2bc(r23)
/* 805BB440  38 A4 7A 58 */	addi r5, r4, g_fdinfo@l /* 0x81167A58@l */
/* 805BB444  7C 7F 1B 78 */	mr r31, r3
/* 805BB448  3C 80 80 6C */	lis r4, leaf_texture_table@ha /* 0x806C6820@ha */
/* 805BB44C  80 A5 00 00 */	lwz r5, 0(r5)
/* 805BB450  54 00 17 3A */	rlwinm r0, r0, 2, 0x1c, 0x1d
/* 805BB454  38 84 68 20 */	addi r4, r4, leaf_texture_table@l /* 0x806C6820@l */
/* 805BB458  83 65 00 68 */	lwz r27, 0x68(r5)
/* 805BB45C  7F 44 00 2E */	lwzx r26, r4, r0
/* 805BB460  4B DC 39 F5 */	bl Camera2_CheckCullingMode
/* 805BB464  2C 03 00 00 */	cmpwi r3, 0
/* 805BB468  41 82 00 20 */	beq lbl_805BB488
/* 805BB46C  3C 60 80 65 */	lis r3, lit_809@ha /* 0x8064AB28@ha */
/* 805BB470  C0 37 00 28 */	lfs f1, 0x28(r23)
/* 805BB474  C0 57 00 30 */	lfs f2, 0x30(r23)
/* 805BB478  C0 63 AB 28 */	lfs f3, lit_809@l(r3)  /* 0x8064AB28@l */
/* 805BB47C  4B DC 3B 35 */	bl Camera2_CheckEnterCullingArea
/* 805BB480  2C 03 00 00 */	cmpwi r3, 0
/* 805BB484  40 82 03 4C */	bne lbl_805BB7D0
lbl_805BB488:
/* 805BB488  7F 83 E3 78 */	mr r3, r28
/* 805BB48C  4B E2 9D 1D */	bl _texture_z_light_fog_prim_npc
/* 805BB490  80 78 00 00 */	lwz r3, 0(r24)
/* 805BB494  4B E2 9C C5 */	bl _texture_z_light_fog_prim_xlu
/* 805BB498  80 78 00 00 */	lwz r3, 0(r24)
/* 805BB49C  4B E2 9C 95 */	bl _texture_z_light_fog_prim_shadow
/* 805BB4A0  7E E3 BB 78 */	mr r3, r23
/* 805BB4A4  7F 04 C3 78 */	mr r4, r24
/* 805BB4A8  4B FF FD 6D */	bl func_805BB214
/* 805BB4AC  83 38 00 00 */	lwz r25, 0(r24)
/* 805BB4B0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805BB4B4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805BB4B8  7F 83 E3 78 */	mr r3, r28
/* 805BB4BC  82 D9 02 D0 */	lwz r22, 0x2d0(r25)
/* 805BB4C0  38 96 00 08 */	addi r4, r22, 8
/* 805BB4C4  90 99 02 D0 */	stw r4, 0x2d0(r25)
/* 805BB4C8  90 16 00 00 */	stw r0, 0(r22)
/* 805BB4CC  4B E5 1F 09 */	bl _Matrix_to_Mtx_new
/* 805BB4D0  90 76 00 04 */	stw r3, 4(r22)
/* 805BB4D4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805BB4D8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805BB4DC  7F 83 E3 78 */	mr r3, r28
/* 805BB4E0  82 D9 02 E0 */	lwz r22, 0x2e0(r25)
/* 805BB4E4  38 96 00 08 */	addi r4, r22, 8
/* 805BB4E8  90 99 02 E0 */	stw r4, 0x2e0(r25)
/* 805BB4EC  90 16 00 00 */	stw r0, 0(r22)
/* 805BB4F0  4B E5 1E E5 */	bl _Matrix_to_Mtx_new
/* 805BB4F4  90 76 00 04 */	stw r3, 4(r22)
/* 805BB4F8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805BB4FC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805BB500  7F 83 E3 78 */	mr r3, r28
/* 805BB504  83 99 03 00 */	lwz r28, 0x300(r25)
/* 805BB508  38 9C 00 08 */	addi r4, r28, 8
/* 805BB50C  90 99 03 00 */	stw r4, 0x300(r25)
/* 805BB510  90 1C 00 00 */	stw r0, 0(r28)
/* 805BB514  4B E5 1E C1 */	bl _Matrix_to_Mtx_new
/* 805BB518  90 7C 00 04 */	stw r3, 4(r28)
/* 805BB51C  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060030@ha */
/* 805BB520  38 E6 00 30 */	addi r7, r6, 0x0030 /* 0xDB060030@l */
/* 805BB524  81 39 02 E0 */	lwz r9, 0x2e0(r25)
/* 805BB528  38 A6 00 34 */	addi r5, r6, 0x34
/* 805BB52C  38 86 00 2C */	addi r4, r6, 0x2c
/* 805BB530  38 66 00 24 */	addi r3, r6, 0x24
/* 805BB534  39 09 00 08 */	addi r8, r9, 8
/* 805BB538  38 06 00 28 */	addi r0, r6, 0x28
/* 805BB53C  91 19 02 E0 */	stw r8, 0x2e0(r25)
/* 805BB540  90 E9 00 00 */	stw r7, 0(r9)
/* 805BB544  93 A9 00 04 */	stw r29, 4(r9)
/* 805BB548  80 F9 02 E0 */	lwz r7, 0x2e0(r25)
/* 805BB54C  38 C7 00 08 */	addi r6, r7, 8
/* 805BB550  90 D9 02 E0 */	stw r6, 0x2e0(r25)
/* 805BB554  90 A7 00 00 */	stw r5, 0(r7)
/* 805BB558  93 C7 00 04 */	stw r30, 4(r7)
/* 805BB55C  80 D9 02 E0 */	lwz r6, 0x2e0(r25)
/* 805BB560  38 A6 00 08 */	addi r5, r6, 8
/* 805BB564  90 B9 02 E0 */	stw r5, 0x2e0(r25)
/* 805BB568  90 86 00 00 */	stw r4, 0(r6)
/* 805BB56C  93 E6 00 04 */	stw r31, 4(r6)
/* 805BB570  80 B9 02 D0 */	lwz r5, 0x2d0(r25)
/* 805BB574  38 85 00 08 */	addi r4, r5, 8
/* 805BB578  90 99 02 D0 */	stw r4, 0x2d0(r25)
/* 805BB57C  90 65 00 00 */	stw r3, 0(r5)
/* 805BB580  93 65 00 04 */	stw r27, 4(r5)
/* 805BB584  80 99 02 D0 */	lwz r4, 0x2d0(r25)
/* 805BB588  38 64 00 08 */	addi r3, r4, 8
/* 805BB58C  90 79 02 D0 */	stw r3, 0x2d0(r25)
/* 805BB590  90 04 00 00 */	stw r0, 0(r4)
/* 805BB594  93 44 00 04 */	stw r26, 4(r4)
/* 805BB598  80 17 02 D8 */	lwz r0, 0x2d8(r23)
/* 805BB59C  28 00 00 03 */	cmplwi r0, 3
/* 805BB5A0  40 82 01 00 */	bne lbl_805BB6A0
/* 805BB5A4  81 79 02 D0 */	lwz r11, 0x2d0(r25)
/* 805BB5A8  3C 80 80 BE */	lis r4, obj_w_shrine_bubble_model@ha /* 0x80BE4F10@ha */
/* 805BB5AC  3D 40 80 BE */	lis r10, obj_w_shrine_trunk_model@ha /* 0x80BE4B78@ha */
/* 805BB5B0  3D 20 80 BE */	lis r9, obj_w_shrine_leaf_model@ha /* 0x80BE4DF0@ha */
/* 805BB5B4  38 0B 00 08 */	addi r0, r11, 8
/* 805BB5B8  3D 00 80 BE */	lis r8, obj_w_shrine_figure_model@ha /* 0x80BE4E70@ha */
/* 805BB5BC  90 19 02 D0 */	stw r0, 0x2d0(r25)
/* 805BB5C0  3C 60 DE 00 */	lis r3, 0xde00
/* 805BB5C4  3C E0 80 BE */	lis r7, obj_w_shrine_base_model@ha /* 0x80BE4F70@ha */
/* 805BB5C8  3C C0 80 BE */	lis r6, obj_w_shrine_statue_model@ha /* 0x80BE4C20@ha */
/* 805BB5CC  90 6B 00 00 */	stw r3, 0(r11)
/* 805BB5D0  38 04 4F 10 */	addi r0, r4, obj_w_shrine_bubble_model@l /* 0x80BE4F10@l */
/* 805BB5D4  3C A0 80 BE */	lis r5, obj_w_shrine_water_model@ha /* 0x80BE4A90@ha */
/* 805BB5D8  3C 80 80 BE */	lis r4, obj_w_shrine_sprash_model@ha /* 0x80BE4D68@ha */
/* 805BB5DC  90 0B 00 04 */	stw r0, 4(r11)
/* 805BB5E0  39 4A 4B 78 */	addi r10, r10, obj_w_shrine_trunk_model@l /* 0x80BE4B78@l */
/* 805BB5E4  39 29 4D F0 */	addi r9, r9, obj_w_shrine_leaf_model@l /* 0x80BE4DF0@l */
/* 805BB5E8  39 08 4E 70 */	addi r8, r8, obj_w_shrine_figure_model@l /* 0x80BE4E70@l */
/* 805BB5EC  81 99 02 D0 */	lwz r12, 0x2d0(r25)
/* 805BB5F0  38 E7 4F 70 */	addi r7, r7, obj_w_shrine_base_model@l /* 0x80BE4F70@l */
/* 805BB5F4  38 C6 4C 20 */	addi r6, r6, obj_w_shrine_statue_model@l /* 0x80BE4C20@l */
/* 805BB5F8  38 A5 4A 90 */	addi r5, r5, obj_w_shrine_water_model@l /* 0x80BE4A90@l */
/* 805BB5FC  39 6C 00 08 */	addi r11, r12, 8
/* 805BB600  38 84 4D 68 */	addi r4, r4, obj_w_shrine_sprash_model@l /* 0x80BE4D68@l */
/* 805BB604  91 79 02 D0 */	stw r11, 0x2d0(r25)
/* 805BB608  90 6C 00 00 */	stw r3, 0(r12)
/* 805BB60C  91 4C 00 04 */	stw r10, 4(r12)
/* 805BB610  81 79 02 D0 */	lwz r11, 0x2d0(r25)
/* 805BB614  39 4B 00 08 */	addi r10, r11, 8
/* 805BB618  91 59 02 D0 */	stw r10, 0x2d0(r25)
/* 805BB61C  90 6B 00 00 */	stw r3, 0(r11)
/* 805BB620  91 2B 00 04 */	stw r9, 4(r11)
/* 805BB624  81 59 02 D0 */	lwz r10, 0x2d0(r25)
/* 805BB628  39 2A 00 08 */	addi r9, r10, 8
/* 805BB62C  91 39 02 D0 */	stw r9, 0x2d0(r25)
/* 805BB630  90 6A 00 00 */	stw r3, 0(r10)
/* 805BB634  91 0A 00 04 */	stw r8, 4(r10)
/* 805BB638  81 39 02 D0 */	lwz r9, 0x2d0(r25)
/* 805BB63C  39 09 00 08 */	addi r8, r9, 8
/* 805BB640  91 19 02 D0 */	stw r8, 0x2d0(r25)
/* 805BB644  90 69 00 00 */	stw r3, 0(r9)
/* 805BB648  90 E9 00 04 */	stw r7, 4(r9)
/* 805BB64C  81 19 02 D0 */	lwz r8, 0x2d0(r25)
/* 805BB650  38 E8 00 08 */	addi r7, r8, 8
/* 805BB654  90 F9 02 D0 */	stw r7, 0x2d0(r25)
/* 805BB658  90 68 00 00 */	stw r3, 0(r8)
/* 805BB65C  90 C8 00 04 */	stw r6, 4(r8)
/* 805BB660  80 F9 02 E0 */	lwz r7, 0x2e0(r25)
/* 805BB664  38 C7 00 08 */	addi r6, r7, 8
/* 805BB668  90 D9 02 E0 */	stw r6, 0x2e0(r25)
/* 805BB66C  90 67 00 00 */	stw r3, 0(r7)
/* 805BB670  90 A7 00 04 */	stw r5, 4(r7)
/* 805BB674  80 D9 02 E0 */	lwz r6, 0x2e0(r25)
/* 805BB678  38 A6 00 08 */	addi r5, r6, 8
/* 805BB67C  90 B9 02 E0 */	stw r5, 0x2e0(r25)
/* 805BB680  90 66 00 00 */	stw r3, 0(r6)
/* 805BB684  90 86 00 04 */	stw r4, 4(r6)
/* 805BB688  80 B9 02 E0 */	lwz r5, 0x2e0(r25)
/* 805BB68C  38 85 00 08 */	addi r4, r5, 8
/* 805BB690  90 99 02 E0 */	stw r4, 0x2e0(r25)
/* 805BB694  90 65 00 00 */	stw r3, 0(r5)
/* 805BB698  90 05 00 04 */	stw r0, 4(r5)
/* 805BB69C  48 00 00 FC */	b lbl_805BB798
lbl_805BB6A0:
/* 805BB6A0  81 79 02 D0 */	lwz r11, 0x2d0(r25)
/* 805BB6A4  3C 80 80 BE */	lis r4, obj_s_shrine_bubble_model@ha /* 0x80BE0650@ha */
/* 805BB6A8  3D 40 80 BE */	lis r10, obj_s_shrine_trunk_model@ha /* 0x80BE02B8@ha */
/* 805BB6AC  3D 20 80 BE */	lis r9, obj_s_shrine_leaf_model@ha /* 0x80BE0530@ha */
/* 805BB6B0  38 0B 00 08 */	addi r0, r11, 8
/* 805BB6B4  3D 00 80 BE */	lis r8, obj_s_shrine_figure_model@ha /* 0x80BE05B0@ha */
/* 805BB6B8  90 19 02 D0 */	stw r0, 0x2d0(r25)
/* 805BB6BC  3C 60 DE 00 */	lis r3, 0xde00
/* 805BB6C0  3C E0 80 BE */	lis r7, obj_s_shrine_base_model@ha /* 0x80BE06B0@ha */
/* 805BB6C4  3C C0 80 BE */	lis r6, obj_s_shrine_statue_model@ha /* 0x80BE0360@ha */
/* 805BB6C8  90 6B 00 00 */	stw r3, 0(r11)
/* 805BB6CC  38 04 06 50 */	addi r0, r4, obj_s_shrine_bubble_model@l /* 0x80BE0650@l */
/* 805BB6D0  3C A0 80 BE */	lis r5, obj_s_shrine_water_model@ha /* 0x80BE01D0@ha */
/* 805BB6D4  3C 80 80 BE */	lis r4, obj_s_shrine_sprash_model@ha /* 0x80BE04A8@ha */
/* 805BB6D8  90 0B 00 04 */	stw r0, 4(r11)
/* 805BB6DC  39 4A 02 B8 */	addi r10, r10, obj_s_shrine_trunk_model@l /* 0x80BE02B8@l */
/* 805BB6E0  39 29 05 30 */	addi r9, r9, obj_s_shrine_leaf_model@l /* 0x80BE0530@l */
/* 805BB6E4  39 08 05 B0 */	addi r8, r8, obj_s_shrine_figure_model@l /* 0x80BE05B0@l */
/* 805BB6E8  81 99 02 D0 */	lwz r12, 0x2d0(r25)
/* 805BB6EC  38 E7 06 B0 */	addi r7, r7, obj_s_shrine_base_model@l /* 0x80BE06B0@l */
/* 805BB6F0  38 C6 03 60 */	addi r6, r6, obj_s_shrine_statue_model@l /* 0x80BE0360@l */
/* 805BB6F4  38 A5 01 D0 */	addi r5, r5, obj_s_shrine_water_model@l /* 0x80BE01D0@l */
/* 805BB6F8  39 6C 00 08 */	addi r11, r12, 8
/* 805BB6FC  38 84 04 A8 */	addi r4, r4, obj_s_shrine_sprash_model@l /* 0x80BE04A8@l */
/* 805BB700  91 79 02 D0 */	stw r11, 0x2d0(r25)
/* 805BB704  90 6C 00 00 */	stw r3, 0(r12)
/* 805BB708  91 4C 00 04 */	stw r10, 4(r12)
/* 805BB70C  81 79 02 D0 */	lwz r11, 0x2d0(r25)
/* 805BB710  39 4B 00 08 */	addi r10, r11, 8
/* 805BB714  91 59 02 D0 */	stw r10, 0x2d0(r25)
/* 805BB718  90 6B 00 00 */	stw r3, 0(r11)
/* 805BB71C  91 2B 00 04 */	stw r9, 4(r11)
/* 805BB720  81 59 02 D0 */	lwz r10, 0x2d0(r25)
/* 805BB724  39 2A 00 08 */	addi r9, r10, 8
/* 805BB728  91 39 02 D0 */	stw r9, 0x2d0(r25)
/* 805BB72C  90 6A 00 00 */	stw r3, 0(r10)
/* 805BB730  91 0A 00 04 */	stw r8, 4(r10)
/* 805BB734  81 39 02 D0 */	lwz r9, 0x2d0(r25)
/* 805BB738  39 09 00 08 */	addi r8, r9, 8
/* 805BB73C  91 19 02 D0 */	stw r8, 0x2d0(r25)
/* 805BB740  90 69 00 00 */	stw r3, 0(r9)
/* 805BB744  90 E9 00 04 */	stw r7, 4(r9)
/* 805BB748  81 19 02 D0 */	lwz r8, 0x2d0(r25)
/* 805BB74C  38 E8 00 08 */	addi r7, r8, 8
/* 805BB750  90 F9 02 D0 */	stw r7, 0x2d0(r25)
/* 805BB754  90 68 00 00 */	stw r3, 0(r8)
/* 805BB758  90 C8 00 04 */	stw r6, 4(r8)
/* 805BB75C  80 F9 02 E0 */	lwz r7, 0x2e0(r25)
/* 805BB760  38 C7 00 08 */	addi r6, r7, 8
/* 805BB764  90 D9 02 E0 */	stw r6, 0x2e0(r25)
/* 805BB768  90 67 00 00 */	stw r3, 0(r7)
/* 805BB76C  90 A7 00 04 */	stw r5, 4(r7)
/* 805BB770  80 D9 02 E0 */	lwz r6, 0x2e0(r25)
/* 805BB774  38 A6 00 08 */	addi r5, r6, 8
/* 805BB778  90 B9 02 E0 */	stw r5, 0x2e0(r25)
/* 805BB77C  90 66 00 00 */	stw r3, 0(r6)
/* 805BB780  90 86 00 04 */	stw r4, 4(r6)
/* 805BB784  80 B9 02 E0 */	lwz r5, 0x2e0(r25)
/* 805BB788  38 85 00 08 */	addi r4, r5, 8
/* 805BB78C  90 99 02 E0 */	stw r4, 0x2e0(r25)
/* 805BB790  90 65 00 00 */	stw r3, 0(r5)
/* 805BB794  90 05 00 04 */	stw r0, 4(r5)
lbl_805BB798:
/* 805BB798  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BB79C  3C C0 80 6C */	lis r6, aSHR_shadow_data@ha /* 0x806C676C@ha */
/* 805BB7A0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805BB7A4  3C A4 00 02 */	addis r5, r4, 2
/* 805BB7A8  7F 03 C3 78 */	mr r3, r24
/* 805BB7AC  38 86 67 6C */	addi r4, r6, aSHR_shadow_data@l /* 0x806C676C@l */
/* 805BB7B0  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805BB7B4  38 A0 00 00 */	li r5, 0
/* 805BB7B8  81 86 00 04 */	lwz r12, 4(r6)
/* 805BB7BC  7D 89 03 A6 */	mtctr r12
/* 805BB7C0  4E 80 04 21 */	bctrl 
/* 805BB7C4  7E E3 BB 78 */	mr r3, r23
/* 805BB7C8  7F 04 C3 78 */	mr r4, r24
/* 805BB7CC  4B FF FA B5 */	bl aSHR_actor_draw_ta_clr
lbl_805BB7D0:
/* 805BB7D0  39 61 00 30 */	addi r11, r1, 0x30
/* 805BB7D4  4B AD F7 31 */	bl func_8009AF04
/* 805BB7D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BB7DC  7C 08 03 A6 */	mtlr r0
/* 805BB7E0  38 21 00 30 */	addi r1, r1, 0x30
/* 805BB7E4  4E 80 00 20 */	blr 
