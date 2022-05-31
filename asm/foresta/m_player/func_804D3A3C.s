lbl_804D3A3C:
/* 804D3A3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D3A40  7C 08 02 A6 */	mflr r0
/* 804D3A44  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D3A48  39 61 00 30 */	addi r11, r1, 0x30
/* 804D3A4C  4B BC 74 85 */	bl func_8009AED0
/* 804D3A50  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804D3A54  3C C0 80 65 */	lis r6, lit_15135@ha /* 0x8064857C@ha */
/* 804D3A58  38 E5 68 F4 */	addi r7, r5, lit_950@l /* 0x806468F4@l */
/* 804D3A5C  C0 26 85 7C */	lfs f1, lit_15135@l(r6)  /* 0x8064857C@l */
/* 804D3A60  C0 07 00 00 */	lfs f0, 0(r7)
/* 804D3A64  3C A0 80 64 */	lis r5, lit_790@ha /* 0x80646668@ha */
/* 804D3A68  7C 7F 1B 78 */	mr r31, r3
/* 804D3A6C  39 60 FF FF */	li r11, -1
/* 804D3A70  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 804D3A74  7C 9C 23 78 */	mr r28, r4
/* 804D3A78  C0 05 66 68 */	lfs f0, lit_790@l(r5)  /* 0x80646668@l */
/* 804D3A7C  38 00 00 00 */	li r0, 0
/* 804D3A80  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 804D3A84  38 7C 1D A8 */	addi r3, r28, 0x1da8
/* 804D3A88  38 A0 00 E6 */	li r5, 0xe6
/* 804D3A8C  38 C0 00 00 */	li r6, 0
/* 804D3A90  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804D3A94  38 E0 00 00 */	li r7, 0
/* 804D3A98  39 00 00 00 */	li r8, 0
/* 804D3A9C  39 20 FF FF */	li r9, -1
/* 804D3AA0  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804D3AA4  39 40 FF FF */	li r10, -1
/* 804D3AA8  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804D3AAC  91 61 00 08 */	stw r11, 8(r1)
/* 804D3AB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D3AB4  91 61 00 10 */	stw r11, 0x10(r1)
/* 804D3AB8  91 61 00 14 */	stw r11, 0x14(r1)
/* 804D3ABC  91 61 00 18 */	stw r11, 0x18(r1)
/* 804D3AC0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D3AC4  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 804D3AC8  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 804D3ACC  4B EA 1C 7D */	bl Actor_info_make_actor
/* 804D3AD0  90 7F 11 74 */	stw r3, 0x1174(r31)
/* 804D3AD4  38 00 FF FF */	li r0, -1
/* 804D3AD8  7F E3 FB 78 */	mr r3, r31
/* 804D3ADC  7F 84 E3 78 */	mr r4, r28
/* 804D3AE0  90 1F 0D B4 */	stw r0, 0xdb4(r31)
/* 804D3AE4  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 804D3AE8  90 1F 0D BC */	stw r0, 0xdbc(r31)
/* 804D3AEC  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 804D3AF0  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 804D3AF4  90 1F 0D EC */	stw r0, 0xdec(r31)
/* 804D3AF8  90 1F 0D F0 */	stw r0, 0xdf0(r31)
/* 804D3AFC  48 00 2F 2D */	bl Player_actor_ct_forCorect
/* 804D3B00  7F E3 FB 78 */	mr r3, r31
/* 804D3B04  38 80 00 00 */	li r4, 0
/* 804D3B08  48 00 19 09 */	bl Player_actor_set_eye_pattern
/* 804D3B0C  7F E3 FB 78 */	mr r3, r31
/* 804D3B10  38 80 00 00 */	li r4, 0
/* 804D3B14  48 00 1A 05 */	bl Player_actor_set_mouth_pattern
/* 804D3B18  3C 60 80 4F */	lis r3, Player_actor_request_main_invade_all@ha /* 0x804E9CAC@ha */
/* 804D3B1C  3C 80 80 4E */	lis r4, func_804E4E78@ha /* 0x804E4E78@ha */
/* 804D3B20  38 03 9C AC */	addi r0, r3, Player_actor_request_main_invade_all@l /* 0x804E9CAC@l */
/* 804D3B24  3C 60 80 4E */	lis r3, func_804E5384@ha /* 0x804E5384@ha */
/* 804D3B28  90 1F 12 70 */	stw r0, 0x1270(r31)
/* 804D3B2C  38 04 4E 78 */	addi r0, r4, func_804E4E78@l /* 0x804E4E78@l */
/* 804D3B30  3C A0 80 4E */	lis r5, func_804E5BFC@ha /* 0x804E5BFC@ha */
/* 804D3B34  3C 80 80 50 */	lis r4, func_804FA89C@ha /* 0x804FA89C@ha */
/* 804D3B38  90 1F 12 74 */	stw r0, 0x1274(r31)
/* 804D3B3C  38 03 53 84 */	addi r0, r3, func_804E5384@l /* 0x804E5384@l */
/* 804D3B40  3C 60 80 4F */	lis r3, Player_actor_request_main_hold@ha /* 0x804E9EB8@ha */
/* 804D3B44  3D 20 80 50 */	lis r9, func_804FAFD8@ha /* 0x804FAFD8@ha */
/* 804D3B48  90 1F 12 78 */	stw r0, 0x1278(r31)
/* 804D3B4C  38 05 5B FC */	addi r0, r5, func_804E5BFC@l /* 0x804E5BFC@l */
/* 804D3B50  3D 00 80 50 */	lis r8, func_804FBC14@ha /* 0x804FBC14@ha */
/* 804D3B54  3C E0 80 4F */	lis r7, Player_actor_request_main_sitdown@ha /* 0x804EEF80@ha */
/* 804D3B58  90 1F 12 7C */	stw r0, 0x127c(r31)
/* 804D3B5C  38 04 A8 9C */	addi r0, r4, func_804FA89C@l /* 0x804FA89C@l */
/* 804D3B60  3C C0 80 4F */	lis r6, func_804EB8DC@ha /* 0x804EB8DC@ha */
/* 804D3B64  3C A0 80 4F */	lis r5, Player_actor_request_main_lie_bed@ha /* 0x804EBCF0@ha */
/* 804D3B68  90 1F 12 80 */	stw r0, 0x1280(r31)
/* 804D3B6C  38 03 9E B8 */	addi r0, r3, Player_actor_request_main_hold@l /* 0x804E9EB8@l */
/* 804D3B70  3C 80 80 50 */	lis r4, func_804FE8B0@ha /* 0x804FE8B0@ha */
/* 804D3B74  3C 60 80 50 */	lis r3, func_804FE968@ha /* 0x804FE968@ha */
/* 804D3B78  90 1F 12 84 */	stw r0, 0x1284(r31)
/* 804D3B7C  38 09 AF D8 */	addi r0, r9, func_804FAFD8@l /* 0x804FAFD8@l */
/* 804D3B80  3F C0 80 4F */	lis r30, func_804E962C@ha /* 0x804E962C@ha */
/* 804D3B84  3F A0 80 4F */	lis r29, func_804E98E0@ha /* 0x804E98E0@ha */
/* 804D3B88  90 1F 12 88 */	stw r0, 0x1288(r31)
/* 804D3B8C  38 08 BC 14 */	addi r0, r8, func_804FBC14@l /* 0x804FBC14@l */
/* 804D3B90  3F 80 80 50 */	lis r28, func_804FCD40@ha /* 0x804FCD40@ha */
/* 804D3B94  3D 80 80 50 */	lis r12, func_804FD1F8@ha /* 0x804FD1F8@ha */
/* 804D3B98  90 1F 12 8C */	stw r0, 0x128c(r31)
/* 804D3B9C  38 07 EF 80 */	addi r0, r7, Player_actor_request_main_sitdown@l /* 0x804EEF80@l */
/* 804D3BA0  3D 60 80 50 */	lis r11, func_804FDA18@ha /* 0x804FDA18@ha */
/* 804D3BA4  3D 40 80 50 */	lis r10, func_804FDEC4@ha /* 0x804FDEC4@ha */
/* 804D3BA8  90 1F 12 90 */	stw r0, 0x1290(r31)
/* 804D3BAC  38 06 B8 DC */	addi r0, r6, func_804EB8DC@l /* 0x804EB8DC@l */
/* 804D3BB0  3D 20 80 50 */	lis r9, func_804FE21C@ha /* 0x804FE21C@ha */
/* 804D3BB4  3D 00 80 50 */	lis r8, func_804FFEB0@ha /* 0x804FFEB0@ha */
/* 804D3BB8  90 1F 12 94 */	stw r0, 0x1294(r31)
/* 804D3BBC  38 05 BC F0 */	addi r0, r5, Player_actor_request_main_lie_bed@l /* 0x804EBCF0@l */
/* 804D3BC0  3C E0 80 50 */	lis r7, func_804FF74C@ha /* 0x804FF74C@ha */
/* 804D3BC4  3C C0 80 50 */	lis r6, func_80500240@ha /* 0x80500240@ha */
/* 804D3BC8  90 1F 12 98 */	stw r0, 0x1298(r31)
/* 804D3BCC  38 04 E8 B0 */	addi r0, r4, func_804FE8B0@l /* 0x804FE8B0@l */
/* 804D3BD0  3C A0 80 50 */	lis r5, func_805006F4@ha /* 0x805006F4@ha */
/* 804D3BD4  3C 80 80 50 */	lis r4, func_805013A8@ha /* 0x805013A8@ha */
/* 804D3BD8  90 1F 12 9C */	stw r0, 0x129c(r31)
/* 804D3BDC  38 03 E9 68 */	addi r0, r3, func_804FE968@l /* 0x804FE968@l */
/* 804D3BE0  3C 60 80 50 */	lis r3, func_8050294C@ha /* 0x8050294C@ha */
/* 804D3BE4  3B DE 96 2C */	addi r30, r30, func_804E962C@l /* 0x804E962C@l */
/* 804D3BE8  90 1F 12 A0 */	stw r0, 0x12a0(r31)
/* 804D3BEC  3B BD 98 E0 */	addi r29, r29, func_804E98E0@l /* 0x804E98E0@l */
/* 804D3BF0  38 1C CD 40 */	addi r0, r28, func_804FCD40@l /* 0x804FCD40@l */
/* 804D3BF4  39 8C D1 F8 */	addi r12, r12, func_804FD1F8@l /* 0x804FD1F8@l */
/* 804D3BF8  93 DF 12 A4 */	stw r30, 0x12a4(r31)
/* 804D3BFC  39 6B DA 18 */	addi r11, r11, func_804FDA18@l /* 0x804FDA18@l */
/* 804D3C00  39 4A DE C4 */	addi r10, r10, func_804FDEC4@l /* 0x804FDEC4@l */
/* 804D3C04  39 29 E2 1C */	addi r9, r9, func_804FE21C@l /* 0x804FE21C@l */
/* 804D3C08  93 BF 12 A8 */	stw r29, 0x12a8(r31)
/* 804D3C0C  39 08 FE B0 */	addi r8, r8, func_804FFEB0@l /* 0x804FFEB0@l */
/* 804D3C10  38 E7 F7 4C */	addi r7, r7, func_804FF74C@l /* 0x804FF74C@l */
/* 804D3C14  38 C6 02 40 */	addi r6, r6, func_80500240@l /* 0x80500240@l */
/* 804D3C18  90 1F 12 C0 */	stw r0, 0x12c0(r31)
/* 804D3C1C  38 A5 06 F4 */	addi r5, r5, func_805006F4@l /* 0x805006F4@l */
/* 804D3C20  38 84 13 A8 */	addi r4, r4, func_805013A8@l /* 0x805013A8@l */
/* 804D3C24  38 03 29 4C */	addi r0, r3, func_8050294C@l /* 0x8050294C@l */
/* 804D3C28  91 9F 12 C4 */	stw r12, 0x12c4(r31)
/* 804D3C2C  91 7F 12 C8 */	stw r11, 0x12c8(r31)
/* 804D3C30  91 5F 12 CC */	stw r10, 0x12cc(r31)
/* 804D3C34  91 3F 12 D0 */	stw r9, 0x12d0(r31)
/* 804D3C38  91 1F 12 B0 */	stw r8, 0x12b0(r31)
/* 804D3C3C  90 FF 12 AC */	stw r7, 0x12ac(r31)
/* 804D3C40  90 DF 12 B4 */	stw r6, 0x12b4(r31)
/* 804D3C44  90 BF 12 B8 */	stw r5, 0x12b8(r31)
/* 804D3C48  90 9F 12 BC */	stw r4, 0x12bc(r31)
/* 804D3C4C  90 1F 12 D4 */	stw r0, 0x12d4(r31)
/* 804D3C50  3C 60 80 50 */	lis r3, func_805037CC@ha /* 0x805037CC@ha */
/* 804D3C54  3C 80 80 50 */	lis r4, Player_actor_request_main_change_cloth_forNPC@ha /* 0x805042CC@ha */
/* 804D3C58  38 03 37 CC */	addi r0, r3, func_805037CC@l /* 0x805037CC@l */
/* 804D3C5C  3C 60 80 50 */	lis r3, func_805048D0@ha /* 0x805048D0@ha */
/* 804D3C60  90 1F 12 D8 */	stw r0, 0x12d8(r31)
/* 804D3C64  38 04 42 CC */	addi r0, r4, Player_actor_request_main_change_cloth_forNPC@l /* 0x805042CC@l */
/* 804D3C68  3C A0 80 50 */	lis r5, func_805057EC@ha /* 0x805057EC@ha */
/* 804D3C6C  3C 80 80 50 */	lis r4, func_805067F4@ha /* 0x805067F4@ha */
/* 804D3C70  90 1F 12 DC */	stw r0, 0x12dc(r31)
/* 804D3C74  38 03 48 D0 */	addi r0, r3, func_805048D0@l /* 0x805048D0@l */
/* 804D3C78  3C 60 80 50 */	lis r3, func_80505FE8@ha /* 0x80505FE8@ha */
/* 804D3C7C  3D 20 80 50 */	lis r9, func_80507AE4@ha /* 0x80507AE4@ha */
/* 804D3C80  90 1F 12 E0 */	stw r0, 0x12e0(r31)
/* 804D3C84  38 05 57 EC */	addi r0, r5, func_805057EC@l /* 0x805057EC@l */
/* 804D3C88  3D 00 80 51 */	lis r8, func_80508AB4@ha /* 0x80508AB4@ha */
/* 804D3C8C  3C E0 80 51 */	lis r7, func_80508B40@ha /* 0x80508B40@ha */
/* 804D3C90  90 1F 12 E4 */	stw r0, 0x12e4(r31)
/* 804D3C94  38 04 67 F4 */	addi r0, r4, func_805067F4@l /* 0x805067F4@l */
/* 804D3C98  3C C0 80 4D */	lis r6, func_804D4FE0@ha /* 0x804D4FE0@ha */
/* 804D3C9C  3C A0 80 4D */	lis r5, Player_actor_get_door_label@ha /* 0x804D7C50@ha */
/* 804D3CA0  90 1F 12 E8 */	stw r0, 0x12e8(r31)
/* 804D3CA4  38 03 5F E8 */	addi r0, r3, func_80505FE8@l /* 0x80505FE8@l */
/* 804D3CA8  3C 80 80 4D */	lis r4, Player_actor_Set_Item_net_catch_request_table@ha /* 0x804D798C@ha */
/* 804D3CAC  3C 60 80 4D */	lis r3, Player_actor_Set_Item_net_catch_request_force@ha /* 0x804D7A7C@ha */
/* 804D3CB0  90 1F 12 EC */	stw r0, 0x12ec(r31)
/* 804D3CB4  38 09 7A E4 */	addi r0, r9, func_80507AE4@l /* 0x80507AE4@l */
/* 804D3CB8  3F 80 80 4D */	lis r28, Player_actor_Get_Item_net_catch_swing_timer@ha /* 0x804D7AE4@ha */
/* 804D3CBC  3F A0 80 4D */	lis r29, Player_actor_Set_force_position_angle@ha /* 0x804D7D70@ha */
/* 804D3CC0  90 1F 12 F0 */	stw r0, 0x12f0(r31)
/* 804D3CC4  38 08 8A B4 */	addi r0, r8, func_80508AB4@l /* 0x80508AB4@l */
/* 804D3CC8  3F C0 80 4D */	lis r30, Player_actor_Get_force_position_angle@ha /* 0x804D7E44@ha */
/* 804D3CCC  3D 80 80 4E */	lis r12, Player_actor_Get_WadeEndPos@ha /* 0x804D981C@ha */
/* 804D3CD0  90 1F 12 F4 */	stw r0, 0x12f4(r31)
/* 804D3CD4  38 07 8B 40 */	addi r0, r7, func_80508B40@l /* 0x80508B40@l */
/* 804D3CD8  3D 60 80 4E */	lis r11, Player_actor_check_cancel_request_change_proc_index@ha /* 0x804DA330@ha */
/* 804D3CDC  3D 40 80 4E */	lis r10, Player_actor_Get_item_net_catch_label@ha /* 0x804DA7C4@ha */
/* 804D3CE0  90 1F 12 F8 */	stw r0, 0x12f8(r31)
/* 804D3CE4  38 06 4F E0 */	addi r0, r6, func_804D4FE0@l /* 0x804D4FE0@l */
/* 804D3CE8  3D 20 80 4E */	lis r9, Player_actor_Check_StopNet@ha /* 0x804DA890@ha */
/* 804D3CEC  3D 00 80 4E */	lis r8, Player_actor_Check_HitAxe@ha /* 0x804DA8E4@ha */
/* 804D3CF0  90 1F 12 FC */	stw r0, 0x12fc(r31)
/* 804D3CF4  38 05 7C 50 */	addi r0, r5, Player_actor_get_door_label@l /* 0x804D7C50@l */
/* 804D3CF8  3C E0 80 4E */	lis r7, Player_actor_Check_VibUnit_OneFrame@ha /* 0x804DA9DC@ha */
/* 804D3CFC  3C C0 80 4E */	lis r6, Player_actor_Check_HitScoop@ha /* 0x804DAAB0@ha */
/* 804D3D00  90 1F 13 00 */	stw r0, 0x1300(r31)
/* 804D3D04  38 04 79 8C */	addi r0, r4, Player_actor_Set_Item_net_catch_request_table@l /* 0x804D798C@l */
/* 804D3D08  3C A0 80 4E */	lis r5, Player_actor_Check_DigScoop@ha /* 0x804DABA4@ha */
/* 804D3D0C  3C 80 80 4E */	lis r4, Player_actor_check_request_change_item@ha /* 0x804DAF14@ha */
/* 804D3D10  90 1F 13 04 */	stw r0, 0x1304(r31)
/* 804D3D14  38 03 7A 7C */	addi r0, r3, Player_actor_Set_Item_net_catch_request_force@l /* 0x804D7A7C@l */
/* 804D3D18  3C 60 80 4E */	lis r3, Player_actor_Check_RotateOctagon@ha /* 0x804DB3B0@ha */
/* 804D3D1C  3B 9C 7A E4 */	addi r28, r28, Player_actor_Get_Item_net_catch_swing_timer@l /* 0x804D7AE4@l */
/* 804D3D20  90 1F 13 0C */	stw r0, 0x130c(r31)
/* 804D3D24  3B BD 7D 70 */	addi r29, r29, Player_actor_Set_force_position_angle@l /* 0x804D7D70@l */
/* 804D3D28  38 1E 7E 44 */	addi r0, r30, Player_actor_Get_force_position_angle@l /* 0x804D7E44@l */
/* 804D3D2C  39 8C 98 1C */	addi r12, r12, Player_actor_Get_WadeEndPos@l /* 0x804D981C@l */
/* 804D3D30  93 9F 13 08 */	stw r28, 0x1308(r31)
/* 804D3D34  39 6B A3 30 */	addi r11, r11, Player_actor_check_cancel_request_change_proc_index@l /* 0x804DA330@l */
/* 804D3D38  39 4A A7 C4 */	addi r10, r10, Player_actor_Get_item_net_catch_label@l /* 0x804DA7C4@l */
/* 804D3D3C  39 29 A8 90 */	addi r9, r9, Player_actor_Check_StopNet@l /* 0x804DA890@l */
/* 804D3D40  93 BF 13 10 */	stw r29, 0x1310(r31)
/* 804D3D44  39 08 A8 E4 */	addi r8, r8, Player_actor_Check_HitAxe@l /* 0x804DA8E4@l */
/* 804D3D48  38 E7 A9 DC */	addi r7, r7, Player_actor_Check_VibUnit_OneFrame@l /* 0x804DA9DC@l */
/* 804D3D4C  38 C6 AA B0 */	addi r6, r6, Player_actor_Check_HitScoop@l /* 0x804DAAB0@l */
/* 804D3D50  90 1F 13 14 */	stw r0, 0x1314(r31)
/* 804D3D54  38 A5 AB A4 */	addi r5, r5, Player_actor_Check_DigScoop@l /* 0x804DABA4@l */
/* 804D3D58  38 84 AF 14 */	addi r4, r4, Player_actor_check_request_change_item@l /* 0x804DAF14@l */
/* 804D3D5C  38 03 B3 B0 */	addi r0, r3, Player_actor_Check_RotateOctagon@l /* 0x804DB3B0@l */
/* 804D3D60  91 9F 13 18 */	stw r12, 0x1318(r31)
/* 804D3D64  91 7F 13 30 */	stw r11, 0x1330(r31)
/* 804D3D68  91 5F 13 34 */	stw r10, 0x1334(r31)
/* 804D3D6C  91 3F 13 3C */	stw r9, 0x133c(r31)
/* 804D3D70  91 1F 13 40 */	stw r8, 0x1340(r31)
/* 804D3D74  90 FF 13 44 */	stw r7, 0x1344(r31)
/* 804D3D78  90 DF 13 48 */	stw r6, 0x1348(r31)
/* 804D3D7C  90 BF 13 4C */	stw r5, 0x134c(r31)
/* 804D3D80  90 9F 13 50 */	stw r4, 0x1350(r31)
/* 804D3D84  90 1F 13 54 */	stw r0, 0x1354(r31)
/* 804D3D88  3C 80 80 4E */	lis r4, Player_actor_Change_item_net_catch_label@ha /* 0x804DA7F8@ha */
/* 804D3D8C  3D 80 80 4E */	lis r12, Player_actor_Check_tree_shaken@ha /* 0x804DC844@ha */
/* 804D3D90  38 04 A7 F8 */	addi r0, r4, Player_actor_Change_item_net_catch_label@l /* 0x804DA7F8@l */
/* 804D3D94  3D 60 80 4E */	lis r11, Player_actor_Check_tree_shaken_little@ha /* 0x804DC6A4@ha */
/* 804D3D98  3C 60 80 4D */	lis r3, Player_actor_Get_status_for_bee@ha /* 0x804D5810@ha */
/* 804D3D9C  90 1F 13 38 */	stw r0, 0x1338(r31)
/* 804D3DA0  38 03 58 10 */	addi r0, r3, Player_actor_Get_status_for_bee@l /* 0x804D5810@l */
/* 804D3DA4  3C 80 80 4E */	lis r4, Player_actor_Check_end_stung_bee@ha /* 0x804DCB74@ha */
/* 804D3DA8  90 1F 13 5C */	stw r0, 0x135c(r31)
/* 804D3DAC  38 04 CB 74 */	addi r0, r4, Player_actor_Check_end_stung_bee@l /* 0x804DCB74@l */
/* 804D3DB0  3C 60 80 4E */	lis r3, Player_actor_Check_Label_main_push_snowball@ha /* 0x804DD278@ha */
/* 804D3DB4  3C E0 80 4E */	lis r7, Player_actor_Check_Label_main_wade_snowball@ha /* 0x804DD2C8@ha */
/* 804D3DB8  90 1F 13 58 */	stw r0, 0x1358(r31)
/* 804D3DBC  38 03 D2 78 */	addi r0, r3, Player_actor_Check_Label_main_push_snowball@l /* 0x804DD278@l */
/* 804D3DC0  3C C0 80 4E */	lis r6, Player_actor_SetParam_for_push_snowball@ha /* 0x804DD318@ha */
/* 804D3DC4  3C A0 80 4E */	lis r5, Player_actor_Set_ScrollDemo_forWade_snowball@ha /* 0x804D9BF4@ha */
/* 804D3DC8  90 1F 13 1C */	stw r0, 0x131c(r31)
/* 804D3DCC  38 07 D2 C8 */	addi r0, r7, Player_actor_Check_Label_main_wade_snowball@l /* 0x804DD2C8@l */
/* 804D3DD0  3C 80 80 4E */	lis r4, Player_actor_GetSnowballPos_forWadeSnowball@ha /* 0x804DD3B0@ha */
/* 804D3DD4  3C 60 80 4E */	lis r3, Player_actor_CheckCondition_forWadeSnowball@ha /* 0x804DD3F4@ha */
/* 804D3DD8  90 1F 13 70 */	stw r0, 0x1370(r31)
/* 804D3DDC  38 06 D3 18 */	addi r0, r6, Player_actor_SetParam_for_push_snowball@l /* 0x804DD318@l */
/* 804D3DE0  39 8C C8 44 */	addi r12, r12, Player_actor_Check_tree_shaken@l /* 0x804DC844@l */
/* 804D3DE4  39 6B C6 A4 */	addi r11, r11, Player_actor_Check_tree_shaken_little@l /* 0x804DC6A4@l */
/* 804D3DE8  90 1F 13 20 */	stw r0, 0x1320(r31)
/* 804D3DEC  38 05 9B F4 */	addi r0, r5, Player_actor_Set_ScrollDemo_forWade_snowball@l /* 0x804D9BF4@l */
/* 804D3DF0  3D 40 80 4E */	lis r10, Player_actor_Check_tree_shaken_big@ha /* 0x804DC774@ha */
/* 804D3DF4  3D 20 80 4E */	lis r9, Player_actor_Get_itemNo_forWindow@ha /* 0x804DDC78@ha */
/* 804D3DF8  90 1F 13 60 */	stw r0, 0x1360(r31)
/* 804D3DFC  38 04 D3 B0 */	addi r0, r4, Player_actor_GetSnowballPos_forWadeSnowball@l /* 0x804DD3B0@l */
/* 804D3E00  3D 00 80 4E */	lis r8, Player_actor_able_submenu_request_main_index@ha /* 0x804DDCEC@ha */
/* 804D3E04  3C E0 80 4E */	lis r7, Player_actor_check_able_change_camera_normal_index@ha /* 0x804DF038@ha */
/* 804D3E08  90 1F 13 74 */	stw r0, 0x1374(r31)
/* 804D3E0C  38 03 D3 F4 */	addi r0, r3, Player_actor_CheckCondition_forWadeSnowball@l /* 0x804DD3F4@l */
/* 804D3E10  3C C0 80 4E */	lis r6, Player_actor_CheckScene_AbleSubmenu@ha /* 0x804DE1FC@ha */
/* 804D3E14  3C A0 80 4E */	lis r5, Player_actor_check_cancel_event_without_priority@ha /* 0x804DE234@ha */
/* 804D3E18  90 1F 13 78 */	stw r0, 0x1378(r31)
/* 804D3E1C  38 0A C7 74 */	addi r0, r10, Player_actor_Check_tree_shaken_big@l /* 0x804DC774@l */
/* 804D3E20  39 49 DC 78 */	addi r10, r9, Player_actor_Get_itemNo_forWindow@l /* 0x804DDC78@l */
/* 804D3E24  39 28 DC EC */	addi r9, r8, Player_actor_able_submenu_request_main_index@l /* 0x804DDCEC@l */
/* 804D3E28  91 9F 13 64 */	stw r12, 0x1364(r31)
/* 804D3E2C  39 07 F0 38 */	addi r8, r7, Player_actor_check_able_change_camera_normal_index@l /* 0x804DF038@l */
/* 804D3E30  38 E6 E1 FC */	addi r7, r6, Player_actor_CheckScene_AbleSubmenu@l /* 0x804DE1FC@l */
/* 804D3E34  38 C5 E2 34 */	addi r6, r5, Player_actor_check_cancel_event_without_priority@l /* 0x804DE234@l */
/* 804D3E38  91 7F 13 68 */	stw r11, 0x1368(r31)
/* 804D3E3C  3C 80 80 4E */	lis r4, Player_actor_Check_able_force_speak_label@ha /* 0x804DE290@ha */
/* 804D3E40  38 A4 E2 90 */	addi r5, r4, Player_actor_Check_able_force_speak_label@l /* 0x804DE290@l */
/* 804D3E44  3C 60 80 4E */	lis r3, Player_actor_Check_stung_mosquito@ha /* 0x804DE3C0@ha */
/* 804D3E48  90 1F 13 6C */	stw r0, 0x136c(r31)
/* 804D3E4C  38 83 E3 C0 */	addi r4, r3, Player_actor_Check_stung_mosquito@l /* 0x804DE3C0@l */
/* 804D3E50  38 00 00 03 */	li r0, 3
/* 804D3E54  39 7F 11 C0 */	addi r11, r31, 0x11c0
/* 804D3E58  91 5F 13 7C */	stw r10, 0x137c(r31)
/* 804D3E5C  39 5F 11 CC */	addi r10, r31, 0x11cc
/* 804D3E60  38 60 FF FF */	li r3, -1
/* 804D3E64  91 3F 13 24 */	stw r9, 0x1324(r31)
/* 804D3E68  91 1F 13 28 */	stw r8, 0x1328(r31)
/* 804D3E6C  90 FF 13 84 */	stw r7, 0x1384(r31)
/* 804D3E70  90 DF 13 80 */	stw r6, 0x1380(r31)
/* 804D3E74  90 BF 13 2C */	stw r5, 0x132c(r31)
/* 804D3E78  90 9F 13 88 */	stw r4, 0x1388(r31)
/* 804D3E7C  7C 09 03 A6 */	mtctr r0
lbl_804D3E80:
/* 804D3E80  90 6B 00 00 */	stw r3, 0(r11)
/* 804D3E84  39 6B 00 04 */	addi r11, r11, 4
/* 804D3E88  90 6A 00 00 */	stw r3, 0(r10)
/* 804D3E8C  39 4A 00 04 */	addi r10, r10, 4
/* 804D3E90  42 00 FF F0 */	bdnz lbl_804D3E80
/* 804D3E94  38 00 00 08 */	li r0, 8
/* 804D3E98  38 9F 12 2C */	addi r4, r31, 0x122c
/* 804D3E9C  38 60 FF FF */	li r3, -1
/* 804D3EA0  7C 09 03 A6 */	mtctr r0
lbl_804D3EA4:
/* 804D3EA4  98 64 00 00 */	stb r3, 0(r4)
/* 804D3EA8  38 84 00 01 */	addi r4, r4, 1
/* 804D3EAC  42 00 FF F8 */	bdnz lbl_804D3EA4
/* 804D3EB0  7F E3 FB 78 */	mr r3, r31
/* 804D3EB4  48 00 B1 55 */	bl Player_actor_Set_old_sound_frame_counter
/* 804D3EB8  39 61 00 30 */	addi r11, r1, 0x30
/* 804D3EBC  4B BC 70 61 */	bl func_8009AF1C
/* 804D3EC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D3EC4  7C 08 03 A6 */	mtlr r0
/* 804D3EC8  38 21 00 30 */	addi r1, r1, 0x30
/* 804D3ECC  4E 80 00 20 */	blr 
