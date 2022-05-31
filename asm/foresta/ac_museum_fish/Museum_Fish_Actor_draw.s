lbl_80430CC0:
/* 80430CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80430CC4  7C 08 02 A6 */	mflr r0
/* 80430CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80430CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80430CD0  4B C6 A1 FD */	bl func_8009AECC
/* 80430CD4  7C 7C 1B 78 */	mr r28, r3
/* 80430CD8  80 64 00 00 */	lwz r3, 0(r4)
/* 80430CDC  7C 9E 23 78 */	mr r30, r4
/* 80430CE0  4B FB 44 29 */	bl _texture_z_light_fog_prim
/* 80430CE4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80430CE8  4B FB 44 71 */	bl _texture_z_light_fog_prim_xlu
/* 80430CEC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80430CF0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80430CF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80430CF8  A8 03 1B C8 */	lha r0, 0x1bc8(r3)
/* 80430CFC  2C 00 00 00 */	cmpwi r0, 0
/* 80430D00  40 82 00 24 */	bne lbl_80430D24
/* 80430D04  3B 60 00 00 */	li r27, 0
lbl_80430D08:
/* 80430D08  7F 83 E3 78 */	mr r3, r28
/* 80430D0C  7F C4 F3 78 */	mr r4, r30
/* 80430D10  7F 65 DB 78 */	mr r5, r27
/* 80430D14  4B FF FE 79 */	bl Museum_Fish_Kusa_Draw
/* 80430D18  3B 7B 00 01 */	addi r27, r27, 1
/* 80430D1C  2C 1B 00 0E */	cmpwi r27, 0xe
/* 80430D20  41 80 FF E8 */	blt lbl_80430D08
lbl_80430D24:
/* 80430D24  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80430D28  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80430D2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80430D30  A8 03 1B CC */	lha r0, 0x1bcc(r3)
/* 80430D34  2C 00 00 00 */	cmpwi r0, 0
/* 80430D38  40 82 01 88 */	bne lbl_80430EC0
/* 80430D3C  80 DE 00 00 */	lwz r6, 0(r30)
/* 80430D40  3C 60 80 CE */	lis r3, act_mus_fish_set_mode@ha /* 0x80CE5570@ha */
/* 80430D44  3B E0 00 00 */	li r31, 0
/* 80430D48  3C 80 DE 00 */	lis r4, 0xde00
/* 80430D4C  80 A6 02 D0 */	lwz r5, 0x2d0(r6)
/* 80430D50  38 03 55 70 */	addi r0, r3, act_mus_fish_set_mode@l /* 0x80CE5570@l */
/* 80430D54  7F FB FB 78 */	mr r27, r31
/* 80430D58  3B BC 01 78 */	addi r29, r28, 0x178
/* 80430D5C  38 65 00 08 */	addi r3, r5, 8
/* 80430D60  90 66 02 D0 */	stw r3, 0x2d0(r6)
/* 80430D64  90 85 00 00 */	stw r4, 0(r5)
/* 80430D68  90 05 00 04 */	stw r0, 4(r5)
lbl_80430D6C:
/* 80430D6C  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 80430D70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80430D74  41 82 00 68 */	beq lbl_80430DDC
/* 80430D78  80 1D 05 9C */	lwz r0, 0x59c(r29)
/* 80430D7C  2C 00 00 23 */	cmpwi r0, 0x23
/* 80430D80  41 82 00 5C */	beq lbl_80430DDC
/* 80430D84  2C 00 00 21 */	cmpwi r0, 0x21
/* 80430D88  41 82 00 54 */	beq lbl_80430DDC
/* 80430D8C  3C 80 80 64 */	lis r4, lit_697@ha /* 0x806442B0@ha */
/* 80430D90  3C 60 80 64 */	lis r3, lit_6315@ha /* 0x8064441C@ha */
/* 80430D94  C0 24 42 B0 */	lfs f1, lit_697@l(r4)  /* 0x806442B0@l */
/* 80430D98  38 9D 05 B8 */	addi r4, r29, 0x5b8
/* 80430D9C  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80430DA0  C0 03 44 1C */	lfs f0, lit_6315@l(r3)  /* 0x8064441C@l */
/* 80430DA4  7F C3 F3 78 */	mr r3, r30
/* 80430DA8  EC 41 18 2A */	fadds f2, f1, f3
/* 80430DAC  EC 20 18 2A */	fadds f1, f0, f3
/* 80430DB0  FC 60 10 90 */	fmr f3, f2
/* 80430DB4  48 00 01 9D */	bl mfish_cull_check
/* 80430DB8  2C 03 00 00 */	cmpwi r3, 0
/* 80430DBC  41 82 00 20 */	beq lbl_80430DDC
/* 80430DC0  3C 80 80 68 */	lis r4, mfish_dw@ha /* 0x80685BAC@ha */
/* 80430DC4  7F A3 EB 78 */	mr r3, r29
/* 80430DC8  38 A4 5B AC */	addi r5, r4, mfish_dw@l /* 0x80685BAC@l */
/* 80430DCC  7F C4 F3 78 */	mr r4, r30
/* 80430DD0  7D 85 D8 2E */	lwzx r12, r5, r27
/* 80430DD4  7D 89 03 A6 */	mtctr r12
/* 80430DD8  4E 80 04 21 */	bctrl 
lbl_80430DDC:
/* 80430DDC  3B FF 00 01 */	addi r31, r31, 1
/* 80430DE0  3B BD 06 48 */	addi r29, r29, 0x648
/* 80430DE4  2C 1F 00 28 */	cmpwi r31, 0x28
/* 80430DE8  3B 7B 00 04 */	addi r27, r27, 4
/* 80430DEC  41 80 FF 80 */	blt lbl_80430D6C
/* 80430DF0  3C 9C 00 01 */	addis r4, r28, 1
/* 80430DF4  A8 04 E3 7E */	lha r0, -0x1c82(r4)
/* 80430DF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80430DFC  41 82 00 50 */	beq lbl_80430E4C
/* 80430E00  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 80430E04  C0 44 DD 54 */	lfs f2, -0x22ac(r4)
/* 80430E08  C0 23 42 B0 */	lfs f1, lit_697@l(r3)  /* 0x806442B0@l */
/* 80430E0C  7F C3 F3 78 */	mr r3, r30
/* 80430E10  C0 04 DD 58 */	lfs f0, -0x22a8(r4)
/* 80430E14  FC 60 10 90 */	fmr f3, f2
/* 80430E18  38 84 E2 F0 */	addi r4, r4, -7440
/* 80430E1C  EC 21 00 2A */	fadds f1, f1, f0
/* 80430E20  48 00 01 31 */	bl mfish_cull_check
/* 80430E24  2C 03 00 00 */	cmpwi r3, 0
/* 80430E28  41 82 00 24 */	beq lbl_80430E4C
/* 80430E2C  3C 60 80 68 */	lis r3, mfish_dw@ha /* 0x80685BAC@ha */
/* 80430E30  7F C4 F3 78 */	mr r4, r30
/* 80430E34  38 A3 5B AC */	addi r5, r3, mfish_dw@l /* 0x80685BAC@l */
/* 80430E38  3C 7C 00 01 */	addis r3, r28, 1
/* 80430E3C  81 85 00 8C */	lwz r12, 0x8c(r5)
/* 80430E40  7D 89 03 A6 */	mtctr r12
/* 80430E44  38 63 DD 50 */	addi r3, r3, -8880
/* 80430E48  4E 80 04 21 */	bctrl 
lbl_80430E4C:
/* 80430E4C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80430E50  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80430E54  80 63 00 00 */	lwz r3, 0(r3)
/* 80430E58  A8 03 1B B8 */	lha r0, 0x1bb8(r3)
/* 80430E5C  2C 00 00 00 */	cmpwi r0, 0
/* 80430E60  40 82 00 10 */	bne lbl_80430E70
/* 80430E64  7F 83 E3 78 */	mr r3, r28
/* 80430E68  7F C4 F3 78 */	mr r4, r30
/* 80430E6C  48 00 06 FD */	bl mfish_normal_light_set
lbl_80430E70:
/* 80430E70  3C 7C 00 01 */	addis r3, r28, 1
/* 80430E74  A8 03 D6 EE */	lha r0, -0x2912(r3)
/* 80430E78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80430E7C  41 82 00 20 */	beq lbl_80430E9C
/* 80430E80  3C 80 80 68 */	lis r4, mfish_dw@ha /* 0x80685BAC@ha */
/* 80430E84  38 A4 5B AC */	addi r5, r4, mfish_dw@l /* 0x80685BAC@l */
/* 80430E88  81 85 00 84 */	lwz r12, 0x84(r5)
/* 80430E8C  7F C4 F3 78 */	mr r4, r30
/* 80430E90  7D 89 03 A6 */	mtctr r12
/* 80430E94  38 63 D0 C0 */	addi r3, r3, -12096
/* 80430E98  4E 80 04 21 */	bctrl 
lbl_80430E9C:
/* 80430E9C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80430EA0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80430EA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80430EA8  A8 03 1B B8 */	lha r0, 0x1bb8(r3)
/* 80430EAC  2C 00 00 01 */	cmpwi r0, 1
/* 80430EB0  40 82 00 10 */	bne lbl_80430EC0
/* 80430EB4  7F 83 E3 78 */	mr r3, r28
/* 80430EB8  7F C4 F3 78 */	mr r4, r30
/* 80430EBC  48 00 06 AD */	bl mfish_normal_light_set
lbl_80430EC0:
/* 80430EC0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80430EC4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80430EC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80430ECC  A8 03 1B CA */	lha r0, 0x1bca(r3)
/* 80430ED0  2C 00 00 00 */	cmpwi r0, 0
/* 80430ED4  40 82 00 64 */	bne lbl_80430F38
/* 80430ED8  A8 03 1B C4 */	lha r0, 0x1bc4(r3)
/* 80430EDC  2C 00 00 00 */	cmpwi r0, 0
/* 80430EE0  40 82 00 24 */	bne lbl_80430F04
/* 80430EE4  3C 80 80 CE */	lis r4, obj_museum5_evw_anime@ha /* 0x80CE1DE8@ha */
/* 80430EE8  7F C3 F3 78 */	mr r3, r30
/* 80430EEC  38 84 1D E8 */	addi r4, r4, obj_museum5_evw_anime@l /* 0x80CE1DE8@l */
/* 80430EF0  4B F4 26 6D */	bl Evw_Anime_Set
/* 80430EF4  7F 83 E3 78 */	mr r3, r28
/* 80430EF8  7F C4 F3 78 */	mr r4, r30
/* 80430EFC  38 A0 00 05 */	li r5, 5
/* 80430F00  4B FF F8 95 */	bl Museum_Fish_Suisou_draw
lbl_80430F04:
/* 80430F04  3C 60 80 CE */	lis r3, obj_suisou1_evw_anime@ha /* 0x80CE55A8@ha */
/* 80430F08  3B A0 00 00 */	li r29, 0
/* 80430F0C  3B 63 55 A8 */	addi r27, r3, obj_suisou1_evw_anime@l /* 0x80CE55A8@l */
lbl_80430F10:
/* 80430F10  7F C3 F3 78 */	mr r3, r30
/* 80430F14  7F 64 DB 78 */	mr r4, r27
/* 80430F18  4B F4 26 45 */	bl Evw_Anime_Set
/* 80430F1C  7F 83 E3 78 */	mr r3, r28
/* 80430F20  7F C4 F3 78 */	mr r4, r30
/* 80430F24  7F A5 EB 78 */	mr r5, r29
/* 80430F28  4B FF F8 6D */	bl Museum_Fish_Suisou_draw
/* 80430F2C  3B BD 00 01 */	addi r29, r29, 1
/* 80430F30  2C 1D 00 04 */	cmpwi r29, 4
/* 80430F34  41 80 FF DC */	blt lbl_80430F10
lbl_80430F38:
/* 80430F38  39 61 00 20 */	addi r11, r1, 0x20
/* 80430F3C  4B C6 9F DD */	bl func_8009AF18
/* 80430F40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80430F44  7C 08 03 A6 */	mtlr r0
/* 80430F48  38 21 00 20 */	addi r1, r1, 0x20
/* 80430F4C  4E 80 00 20 */	blr 
