lbl_80486DF8:
/* 80486DF8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80486DFC  7C 08 02 A6 */	mflr r0
/* 80486E00  90 01 00 54 */	stw r0, 0x54(r1)
/* 80486E04  39 61 00 50 */	addi r11, r1, 0x50
/* 80486E08  4B C1 40 C1 */	bl func_8009AEC8
/* 80486E0C  7C 7F 1B 78 */	mr r31, r3
/* 80486E10  80 63 01 80 */	lwz r3, 0x180(r3)
/* 80486E14  3C A0 80 69 */	lis r5, data_8068A420@ha /* 0x8068A420@ha */
/* 80486E18  7C 9A 23 78 */	mr r26, r4
/* 80486E1C  8B A3 00 00 */	lbz r29, 0(r3)
/* 80486E20  3B C5 A4 20 */	addi r30, r5, data_8068A420@l /* 0x8068A420@l */
/* 80486E24  4B F1 40 95 */	bl mEv_CheckTitleDemo
/* 80486E28  2C 03 00 00 */	cmpwi r3, 0
/* 80486E2C  41 81 00 1C */	bgt lbl_80486E48
/* 80486E30  57 A0 15 BA */	rlwinm r0, r29, 2, 0x16, 0x1d
/* 80486E34  38 7E 08 6C */	addi r3, r30, 0x86c
/* 80486E38  7D 83 00 2E */	lwzx r12, r3, r0
/* 80486E3C  7F E3 FB 78 */	mr r3, r31
/* 80486E40  7D 89 03 A6 */	mtctr r12
/* 80486E44  4E 80 04 21 */	bctrl 
lbl_80486E48:
/* 80486E48  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80486E4C  83 BA 00 00 */	lwz r29, 0(r26)
/* 80486E50  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 80486E54  3B 61 00 08 */	addi r27, r1, 8
/* 80486E58  2C 00 00 02 */	cmpwi r0, 2
/* 80486E5C  41 80 01 3C */	blt lbl_80486F98
/* 80486E60  7F 63 DB 78 */	mr r3, r27
/* 80486E64  4B BD 49 81 */	bl gfxprint_init
/* 80486E68  83 9D 02 D0 */	lwz r28, 0x2d0(r29)
/* 80486E6C  7F 83 E3 78 */	mr r3, r28
/* 80486E70  4B F7 E5 59 */	bl func_804053C8
/* 80486E74  80 DD 02 C0 */	lwz r6, 0x2c0(r29)
/* 80486E78  7C 64 1B 78 */	mr r4, r3
/* 80486E7C  3C 00 DE 00 */	lis r0, 0xde00
/* 80486E80  7F 63 DB 78 */	mr r3, r27
/* 80486E84  38 A6 00 08 */	addi r5, r6, 8
/* 80486E88  90 BD 02 C0 */	stw r5, 0x2c0(r29)
/* 80486E8C  90 06 00 00 */	stw r0, 0(r6)
/* 80486E90  90 86 00 04 */	stw r4, 4(r6)
/* 80486E94  4B BD 49 E5 */	bl gfxprint_open
/* 80486E98  7F 63 DB 78 */	mr r3, r27
/* 80486E9C  38 80 00 F5 */	li r4, 0xf5
/* 80486EA0  38 A0 00 32 */	li r5, 0x32
/* 80486EA4  38 C0 00 32 */	li r6, 0x32
/* 80486EA8  38 E0 00 FF */	li r7, 0xff
/* 80486EAC  4B BD 42 F5 */	bl gfxprint_color
/* 80486EB0  7F 63 DB 78 */	mr r3, r27
/* 80486EB4  38 80 00 16 */	li r4, 0x16
/* 80486EB8  38 A0 00 03 */	li r5, 3
/* 80486EBC  4B BD 43 55 */	bl gfxprint_locate8x8
/* 80486EC0  7F 63 DB 78 */	mr r3, r27
/* 80486EC4  38 9E 08 8C */	addi r4, r30, 0x88c
/* 80486EC8  4C C6 31 82 */	crclr 6
/* 80486ECC  4B BD 4A 51 */	bl gfxprint_printf
/* 80486ED0  7F 63 DB 78 */	mr r3, r27
/* 80486ED4  38 80 00 1E */	li r4, 0x1e
/* 80486ED8  38 A0 00 03 */	li r5, 3
/* 80486EDC  4B BD 43 35 */	bl gfxprint_locate8x8
/* 80486EE0  4B F2 56 0D */	bl mFRm_get_msg_idx
/* 80486EE4  7C 65 1B 78 */	mr r5, r3
/* 80486EE8  7F 63 DB 78 */	mr r3, r27
/* 80486EEC  38 9E 08 98 */	addi r4, r30, 0x898
/* 80486EF0  4C C6 31 82 */	crclr 6
/* 80486EF4  4B BD 4A 29 */	bl gfxprint_printf
/* 80486EF8  38 60 00 72 */	li r3, 0x72
/* 80486EFC  38 80 00 37 */	li r4, 0x37
/* 80486F00  4B F1 71 DD */	bl mEv_get_common_area
/* 80486F04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80486F08  41 82 00 58 */	beq lbl_80486F60
/* 80486F0C  7F 63 DB 78 */	mr r3, r27
/* 80486F10  38 80 00 2D */	li r4, 0x2d
/* 80486F14  38 A0 00 FA */	li r5, 0xfa
/* 80486F18  38 C0 00 32 */	li r6, 0x32
/* 80486F1C  38 E0 00 FF */	li r7, 0xff
/* 80486F20  4B BD 42 81 */	bl gfxprint_color
/* 80486F24  3B 40 00 00 */	li r26, 0
lbl_80486F28:
/* 80486F28  7F 63 DB 78 */	mr r3, r27
/* 80486F2C  38 BA 00 13 */	addi r5, r26, 0x13
/* 80486F30  38 80 00 1E */	li r4, 0x1e
/* 80486F34  4B BD 42 DD */	bl gfxprint_locate8x8
/* 80486F38  7C DF D2 14 */	add r6, r31, r26
/* 80486F3C  7F 63 DB 78 */	mr r3, r27
/* 80486F40  88 A6 00 00 */	lbz r5, 0(r6)
/* 80486F44  38 9E 08 9C */	addi r4, r30, 0x89c
/* 80486F48  88 C6 00 05 */	lbz r6, 5(r6)
/* 80486F4C  4C C6 31 82 */	crclr 6
/* 80486F50  4B BD 49 CD */	bl gfxprint_printf
/* 80486F54  3B 5A 00 01 */	addi r26, r26, 1
/* 80486F58  2C 1A 00 05 */	cmpwi r26, 5
/* 80486F5C  41 80 FF CC */	blt lbl_80486F28
lbl_80486F60:
/* 80486F60  7F 63 DB 78 */	mr r3, r27
/* 80486F64  4B BD 49 61 */	bl gfxprint_close
/* 80486F68  7C 64 1B 78 */	mr r4, r3
/* 80486F6C  3C 00 DF 00 */	lis r0, 0xdf00
/* 80486F70  90 03 00 00 */	stw r0, 0(r3)
/* 80486F74  38 00 00 00 */	li r0, 0
/* 80486F78  3B C4 00 08 */	addi r30, r4, 8
/* 80486F7C  7F 83 E3 78 */	mr r3, r28
/* 80486F80  90 04 00 04 */	stw r0, 4(r4)
/* 80486F84  7F C4 F3 78 */	mr r4, r30
/* 80486F88  4B F7 E4 49 */	bl gfxclose
/* 80486F8C  93 DD 02 D0 */	stw r30, 0x2d0(r29)
/* 80486F90  7F 63 DB 78 */	mr r3, r27
/* 80486F94  4B BD 48 E1 */	bl gfxprint_cleanup
lbl_80486F98:
/* 80486F98  39 61 00 50 */	addi r11, r1, 0x50
/* 80486F9C  4B C1 3F 79 */	bl func_8009AF14
/* 80486FA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80486FA4  7C 08 03 A6 */	mtlr r0
/* 80486FA8  38 21 00 50 */	addi r1, r1, 0x50
/* 80486FAC  4E 80 00 20 */	blr 
