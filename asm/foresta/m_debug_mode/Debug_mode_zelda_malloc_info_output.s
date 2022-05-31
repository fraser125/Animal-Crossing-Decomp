lbl_80397EA8:
/* 80397EA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80397EAC  7C 08 02 A6 */	mflr r0
/* 80397EB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80397EB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80397EB8  4B D0 30 1D */	bl func_8009AED4
/* 80397EBC  3C 80 80 65 */	lis r4, data_80651258@ha /* 0x80651258@ha */
/* 80397EC0  7C 7D 1B 78 */	mr r29, r3
/* 80397EC4  3B E4 12 58 */	addi r31, r4, data_80651258@l /* 0x80651258@l */
/* 80397EC8  48 02 47 35 */	bl zelda_MallocIsInitalized
/* 80397ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80397ED0  41 82 00 B8 */	beq lbl_80397F88
/* 80397ED4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80397ED8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80397EDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80397EE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80397EE4  38 63 02 C8 */	addi r3, r3, 0x2c8
/* 80397EE8  48 06 CB 51 */	bl THA_GA_getFreeBytes
/* 80397EEC  7C 60 1B 78 */	mr r0, r3
/* 80397EF0  38 61 00 10 */	addi r3, r1, 0x10
/* 80397EF4  7C 1E 03 78 */	mr r30, r0
/* 80397EF8  38 81 00 0C */	addi r4, r1, 0xc
/* 80397EFC  38 A1 00 08 */	addi r5, r1, 8
/* 80397F00  48 02 45 E1 */	bl zelda_GetFreeArena
/* 80397F04  7F A3 EB 78 */	mr r3, r29
/* 80397F08  38 80 00 C8 */	li r4, 0xc8
/* 80397F0C  38 A0 00 C8 */	li r5, 0xc8
/* 80397F10  38 C0 00 FA */	li r6, 0xfa
/* 80397F14  38 E0 00 FF */	li r7, 0xff
/* 80397F18  4B CC 32 89 */	bl gfxprint_color
/* 80397F1C  7F A3 EB 78 */	mr r3, r29
/* 80397F20  38 80 00 03 */	li r4, 3
/* 80397F24  38 A0 00 17 */	li r5, 0x17
/* 80397F28  4B CC 32 E9 */	bl gfxprint_locate8x8
/* 80397F2C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80397F30  7F A3 EB 78 */	mr r3, r29
/* 80397F34  38 9F 03 A8 */	addi r4, r31, 0x3a8
/* 80397F38  4C C6 31 82 */	crclr 6
/* 80397F3C  4B CC 39 E1 */	bl gfxprint_printf
/* 80397F40  7F A3 EB 78 */	mr r3, r29
/* 80397F44  38 80 00 03 */	li r4, 3
/* 80397F48  38 A0 00 18 */	li r5, 0x18
/* 80397F4C  4B CC 32 C5 */	bl gfxprint_locate8x8
/* 80397F50  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80397F54  7F A3 EB 78 */	mr r3, r29
/* 80397F58  38 9F 03 C0 */	addi r4, r31, 0x3c0
/* 80397F5C  4C C6 31 82 */	crclr 6
/* 80397F60  4B CC 39 BD */	bl gfxprint_printf
/* 80397F64  7F A3 EB 78 */	mr r3, r29
/* 80397F68  38 80 00 03 */	li r4, 3
/* 80397F6C  38 A0 00 19 */	li r5, 0x19
/* 80397F70  4B CC 32 A1 */	bl gfxprint_locate8x8
/* 80397F74  7F A3 EB 78 */	mr r3, r29
/* 80397F78  7F C5 F3 78 */	mr r5, r30
/* 80397F7C  38 9F 03 D8 */	addi r4, r31, 0x3d8
/* 80397F80  4C C6 31 82 */	crclr 6
/* 80397F84  4B CC 39 99 */	bl gfxprint_printf
lbl_80397F88:
/* 80397F88  39 61 00 30 */	addi r11, r1, 0x30
/* 80397F8C  4B D0 2F 95 */	bl func_8009AF20
/* 80397F90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80397F94  7C 08 03 A6 */	mtlr r0
/* 80397F98  38 21 00 30 */	addi r1, r1, 0x30
/* 80397F9C  4E 80 00 20 */	blr 
