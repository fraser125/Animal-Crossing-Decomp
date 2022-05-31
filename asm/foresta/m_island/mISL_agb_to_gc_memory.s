lbl_803B4EE8:
/* 803B4EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4EEC  7C 08 02 A6 */	mflr r0
/* 803B4EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4EF8  7C 9F 23 78 */	mr r31, r4
/* 803B4EFC  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4F00  7C 7E 1B 78 */	mr r30, r3
/* 803B4F04  4B FF FD 89 */	bl mISL_gc_to_agb_personal
/* 803B4F08  38 7E 00 14 */	addi r3, r30, 0x14
/* 803B4F0C  38 9F 00 14 */	addi r4, r31, 0x14
/* 803B4F10  4B FF F9 89 */	bl mISL_gc_to_agb_time
/* 803B4F14  38 7E 00 1C */	addi r3, r30, 0x1c
/* 803B4F18  38 9F 00 1C */	addi r4, r31, 0x1c
/* 803B4F1C  4B FF FE 09 */	bl mISL_agb_to_gc_memuni
/* 803B4F20  38 7E 00 28 */	addi r3, r30, 0x28
/* 803B4F24  38 9F 00 28 */	addi r4, r31, 0x28
/* 803B4F28  38 A0 00 01 */	li r5, 1
/* 803B4F2C  4B FF F2 15 */	bl mISL_u64
/* 803B4F30  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 803B4F34  38 7E 00 31 */	addi r3, r30, 0x31
/* 803B4F38  38 9F 00 34 */	addi r4, r31, 0x34
/* 803B4F3C  98 1E 00 30 */	stb r0, 0x30(r30)
/* 803B4F40  4B FF FE 99 */	bl mISL_agb_to_gc_memletter
/* 803B4F44  38 7E 00 32 */	addi r3, r30, 0x32
/* 803B4F48  38 9F 00 38 */	addi r4, r31, 0x38
/* 803B4F4C  4B FF FB D9 */	bl mISL_agb_to_gc_mail
/* 803B4F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4F58  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4F5C  7C 08 03 A6 */	mtlr r0
/* 803B4F60  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4F64  4E 80 00 20 */	blr 
